//
//  FoodDiaryTagViewController.swift
//  fitgram
//
//  Created by boyuan lin on 31/10/19.
//  Copyright © 2019 boyuan lin. All rights reserved.
//

import UIKit
import Stevia
import Kingfisher
import AADraggableView
import SwiftGRPC

class FoodDiaryTagViewController:UIViewController {
    var rootView:FoodDiaryTagView! = nil
    var selectedImage = UIImage()
    var taskId = ""
    var foodTagList = [Apisvr_FoodTag]()
    var mealType:Apisvr_MealType = .breakfast
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        on("INJECTION_BUNDLE_NOTIFICATION") {
            self.loadView()
        }
        self.navigationItem.hidesBackButton = true
        self.navigationItem.leftBarButtonItem  = UIBarButtonItem(image: UIImage(imageLiteralResourceName: "backbutton_black"), style: .plain, target: self, action: #selector(onBackPressed))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一步", style: .plain, target: self, action:  #selector(requestForFoodDetail))
        rootView.didAddTag = {
            //navigate page to text search
            let targetVC = TextSearchViewController()
            targetVC.textSearchDelegate = self
            targetVC.recognitionTaskId = self.taskId
            self.navigationController?.pushViewController(targetVC, animated: true)
        }
    }
    
    @objc func onBackPressed(){
        self.navigationController?.popViewController(animated: true)
    }
    
    override func loadView() {
        rootView = FoodDiaryTagView()
        view = rootView
        rootView.foodImage.image = selectedImage
    }
    
    @objc func requestForFoodDetail(){
        do{
            guard let token = UserDefaults.standard.string(forKey: Constants.tokenKey) else {
                return
            }
            let metaData = try Metadata(["authorization": "Token " + token])
            var req = Apisvr_GetFoodLogDetailReq()
            req.foodTags = foodTagList
            try FoodDiaryDataManager.shared.client.getFoodLogDetail(req, metadata: metaData) { (resp, result) in
                if result.statusCode == .ok {
                    let targetVC = FoodDiaryDetailViewController()
                    targetVC.foodImage = self.selectedImage
                    targetVC.foodDiaryList = resp!.foodLogs
                    targetVC.mealType = self.mealType
                    targetVC.mealLogList = self.convertFoodLogToInfo(foodDiaryList: resp!.foodLogs, foodTagList: self.foodTagList)
                    DispatchQueue.main.async {
                        self.navigationController?.pushViewController(targetVC, animated: true)
                    }
                }
            }
        } catch {
            print(error)
        }
     
    }
    
    func convertFoodLogToInfo(foodDiaryList:[Apisvr_FoodLog], foodTagList:[Apisvr_FoodTag]) -> [Apisvr_FoodLogInfo]{
        var foodLogInfos = [Apisvr_FoodLogInfo]()
        for index in 0...foodDiaryList.count - 1 {
            var foodInfo = Apisvr_FoodLogInfo()
            //set up initial value for logs
            foodInfo.amount = 1
            foodInfo.foodID = foodDiaryList[index].foodID
            foodInfo.selectedUnitID = foodDiaryList[index].selectedUnitID
            foodInfo.tagX = foodTagList[index].tagX
            foodInfo.tagY = foodTagList[index].tagY
            foodLogInfos.append(foodInfo)
        }
        return foodLogInfos
    }
    
}

extension FoodDiaryTagViewController: TextSearchDelegate {
    
    func onReturnTextsSearchResult(item: Apisvr_SearchItem) {
        var tag = Apisvr_FoodTag()
        tag.foodID = item.searchItemID
        foodTagList.append(tag)
        //UI adjust
        let targetLabel = self.rootView.foodLabelList.last
        let targetCircleImage = self.rootView.foodTagImageList.last
        let targetView = self.rootView.foodTagList.last
        targetLabel?.text = item.searchItemName
        targetView?.frame.size = CGSize(width: 20*item.searchItemName.count + 10, height: 75)
        targetLabel?.frame.size = CGSize(width: 20*item.searchItemName.count + 10, height: 35)
        targetCircleImage?.frame.origin.x = CGFloat(10*item.searchItemName.count - 12) //put the circle in the center of the view
    }
    
    func onCancelTextSearchAction() {
         let removedView = self.rootView.foodTagList.removeLast()
        removedView.removeFromSuperview()
    }
    
    
}
