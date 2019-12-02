//
//  FoodDiaryMainCell.swift
//  fitgram
//
//  Created by boyuan lin on 4/11/19.
//  Copyright © 2019 boyuan lin. All rights reserved.
//

import UIKit
import Stevia

class FoodDiaryMainCell: UITableViewCell {
    public var mealTItle = UILabel(frame: CGRect(x: 16, y: 16, width: 40, height: 25))
    public var calorieTitle = UILabel(frame: CGRect(x: 100, y: 16, width: UIScreen.main.bounds.width - 164, height: 25))
    public var suggestionIntakenLabel = UILabel(frame: CGRect(x: 16, y: 45, width: UIScreen.main.bounds.width - 64, height: 25))
    public var foodImagecCollectionView:UICollectionView!
    public var foodListTableView = UITableView.init()
    public var shadowContainer:UIView!
    
    public var mealList = [Apisvr_FoodDiaryMealLog]()
    
    var didSelectMealAction: (Int) -> Void = {_ in }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.white
        //calculate cell height
        let collectionViewHeight = (mealList.count+1)%4 * 70
        let tableviewHeight = getRecipeNum() * 52
        shadowContainer = UIView(frame: CGRect(x: 8, y: 8, width: UIScreen.main.bounds.width - 32, height: CGFloat(100 + collectionViewHeight + tableviewHeight)))
        shadowContainer.layer.shadowOffset = CGSize(width: 0, height: 0) //no shadow direction
        shadowContainer.layer.cornerRadius = 10
        shadowContainer.layer.shadowColor = UIColor.black.cgColor
        shadowContainer.layer.shadowOpacity = 0.2
        shadowContainer.layer.shadowRadius = 10
        shadowContainer.backgroundColor = UIColor.white
        //init collectionview frame
        foodImagecCollectionView = UICollectionView.init(frame: CGRect(x: 16, y: 80, width: Int(UIScreen.main.bounds.width-64), height: collectionViewHeight), collectionViewLayout: UICollectionViewFlowLayout())
        foodImagecCollectionView.delegate = self
        foodImagecCollectionView.dataSource = self
        foodListTableView = UITableView(frame: CGRect(x: 16, y: 60+collectionViewHeight, width: Int(UIScreen.main.bounds.width-64), height: tableviewHeight), style: .plain)
        foodListTableView.delegate = self
        foodListTableView.dataSource = self
        //mealLabel setup
        mealTItle.font = UIFont(name: "PingFangSC-Regular", size: 20)
        mealTItle.textColor = UIColor(red: 53/255, green: 53/255, blue: 53/255, alpha: 1.0)
        calorieTitle.font = UIFont(name: "PingFangSC-Light", size: 16)
        calorieTitle.textColor = UIColor(red: 53/255, green: 53/255, blue: 53/255, alpha: 1.0)
        calorieTitle.textAlignment = .right
        //suggestiion lable
        suggestionIntakenLabel.textColor = UIColor.gray
        suggestionIntakenLabel.font = UIFont(name: "PingFangSC-Regular", size: 12)
        //cell registry
        foodImagecCollectionView.backgroundColor = .white
        foodListTableView.backgroundColor = .white
        foodImagecCollectionView.register(FoodDiaryMeaCollectionCell.self, forCellWithReuseIdentifier: "FoodDiaryMeaCollectionCell")
        foodListTableView.register(FoodDiaryRecipeTableCell.self, forCellReuseIdentifier: "FoodDiaryRecipeTableCell")
        self.addSubview(shadowContainer)
        shadowContainer.addSubview(mealTItle)
        shadowContainer.addSubview(calorieTitle)
        shadowContainer.addSubview(suggestionIntakenLabel)
        shadowContainer.addSubview(foodImagecCollectionView)
        shadowContainer.addSubview(foodListTableView)
    }
    
    func getRecipeNum() -> Int {
        var recipeNum = 0
        for meal in mealList {
            let count = meal.foodLog.count
            recipeNum += count
        }
        return recipeNum
    }
    
}

extension FoodDiaryMainCell: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableVivarew: UITableView, numberOfRowsInSection section: Int) -> Int {
       return getRecipeNum()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FoodDiaryRecipeTableCell", for: indexPath) as? FoodDiaryRecipeTableCell else {
            return UITableViewCell()
        }
        for meal in mealList {
            for foodItem in meal.foodLog{
                cell.foodNameLabel.text = foodItem.foodName
                cell.calorieLabel.text = String(foodItem.energy)
                cell.portionLabel.text = String(foodItem.amount) + foodItem.unit
            }
        }
        return cell
    }

    
}

extension FoodDiaryMainCell: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mealList.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodDiaryMeaCollectionCell", for: indexPath) as? FoodDiaryMeaCollectionCell else {
            return UICollectionViewCell()
        }
        if indexPath.row == mealList.count {//case for plus icon
            cell.mealImage.image = UIImage(named: "foodDiaryPlus_red")
        } else {
            cell.mealImage.kf.setImage(with: URL(string: mealList[indexPath.row].imgURL))
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 70, height: 70)
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //go to foodDiary detail view
        if indexPath.row == mealList.count {
            self.didSelectMealAction(indexPath.row)
        }
    }
    
    
}