//
//  ViewController.swift
//  FoodList
//
//  Created by Arman Jon Villalobos on 16/05/2016.
//  Copyright © 2016 Arman Jon Villalobos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var foodLists = [
        "burger",
        "chicken",
        "coffee",
        "donut",
        "icecream",
        "juice",
        "ketchup",
        "lollipop",
        "pie",
        "pizza",
        "spaghetti",
        "vinegar"
    ]
    
    var foodImages = [
        "burger.png",
        "chicken.png",
        "coffee.png",
        "donut.png",
        "icecream.png",
        "juice.png",
        "ketchup.png",
        "lollipop.png",
        "pie.png",
        "pizza.png",
        "spaghetti.png",
        "vinegar.png"
    ]

    
    var foodListPrice = [
        "13.95",
        "7.50",
        "11.25",
        "5.50",
        "25.12",
        "10.50",
        "7.50",
        "30.25",
        "13.95",
        "7.50",
        "11.25",
        "5.50"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodLists.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! FoodListTableViewCell
        
        cell.foodNameLabel.text = foodLists[indexPath.row].capitalizedString
        cell.thumbnaiViewImage.image = UIImage(named: foodImages[indexPath.row])
        cell.foodPriceLabel.text = "$\(foodListPrice[indexPath.row])"
        
        return cell
    }

}

