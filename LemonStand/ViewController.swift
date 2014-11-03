//
//  ViewController.swift
//  LemonStand
//
//  Created by Felipe on 1/11/2014.
//  Copyright (c) 2014 Felipe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Containers
    var infoContainer: UIView!
    var purchaseContainer: UIView!
    var mixContainer: UIView!
    var startContainer: UIView!
    
    // Labels
    var youHave: UILabel!;
    var moneyYouHave: UILabel!;
    var lemonsYouHave: UILabel!;
    var iceCubesYouHave: UILabel!;
    
    // Margin left
    let marginLeft: CGFloat = 10;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpContainerView();
        setUpInfoContainer(self.infoContainer);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpContainerView(){
        
        self.infoContainer = UIView(frame: CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.width, self.view.bounds.height/4));
        self.view.addSubview(self.infoContainer);
        
    }
    
    func setUpInfoContainer(containerView: UIView) {
        
        self.youHave = UILabel();
        self.youHave.text = "You Have:";
        self.youHave.textColor = UIColor.redColor();
        self.youHave.font = UIFont(name: "MarketFelt-Wide", size: 25);
        self.youHave.sizeToFit();
        self.youHave.center = CGPoint(x: containerView.frame.width * 0.15, y: containerView.frame.height * 0.2);
        self.youHave.textAlignment = NSTextAlignment.Left;
        containerView.addSubview(self.youHave)
        
        self.moneyYouHave = UILabel();
        self.moneyYouHave.text = "$0";
        self.moneyYouHave.textColor = UIColor.greenColor();
        self.moneyYouHave.font = UIFont(name: "MarketFelt-Wide", size: 25);
        self.moneyYouHave.sizeToFit();
        self.moneyYouHave.center = CGPoint(x: containerView.frame.width * 0.5, y: containerView.frame.height * 0.2);
        self.moneyYouHave.textAlignment = NSTextAlignment.Left;
        containerView.addSubview(self.moneyYouHave);
        
        self.lemonsYouHave = UILabel();
        self.lemonsYouHave.text = "1 Lemon";
        self.lemonsYouHave.textColor = UIColor.blackColor();
        self.lemonsYouHave.font = UIFont(name: "MarketFelt-Wide", size: 25);
        self.lemonsYouHave.sizeToFit();
        self.lemonsYouHave.center = CGPoint(x: containerView.frame.width * 0.56, y: containerView.frame.height * 0.4);
        self.lemonsYouHave.textAlignment = NSTextAlignment.Left;
        containerView.addSubview(self.lemonsYouHave);
        
        self.iceCubesYouHave = UILabel();
        self.iceCubesYouHave.text = "1 Ice Cube";
        self.iceCubesYouHave.textColor = UIColor.blackColor();
        self.iceCubesYouHave.font = UIFont(name: "MarketFelt-Wide", size: 25);
        self.iceCubesYouHave.sizeToFit();
        self.iceCubesYouHave.center = CGPoint(x: containerView.frame.width * 0.5825, y: containerView.frame.height * 0.6);
        self.iceCubesYouHave.textAlignment = NSTextAlignment.Left;
        containerView.addSubview(self.iceCubesYouHave);
        
    }
    
}
