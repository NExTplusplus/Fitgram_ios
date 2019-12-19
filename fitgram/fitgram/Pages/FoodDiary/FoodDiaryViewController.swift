//
//  FoodDiaryViewController.swift
//  PhotoAlbumFullAnalysis
//
//  Created by boyuan lin on 1/10/19.
//  Copyright © 2019 boyuan lin. All rights reserved.
//

import UIKit
import SwiftGRPC

class FoodDiaryViewController:UIViewController {
    var rootView:FoodDiaryView! = nil
    var nutritient = Apisvr_FoodDiaryNutrient()
    var mealEntity = Apisvr_GetFoodDiaryResp()
    
    public var diaryDate = Date()
    private var keyboardOffsetDistance = 100
    public var currentMealType:Apisvr_MealType = .breakfast
    
    override func viewDidLoad() {
        on("INJECTION_BUNDLE_NOTIFICATION") {
            self.loadView()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.requestForFoodDiary()
    }
    
    override func loadView() {
        rootView = FoodDiaryView()
        rootView.foodDiaryTableView.delegate = self
        rootView.foodDiaryTableView.dataSource = self
        rootView.foodDiaryTableView.separatorStyle = .none
        self.initNutritientData()
        rootView.nutrientPanel.nutrientObj = nutritient
        view = rootView
    }
    
    func requestForFoodDiary(){
        do{
            var request = Apisvr_GetFoodDiaryReq()
            let calendar = Calendar(identifier: .chinese)
            let components = calendar.dateComponents([.year,.month,.day],from: Date())
            request.date = Int64(calendar.date(from: components)!.timeIntervalSince1970)
            guard let token = UserDefaults.standard.string(forKey: Constants.tokenKey) else {
                return
            }
            let metaData = try Metadata(["authorization": "Token " + token])
            try FoodDiaryDataManager.shared.client.getFoodDiary(request, metadata: metaData) { (resp, result) in
                self.mealEntity = resp!
                self.nutritient = resp!.nutrient
                DispatchQueue.main.async {
                    self.rootView.foodDiaryTableView.reloadData()
                    self.rootView.nutrientPanel.nutrientObj = self.nutritient
                }
            }
        }catch {
            print(error)
        }
    }
    
    func initNutritientData(){
        nutritient.energyIntake = 1523
        nutritient.energyRecommend = 1456
        nutritient.fatIntake = 73
        nutritient.fatRecommend = 61
        nutritient.carbohydrateIntake = 68
        nutritient.carbohydrateRecommend = 169
        nutritient.proteinIntake = 15
        nutritient.proteinRecommend = 34
    }
    
    
    func showRecordActionSheet(){
        let optionMenu = UIAlertController(title: nil, message: "选择记录方式", preferredStyle: .actionSheet)
        let cameraOption  = UIAlertAction(title: "拍照记录", style: .default) { (alertAction) in
            self.openCamera()
            optionMenu.dismiss(animated: true, completion: nil)
        }
        let galleryOption  = UIAlertAction(title: "从相册选择", style: .default) { (alertAction) in
            self.openAlbum()
            optionMenu.dismiss(animated: true, completion: nil)
        }
        let textOption  = UIAlertAction(title: "文字记录", style: .default) { (alertAction) in
            let targetVC = TextSearchViewController()
            targetVC.textSearchDelegate = self
            targetVC.isKeepSearchPage = true
            targetVC.mealType = self.currentMealType
            optionMenu.dismiss(animated: true, completion: nil)
            self.navigationController?.pushViewController(targetVC, animated: true)
        }
        let cancelOption  = UIAlertAction(title: "取消", style: .cancel) { (alertAction) in
            optionMenu.dismiss(animated: true, completion: nil)
        }
        optionMenu.addAction(cameraOption)
        optionMenu.addAction(galleryOption)
        optionMenu.addAction(textOption)
        optionMenu.addAction(cancelOption)
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    func openCamera(){
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let picker = UIImagePickerController()
            picker.sourceType = .camera
            picker.delegate = self
            picker.allowsEditing = true
            self.present(picker, animated: true, completion: nil)
        } else {
            //TODO show modal native camera not available
            let alert = UIAlertController.init(title: "提示", message: "没有检测到摄像头", preferredStyle: .alert)
            let cancel = UIAlertAction.init(title: "确定", style: .cancel, handler: nil)
            alert.addAction(cancel)
            self.show(alert, sender: nil)
        }
    }
    
    func openAlbum(){
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let picker = UIImagePickerController()
            picker.sourceType = .photoLibrary
            picker.delegate = self
            picker.allowsEditing = true
            self.present(picker, animated: true, completion: nil)
        } else {
            //TODO show modal native camera not available
            let alert = UIAlertController.init(title: "提示", message: "不能打开相册", preferredStyle: .alert)
            let cancel = UIAlertAction.init(title: "确定", style: .cancel, handler: nil)
            alert.addAction(cancel)
            self.show(alert, sender: nil)
        }
    }
    
}

extension FoodDiaryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mealEntity.mealLogs.count //breakfast, lunch, dinner
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FoodDiaryMainCell", for: indexPath) as? FoodDiaryMainCell else {
            return UITableViewCell()
        }
        switch indexPath.row{
        case 0://breakfast
            cell.mealTItle.text = "早餐"
            cell.calorieTitle.text = String(mealEntity.nutrientByMeal.breakfastEnergy) + "千卡"
            cell.suggestionIntakenLabel.text = "推荐:占每日摄入量的\(mealEntity.nutrientByMeal.breakfastPercentage)(大约\(mealEntity.nutrientByMeal.breakfastEnergy)千卡)"
            cell.setUpMealData(mealList: mealEntity.mealLogs[0].mealLogByType)   //Apisvr_FoodDiaryMealLog
            cell.didSelectMealAction = { index in
                self.showRecordActionSheet()
                self.currentMealType = .breakfast
            }
            break;
        case 1://lunch
             cell.mealTItle.text = "午餐"
             cell.calorieTitle.text = String(mealEntity.nutrientByMeal.lunchEnergy) + "千卡"
             cell.suggestionIntakenLabel.text = "推荐:占每日摄入量的\(mealEntity.nutrientByMeal.lunchPercentage)(大约\(mealEntity.nutrientByMeal.lunchEnergy)千卡)"
             cell.setUpMealData(mealList: mealEntity.mealLogs[1].mealLogByType)
             cell.didSelectMealAction = { index in
                self.showRecordActionSheet()
                self.currentMealType = .lunch
             }
            break;
        case 2://dinner
             cell.mealTItle.text = "晚餐"
             cell.calorieTitle.text = String(mealEntity.nutrientByMeal.dinnerEnergy) + "千卡"
             cell.suggestionIntakenLabel.text = "推荐:占每日摄入量的\(mealEntity.nutrientByMeal.dinnerPercentage)(大约\(mealEntity.nutrientByMeal.dinnerEnergy)千卡)"
             cell.setUpMealData(mealList: mealEntity.mealLogs[2].mealLogByType)
             cell.didSelectMealAction = { index in
                self.showRecordActionSheet()
                self.currentMealType = .dinner
             }
            break;
        default: break;
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var mealLogs = [Apisvr_FoodDiaryMealLog]()
        mealLogs = mealEntity.mealLogs[indexPath.row].mealLogByType
        return calculateCellHeight(mealLogs:mealLogs)
    }
    
    func calculateCellHeight(mealLogs:[Apisvr_FoodDiaryMealLog]) -> CGFloat{
        var recipeNum = 0
        for meal in mealLogs {
            let count = meal.foodLog.count
            recipeNum += count
        }
        let collectionViewHeight =  ((mealLogs.count+1)/4 + 1) * 70
        let tableviewHeight = recipeNum * 52
        return CGFloat(110 + collectionViewHeight + tableviewHeight)
    }
    
    
    
}

extension FoodDiaryViewController: UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.editedImage] as? UIImage else {
            return
        }
        self.dismiss(animated: true)
        guard let userId = UserDefaults.standard.string(forKey: Constants.userIdKey) else {
            return
        }
        let timeStamp = String(Int(Date().timeIntervalSince1970 * 1000))
        let objectKey = userId + "_" + timeStamp
        UploaderManager.shared.asyncPutImage(objectKey: objectKey, image: selectedImage) { (objectKey) in
            do{
                var req = Apisvr_RecognitionReq()
                req.imgURL = objectKey
                req.lat = 0.0
                req.lng = 0.0
                guard let token = UserDefaults.standard.string(forKey: Constants.tokenKey) else {
                    return
                }
                let metaData = try Metadata(["authorization": "Token " + token])
                try FoodDiaryDataManager.shared.client.recognition(req, metadata: metaData, completion: { (resp, result) in
                    if result.statusCode == .ok {
                        guard let taskId = resp?.taskID else {
                            return
                        }
                        let targetVC = FoodDiaryTagViewController()
                        targetVC.selectedImage = selectedImage
                        targetVC.taskId = taskId
                        targetVC.mealType = self.currentMealType
                        DispatchQueue.main.async {
                            self.navigationController?.pushViewController(targetVC, animated: true)
                        }
                    }
                })
            } catch {
                print(error)
            }
        }
        
    }
}

extension FoodDiaryViewController: TextSearchDelegate {
    
    func onReturnTextsSearchResult(item: Apisvr_SearchItem) {
        do{
            var req = Apisvr_GetFoodLogDetailReq()
            var textTag = Apisvr_FoodTag()
            textTag.foodID = item.searchItemID
            req.foodTags = [textTag]
            guard let token = UserDefaults.standard.string(forKey: Constants.tokenKey) else {
                return
            }
            let metaData = try Metadata(["authorization": "Token " + token])
            try FoodDiaryDataManager.shared.client.getFoodLogDetail(req, metadata: metaData) { (resp, result) in
                DispatchQueue.main.async {
                    let targetVC = FoodDiaryDetailViewController()
                    targetVC.mealType = self.currentMealType
                    self.navigationController?.pushViewController(targetVC, animated: true)
                }
            }
        }catch {
            print(error)
        }
    }
    
    func onCancelTextSearchAction() {
        
    }
}
