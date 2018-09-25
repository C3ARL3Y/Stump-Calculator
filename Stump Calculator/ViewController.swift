//
//  ViewController.swift
//  Stump Calculator
//
//  Created by Julian Cearley on 9/6/18.
//  Copyright © 2018 Cearley-Programs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @objc let homeOwnerBtn = UIButton()
    @objc let businessBtn = UIButton()
    
    var homeOwner = false
    var business = false
    
    let under35Lbl = UILabel()
    let in36Lbl = UILabel()
    let in48Lbl = UILabel()
    let in60Lbl = UILabel()
    let in72Lbl = UILabel()
    let in84Lbl = UILabel()
    let in96Lbl = UILabel()
    let in108Lbl = UILabel()
    let in120Lbl = UILabel()
    let in132Lbl = UILabel()
    let in144Lbl = UILabel()
    let in156Lbl = UILabel()
    let in168Lbl = UILabel()
    let in180Lbl = UILabel()
    let blowOverLbl = UILabel()
    
    let under35TextField = UITextField()
    let in36TextField = UITextField()
    let in48TextField = UITextField()
    let in60TextField = UITextField()
    let in72TextField = UITextField()
    let in84TextField = UITextField()
    let in96TextField = UITextField()
    let in108TextField = UITextField()
    let in120TextField = UITextField()
    let in132TextField = UITextField()
    let in144TextField = UITextField()
    let in156TextField = UITextField()
    let in168TextField = UITextField()
    let in180TextField = UITextField()
    let blowOverTextField = UITextField()
    
    let outcomeUnder35 = UILabel()
    let outcome36 = UILabel()
    let outcome48 = UILabel()
    let outcome60 = UILabel()
    let outcome72 = UILabel()
    let outcome84 = UILabel()
    let outcome96 = UILabel()
    let outcome108 = UILabel()
    let outcome120 = UILabel()
    let outcome132 = UILabel()
    let outcome144 = UILabel()
    let outcome156 = UILabel()
    let outcome168 = UILabel()
    let outcome180 = UILabel()
    let blowOverOutcome = UILabel()
    
    @objc let backBtn = UIButton()
    
    let bg: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "BG")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.alpha = 0.1
        return imageView
    }()
    
    var totalAmount:Double = 0.0
    let totalLbl = UILabel()
    
    var estimatingBegan = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(bg)
        bg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bg.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        bg.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        bg.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        if view?.frame.width == 320 && view?.frame.height == 568 {
            under35Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in36Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in48Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in60Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in72Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in84Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in96Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in108Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in120Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in132Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in144Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in156Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in168Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            in180Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            blowOverLbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 28)
            
            outcomeUnder35.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome36.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome48.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome60.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome72.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome84.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome96.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome108.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome120.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome132.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome144.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome156.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome168.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            outcome180.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            blowOverOutcome.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
            //5
        } else if view?.frame.width == 375 && view?.frame.height == 667 {
            under35Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in36Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in48Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in60Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in72Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in84Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in96Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in108Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in120Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in132Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in144Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in156Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in168Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in180Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            blowOverLbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            
            outcomeUnder35.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome36.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome48.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome60.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome72.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome84.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome96.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome108.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome120.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome132.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome144.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome156.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome168.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            outcome180.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            blowOverOutcome.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 14)
            //normal
        } else if view?.frame.width == 414 && view?.frame.height ==  736 {
            under35Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in36Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in48Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in60Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in72Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in84Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in96Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in108Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in120Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in132Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in144Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in156Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in168Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in180Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            blowOverLbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            
            outcomeUnder35.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome36.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome48.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome60.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome72.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome84.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome96.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome108.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome120.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome132.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome144.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome156.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome168.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome180.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            blowOverOutcome.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            //plus
        } else if view?.frame.width == 375 && view?.frame.height == 812 {
            under35Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in36Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in48Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in60Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in72Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in84Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in96Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in108Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in120Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in132Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in144Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in156Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in168Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            in180Lbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            blowOverLbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 20)
            
            outcomeUnder35.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome36.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome48.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome60.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome72.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome84.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome96.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome108.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome120.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome132.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome144.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome156.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome168.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            outcome180.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            blowOverOutcome.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 13)
            //X
        }
        
        homeOwnerBtn.translatesAutoresizingMaskIntoConstraints = false
        homeOwnerBtn.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        homeOwnerBtn.setTitle("Homeowner", for: UIControlState.normal)
        homeOwnerBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        homeOwnerBtn.addTarget(self, action: #selector(self.homeOwnerFunc), for: .touchUpInside)
        self.view.addSubview(homeOwnerBtn)
        NSLayoutConstraint(item: homeOwnerBtn, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: homeOwnerBtn, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 75).isActive = true
        
        businessBtn.translatesAutoresizingMaskIntoConstraints = false
        businessBtn.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        businessBtn.setTitle("Business", for: UIControlState.normal)
        businessBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        businessBtn.addTarget(self, action: #selector(self.businessFunc), for: UIControlEvents.touchUpInside)
        self.view.addSubview(businessBtn)
        NSLayoutConstraint(item: businessBtn, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: businessBtn, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: -75).isActive = true
        
        under35Lbl.translatesAutoresizingMaskIntoConstraints = false
        under35Lbl.text = "Under 36in"
        under35Lbl.textColor = UIColor.black
        under35Lbl.textAlignment = .center
        under35Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: view.frame.height / 200)
        under35Lbl.alpha = 0
        self.view.addSubview(under35Lbl)
        NSLayoutConstraint(item: under35Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: under35Lbl, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.topMargin, multiplier: 1, constant: 40).isActive = true
        
        in36Lbl.translatesAutoresizingMaskIntoConstraints = false
        in36Lbl.text = "36in (3 Feet)"
        in36Lbl.textColor = UIColor.black
        in36Lbl.textAlignment = .center
        in36Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in36Lbl.alpha = 0
        self.view.addSubview(in36Lbl)
        NSLayoutConstraint(item: in36Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in48Lbl.translatesAutoresizingMaskIntoConstraints = false
        in48Lbl.text = "48in (4 Feet)"
        in48Lbl.textColor = UIColor.black
        in48Lbl.textAlignment = .center
        in48Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in48Lbl.alpha = 0
        self.view.addSubview(in48Lbl)
        NSLayoutConstraint(item: in48Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in60Lbl.translatesAutoresizingMaskIntoConstraints = false
        in60Lbl.text = "60in (5 Feet)"
        in60Lbl.textColor = UIColor.black
        in60Lbl.textAlignment = .center
        in60Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in60Lbl.alpha = 0
        self.view.addSubview(in60Lbl)
        NSLayoutConstraint(item: in60Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in72Lbl.translatesAutoresizingMaskIntoConstraints = false
        in72Lbl.text = "72in (6 Feet)"
        in72Lbl.textColor = UIColor.black
        in72Lbl.textAlignment = .center
        in72Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in72Lbl.alpha = 0
        self.view.addSubview(in72Lbl)
        NSLayoutConstraint(item: in72Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in84Lbl.translatesAutoresizingMaskIntoConstraints = false
        in84Lbl.text = "84in (7 Feet)"
        in84Lbl.textColor = UIColor.black
        in84Lbl.textAlignment = .center
        in84Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in84Lbl.alpha = 0
        self.view.addSubview(in84Lbl)
        NSLayoutConstraint(item: in84Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in96Lbl.translatesAutoresizingMaskIntoConstraints = false
        in96Lbl.text = "96in (8 Feet)"
        in96Lbl.textColor = UIColor.black
        in96Lbl.textAlignment = .center
        in96Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in96Lbl.alpha = 0
        self.view.addSubview(in96Lbl)
        NSLayoutConstraint(item: in96Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in108Lbl.translatesAutoresizingMaskIntoConstraints = false
        in108Lbl.text = "108in (9 Feet)"
        in108Lbl.textColor = UIColor.black
        in108Lbl.textAlignment = .center
        in108Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in108Lbl.alpha = 0
        self.view.addSubview(in108Lbl)
        NSLayoutConstraint(item: in108Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in120Lbl.translatesAutoresizingMaskIntoConstraints = false
        in120Lbl.text = "120in (10 Feet)"
        in120Lbl.textColor = UIColor.black
        in120Lbl.textAlignment = .center
        in120Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in120Lbl.alpha = 0
        self.view.addSubview(in120Lbl)
        NSLayoutConstraint(item: in120Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in132Lbl.translatesAutoresizingMaskIntoConstraints = false
        in132Lbl.text = "132in (11 Feet)"
        in132Lbl.textColor = UIColor.black
        in132Lbl.textAlignment = .center
        in132Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in132Lbl.alpha = 0
        self.view.addSubview(in132Lbl)
        NSLayoutConstraint(item: in132Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in144Lbl.translatesAutoresizingMaskIntoConstraints = false
        in144Lbl.text = "144in (12 Feet)"
        in144Lbl.textColor = UIColor.black
        in144Lbl.textAlignment = .center
        in144Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in144Lbl.alpha = 0
        self.view.addSubview(in144Lbl)
        NSLayoutConstraint(item: in144Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in156Lbl.translatesAutoresizingMaskIntoConstraints = false
        in156Lbl.text = "156in (13 Feet)"
        in156Lbl.textColor = UIColor.black
        in156Lbl.textAlignment = .center
        in156Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in156Lbl.alpha = 0
        self.view.addSubview(in156Lbl)
        NSLayoutConstraint(item: in156Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in168Lbl.translatesAutoresizingMaskIntoConstraints = false
        in168Lbl.text = "168in (14 Feet)"
        in168Lbl.textColor = UIColor.black
        in168Lbl.textAlignment = .center
        in168Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in168Lbl.alpha = 0
        self.view.addSubview(in168Lbl)
        NSLayoutConstraint(item: in168Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        in180Lbl.translatesAutoresizingMaskIntoConstraints = false
        in180Lbl.text = "180in (15 Feet)"
        in180Lbl.textColor = UIColor.black
        in180Lbl.textAlignment = .center
        in180Lbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        in180Lbl.alpha = 0
        self.view.addSubview(in180Lbl)
        NSLayoutConstraint(item: in180Lbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        blowOverLbl.translatesAutoresizingMaskIntoConstraints = false
        blowOverLbl.text = "Root Ball *Feet*"
        blowOverLbl.textColor = UIColor.black
        blowOverLbl.textAlignment = .center
        blowOverLbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        blowOverLbl.alpha = 0
        self.view.addSubview(blowOverLbl)
        NSLayoutConstraint(item: blowOverLbl, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        
        if view?.frame.width == 320 && view?.frame.height == 568 {
            NSLayoutConstraint(item: blowOverLbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in180Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in180Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in168Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in168Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in156Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in156Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in144Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in144Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in132Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in132Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in120Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in120Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in108Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in108Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in96Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in96Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in84Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in84Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in72Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in72Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in60Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in60Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in48Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in48Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in36Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            NSLayoutConstraint(item: in36Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: under35Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 40).isActive = true
            //5
        } else if view?.frame.width == 375 && view?.frame.height == 667 {
            NSLayoutConstraint(item: blowOverLbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in180Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in180Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in168Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in168Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in156Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in156Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in144Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in144Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in132Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in132Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in120Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in120Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in108Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in108Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in96Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in96Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in84Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in84Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in72Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in72Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in60Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in60Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in48Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in48Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in36Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            NSLayoutConstraint(item: in36Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: under35Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 45).isActive = true
            //normal
        } else if view?.frame.width == 414 && view?.frame.height ==  736 {
            NSLayoutConstraint(item: blowOverLbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in180Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in180Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in168Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in168Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in156Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in156Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in144Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in144Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in132Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in132Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in120Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in120Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in108Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in108Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in96Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in96Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in84Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in84Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in72Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in72Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in60Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in60Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in48Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in48Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in36Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            NSLayoutConstraint(item: in36Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: under35Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 49).isActive = true
            //plus
        } else if view?.frame.width == 375 && view?.frame.height == 812 {
            NSLayoutConstraint(item: blowOverLbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in180Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in180Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in168Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in168Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in156Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in156Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in144Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in144Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in132Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in132Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in120Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in120Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in108Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in108Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in96Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in96Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in84Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in84Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in72Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in72Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in60Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in60Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in48Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in48Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: in36Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            NSLayoutConstraint(item: in36Lbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: under35Lbl, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 50).isActive = true
            //X
        }
        
        under35TextField.translatesAutoresizingMaskIntoConstraints = false
        under35TextField.text = "\(Double(0.0))"
        under35TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        under35TextField.keyboardType = .numberPad
        under35TextField.alpha = 0
        under35TextField.borderStyle = .line
        under35TextField.addTarget(self, action: #selector(self.under36TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(under35TextField)
        NSLayoutConstraint(item: under35TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: under35TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: under35Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in36TextField.translatesAutoresizingMaskIntoConstraints = false
        in36TextField.text = "\(Double(0.0))"
        in36TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in36TextField.keyboardType = .numberPad
        in36TextField.alpha = 0
        in36TextField.borderStyle = .line
        in36TextField.addTarget(self, action: #selector(self.in36TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in36TextField)
        NSLayoutConstraint(item: in36TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in36TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in36Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in48TextField.translatesAutoresizingMaskIntoConstraints = false
        in48TextField.text = "\(Double(0.0))"
        in48TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in48TextField.keyboardType = .numberPad
        in48TextField.alpha = 0
        in48TextField.borderStyle = .line
        in48TextField.addTarget(self, action: #selector(self.in48TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in48TextField)
        NSLayoutConstraint(item: in48TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in48TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in48Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in60TextField.translatesAutoresizingMaskIntoConstraints = false
        in60TextField.text = "\(Double(0.0))"
        in60TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in60TextField.keyboardType = .numberPad
        in60TextField.alpha = 0
        in60TextField.borderStyle = .line
        in60TextField.addTarget(self, action: #selector(self.in60TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in60TextField)
        NSLayoutConstraint(item: in60TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in60TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in60Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in72TextField.translatesAutoresizingMaskIntoConstraints = false
        in72TextField.text = "\(Double(0.0))"
        in72TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in72TextField.keyboardType = .numberPad
        in72TextField.alpha = 0
        in72TextField.borderStyle = .line
        in72TextField.addTarget(self, action: #selector(self.in72TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in72TextField)
        NSLayoutConstraint(item: in72TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in72TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in72Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in84TextField.translatesAutoresizingMaskIntoConstraints = false
        in84TextField.text = "\(Double(0.0))"
        in84TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in84TextField.keyboardType = .numberPad
        in84TextField.alpha = 0
        in84TextField.borderStyle = .line
        in84TextField.addTarget(self, action: #selector(self.in84TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in84TextField)
        NSLayoutConstraint(item: in84TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in84TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in84Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in96TextField.translatesAutoresizingMaskIntoConstraints = false
        in96TextField.text = "\(Double(0.0))"
        in96TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in96TextField.keyboardType = .numberPad
        in96TextField.alpha = 0
        in96TextField.borderStyle = .line
        in96TextField.addTarget(self, action: #selector(self.in96TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in96TextField)
        NSLayoutConstraint(item: in96TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in96TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in96Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in108TextField.translatesAutoresizingMaskIntoConstraints = false
        in108TextField.text = "\(Double(0.0))"
        in108TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in108TextField.keyboardType = .numberPad
        in108TextField.alpha = 0
        in108TextField.borderStyle = .line
        in108TextField.addTarget(self, action: #selector(self.in108TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in108TextField)
        NSLayoutConstraint(item: in108TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in108TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in108Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in120TextField.translatesAutoresizingMaskIntoConstraints = false
        in120TextField.text = "\(Double(0.0))"
        in120TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in120TextField.keyboardType = .numberPad
        in120TextField.alpha = 0
        in120TextField.borderStyle = .line
        in120TextField.addTarget(self, action: #selector(self.in120TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in120TextField)
        NSLayoutConstraint(item: in120TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in120TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in120Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in132TextField.translatesAutoresizingMaskIntoConstraints = false
        in132TextField.text = "\(Double(0.0))"
        in132TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in132TextField.keyboardType = .numberPad
        in132TextField.alpha = 0
        in132TextField.borderStyle = .line
        in132TextField.addTarget(self, action: #selector(self.in132TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in132TextField)
        NSLayoutConstraint(item: in132TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in132TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in132Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in144TextField.translatesAutoresizingMaskIntoConstraints = false
        in144TextField.text = "\(Double(0.0))"
        in144TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in144TextField.keyboardType = .numberPad
        in144TextField.alpha = 0
        in144TextField.borderStyle = .line
        in144TextField.addTarget(self, action: #selector(self.in144TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in144TextField)
        NSLayoutConstraint(item: in144TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in144TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in144Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in156TextField.translatesAutoresizingMaskIntoConstraints = false
        in156TextField.text = "\(Double(0.0))"
        in156TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in156TextField.keyboardType = .numberPad
        in156TextField.alpha = 0
        in156TextField.borderStyle = .line
        in156TextField.addTarget(self, action: #selector(self.in156TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in156TextField)
        NSLayoutConstraint(item: in156TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in156TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in156Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in168TextField.translatesAutoresizingMaskIntoConstraints = false
        in168TextField.text = "\(Double(0.0))"
        in168TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in168TextField.keyboardType = .numberPad
        in168TextField.alpha = 0
        in168TextField.borderStyle = .line
        in168TextField.addTarget(self, action: #selector(self.in168TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in168TextField)
        NSLayoutConstraint(item: in168TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in168TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in168Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        in180TextField.translatesAutoresizingMaskIntoConstraints = false
        in180TextField.text = "\(Double(0.0))"
        in180TextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        in180TextField.keyboardType = .numberPad
        in180TextField.alpha = 0
        in180TextField.borderStyle = .line
        in180TextField.addTarget(self, action: #selector(self.in180TextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(in180TextField)
        NSLayoutConstraint(item: in180TextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: in180TextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in180Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        blowOverTextField.translatesAutoresizingMaskIntoConstraints = false
        blowOverTextField.text = "\(Double(0.0))"
        blowOverTextField.frame = CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 30)
        blowOverTextField.keyboardType = .numberPad
        blowOverTextField.alpha = 0
        blowOverTextField.borderStyle = .line
        blowOverTextField.addTarget(self, action: #selector(self.blowOverTextFieldFunc), for: UIControlEvents.touchDown)
        self.view.addSubview(blowOverTextField)
        NSLayoutConstraint(item: blowOverTextField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerXWithinMargins, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: blowOverTextField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: blowOverLbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcomeUnder35.translatesAutoresizingMaskIntoConstraints = false
        outcomeUnder35.text = under35TextField.text!
        outcomeUnder35.textColor = UIColor.red
        outcomeUnder35.textAlignment = .center
        outcomeUnder35.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcomeUnder35.alpha = 0
        self.view.addSubview(outcomeUnder35)
        NSLayoutConstraint(item: outcomeUnder35, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcomeUnder35, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: under35TextField, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome36.translatesAutoresizingMaskIntoConstraints = false
        outcome36.text = in36TextField.text!
        outcome36.textColor = UIColor.red
        outcome36.textAlignment = .center
        outcome36.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome36.alpha = 0
        self.view.addSubview(outcome36)
        NSLayoutConstraint(item: outcome36, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome36, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in36Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome48.translatesAutoresizingMaskIntoConstraints = false
        outcome48.text = in48TextField.text!
        outcome48.textColor = UIColor.red
        outcome48.textAlignment = .center
        outcome48.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome48.alpha = 0
        self.view.addSubview(outcome48)
        NSLayoutConstraint(item: outcome48, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome48, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in48Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome60.translatesAutoresizingMaskIntoConstraints = false
        outcome60.text = in60TextField.text!
        outcome60.textColor = UIColor.red
        outcome60.textAlignment = .center
        outcome60.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome60.alpha = 0
        self.view.addSubview(outcome60)
        NSLayoutConstraint(item: outcome60, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome60, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in60Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome72.translatesAutoresizingMaskIntoConstraints = false
        outcome72.text = in72TextField.text!
        outcome72.textColor = UIColor.red
        outcome72.textAlignment = .center
        outcome72.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome72.alpha = 0
        self.view.addSubview(outcome72)
        NSLayoutConstraint(item: outcome72, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome72, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in72Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome84.translatesAutoresizingMaskIntoConstraints = false
        outcome84.text = in84TextField.text!
        outcome84.textColor = UIColor.red
        outcome84.textAlignment = .center
        outcome84.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome84.alpha = 0
        self.view.addSubview(outcome84)
        NSLayoutConstraint(item: outcome84, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome84, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in84Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome96.translatesAutoresizingMaskIntoConstraints = false
        outcome96.text = in96TextField.text!
        outcome96.textColor = UIColor.red
        outcome96.textAlignment = .center
        outcome96.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome96.alpha = 0
        self.view.addSubview(outcome96)
        NSLayoutConstraint(item: outcome96, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome96, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in96Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome108.translatesAutoresizingMaskIntoConstraints = false
        outcome108.text = in108TextField.text!
        outcome108.textColor = UIColor.red
        outcome108.textAlignment = .center
        outcome108.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome108.alpha = 0
        self.view.addSubview(outcome108)
        NSLayoutConstraint(item: outcome108, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome108, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in108Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome120.translatesAutoresizingMaskIntoConstraints = false
        outcome120.text = in120TextField.text!
        outcome120.textColor = UIColor.red
        outcome120.textAlignment = .center
        outcome120.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome120.alpha = 0
        self.view.addSubview(outcome120)
        NSLayoutConstraint(item: outcome120, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome120, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in120Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome132.translatesAutoresizingMaskIntoConstraints = false
        outcome132.text = in132TextField.text!
        outcome132.textColor = UIColor.red
        outcome132.textAlignment = .center
        outcome132.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome132.alpha = 0
        self.view.addSubview(outcome132)
        NSLayoutConstraint(item: outcome132, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome132, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in132Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome144.translatesAutoresizingMaskIntoConstraints = false
        outcome144.text = in144TextField.text!
        outcome144.textColor = UIColor.red
        outcome144.textAlignment = .center
        outcome144.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome144.alpha = 0
        self.view.addSubview(outcome144)
        NSLayoutConstraint(item: outcome144, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome144, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in144Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome156.translatesAutoresizingMaskIntoConstraints = false
        outcome156.text = in156TextField.text!
        outcome156.textColor = UIColor.red
        outcome156.textAlignment = .center
        outcome156.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome156.alpha = 0
        self.view.addSubview(outcome156)
        NSLayoutConstraint(item: outcome156, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome156, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in156Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome168.translatesAutoresizingMaskIntoConstraints = false
        outcome168.text = in168TextField.text!
        outcome168.textColor = UIColor.red
        outcome168.textAlignment = .center
        outcome168.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome168.alpha = 0
        self.view.addSubview(outcome168)
        NSLayoutConstraint(item: outcome168, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome168, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in168Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        outcome180.translatesAutoresizingMaskIntoConstraints = false
        outcome180.text = in180TextField.text!
        outcome180.textColor = UIColor.red
        outcome180.textAlignment = .center
        outcome180.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        outcome180.alpha = 0
        self.view.addSubview(outcome180)
        NSLayoutConstraint(item: outcome180, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: outcome180, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: in180Lbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        blowOverOutcome.translatesAutoresizingMaskIntoConstraints = false
        blowOverOutcome.text = blowOverTextField.text!
        blowOverOutcome.textColor = UIColor.red
        blowOverOutcome.textAlignment = .center
        blowOverOutcome.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        blowOverOutcome.alpha = 0
        self.view.addSubview(blowOverOutcome)
        NSLayoutConstraint(item: blowOverOutcome, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: blowOverOutcome, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: blowOverLbl, attribute: NSLayoutAttribute.centerYWithinMargins, multiplier: 1, constant: 0).isActive = true
        
        totalLbl.translatesAutoresizingMaskIntoConstraints = false
        totalLbl.text = "Total: $\(totalAmount)"
        totalLbl.textColor = UIColor.red
        totalLbl.font = UIFont(name: "AmericanTypewriter", size: view.frame.width / 15)
        totalLbl.textAlignment = .center
        totalLbl.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        totalLbl.alpha = 0
        self.view.addSubview(totalLbl)
        NSLayoutConstraint(item: totalLbl, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: totalLbl, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 0).isActive = true
        
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        backBtn.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        backBtn.setTitle("Back", for: UIControlState.normal)
        backBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        backBtn.addTarget(self, action: #selector(self.backBtnAction), for: .touchUpInside)
        backBtn.alpha = 0
        self.view.addSubview(backBtn)
        NSLayoutConstraint(item: backBtn, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leftMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: backBtn, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 0).isActive = true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
        if under35TextField.text == "" {
            under35TextField.text = "\(Double(0.0))"
        }
        if in36TextField.text == "" {
            in36TextField.text = "\(Double(0.0))"
        }
        if in48TextField.text == "" {
            in48TextField.text = "\(Double(0.0))"
        }
        if in60TextField.text == "" {
            in60TextField.text = "\(Double(0.0))"
        }
        if in72TextField.text == "" {
            in72TextField.text = "\(Double(0.0))"
        }
        if in84TextField.text == "" {
            in84TextField.text = "\(Double(0.0))"
        }
        if in96TextField.text == "" {
            in96TextField.text = "\(Double(0.0))"
        }
        if in108TextField.text == "" {
            in108TextField.text = "\(Double(0.0))"
        }
        if in120TextField.text == "" {
            in120TextField.text = "\(Double(0.0))"
        }
        if in132TextField.text == "" {
            in132TextField.text = "\(Double(0.0))"
        }
        if in144TextField.text == "" {
            in144TextField.text = "\(Double(0.0))"
        }
        if in156TextField.text == "" {
            in156TextField.text = "\(Double(0.0))"
        }
        if in168TextField.text == "" {
            in168TextField.text = "\(Double(0.0))"
        }
        if in180TextField.text == "" {
            in180TextField.text = "\(Double(0.0))"
        }
        if blowOverTextField.text == "" {
            blowOverTextField.text = "\(Double(0.0))"
        }
        
        if under35TextField.text != nil && in36TextField.text != nil && in48TextField.text != nil && in60TextField.text != nil && in72TextField.text != nil && in84TextField.text != nil && in96TextField.text != nil && in108TextField.text != nil && in120TextField.text != nil && in132TextField.text != nil && in144TextField.text != nil && in156TextField.text != nil && in168TextField.text != nil && in180TextField.text != nil {
            
            if estimatingBegan == true {
                estimatingBegan = false
                
                if homeOwner == true {
                    outcomeUnder35.text = "\(Double(outcomeUnder35.text!)! + (Double(under35TextField.text!)! * Double(1.25)))"
                    outcome36.text = "\(Double(outcome36.text!)! + (Double(in36TextField.text!)! * Double(1.40)))"
                    outcome48.text = "\(Double(outcome48.text!)! + (Double(in48TextField.text!)! * Double(1.55)))"
                    outcome60.text = "\(Double(outcome60.text!)! + (Double(in60TextField.text!)! * Double(1.70)))"
                    outcome72.text = "\(Double(outcome72.text!)! + (Double(in72TextField.text!)! * Double(1.85)))"
                    outcome84.text = "\(Double(outcome84.text!)! + (Double(in84TextField.text!)! * Double(2.00)))"
                    outcome96.text = "\(Double(outcome96.text!)! + (Double(in96TextField.text!)! * Double(2.15)))"
                    outcome108.text = "\(Double(outcome108.text!)! + (Double(in108TextField.text!)! * Double(2.30)))"
                    outcome120.text = "\(Double(outcome120.text!)! + (Double(in120TextField.text!)! * Double(2.45)))"
                    outcome132.text = "\(Double(outcome132.text!)! + (Double(in132TextField.text!)! * Double(2.60)))"
                    outcome144.text = "\(Double(outcome144.text!)! + (Double(in144TextField.text!)! * Double(2.75)))"
                    outcome156.text = "\(Double(outcome156.text!)! + (Double(in156TextField.text!)! * Double(2.90)))"
                    outcome168.text = "\(Double(outcome168.text!)! + (Double(in168TextField.text!)! * Double(3.05)))"
                    outcome180.text = "\(Double(outcome180.text!)! + (Double(in180TextField.text!)! * Double(3.20)))"
                    blowOverOutcome.text = "\(Double(blowOverOutcome.text!)! + (Double(blowOverTextField.text!)! * Double(25.0)))"
                } else if business == true {
                    outcomeUnder35.text = "\(Double(outcomeUnder35.text!)! + (Double(under35TextField.text!)! * Double(1.00)))"
                    outcome36.text = "\(Double(outcome36.text!)! + (Double(in36TextField.text!)! * Double(1.15)))"
                    outcome48.text = "\(Double(outcome48.text!)! + (Double(in48TextField.text!)! * Double(1.30)))"
                    outcome60.text = "\(Double(outcome60.text!)! + (Double(in60TextField.text!)! * Double(1.45)))"
                    outcome72.text = "\(Double(outcome72.text!)! + (Double(in72TextField.text!)! * Double(1.60)))"
                    outcome84.text = "\(Double(outcome84.text!)! + (Double(in84TextField.text!)! * Double(1.75)))"
                    outcome96.text = "\(Double(outcome96.text!)! + (Double(in96TextField.text!)! * Double(1.90)))"
                    outcome108.text = "\(Double(outcome108.text!)! + (Double(in108TextField.text!)! * Double(2.05)))"
                    outcome120.text = "\(Double(outcome120.text!)! + (Double(in120TextField.text!)! * Double(2.20)))"
                    outcome132.text = "\(Double(outcome132.text!)! + (Double(in132TextField.text!)! * Double(2.35)))"
                    outcome144.text = "\(Double(outcome144.text!)! + (Double(in144TextField.text!)! * Double(2.50)))"
                    outcome156.text = "\(Double(outcome156.text!)! + (Double(in156TextField.text!)! * Double(2.65)))"
                    outcome168.text = "\(Double(outcome168.text!)! + (Double(in168TextField.text!)! * Double(2.80)))"
                    outcome180.text = "\(Double(outcome180.text!)! + (Double(in180TextField.text!)! * Double(2.95)))"
                    blowOverOutcome.text = "\(Double(blowOverOutcome.text!)! + (Double(blowOverTextField.text!)! * Double(25.0)))"
                }
                
                self.under35TextField.text = "\(Double(0.0))"
                self.in36TextField.text = "\(Double(0.0))"
                self.in48TextField.text = "\(Double(0.0))"
                self.in60TextField.text = "\(Double(0.0))"
                self.in72TextField.text = "\(Double(0.0))"
                self.in84TextField.text = "\(Double(0.0))"
                self.in96TextField.text = "\(Double(0.0))"
                self.in108TextField.text = "\(Double(0.0))"
                self.in120TextField.text = "\(Double(0.0))"
                self.in132TextField.text = "\(Double(0.0))"
                self.in144TextField.text = "\(Double(0.0))"
                self.in156TextField.text = "\(Double(0.0))"
                self.in168TextField.text = "\(Double(0.0))"
                self.in180TextField.text = "\(Double(0.0))"
                self.blowOverTextField.text = "\(Double(0.0))"
                
            } else {
                
            }
            
        } else {
            
        }
        
        totalAmount = Double(outcomeUnder35.text!)! + Double(outcome36.text!)! + Double(outcome48.text!)! + Double(outcome60.text!)! + Double(outcome72.text!)! + Double(outcome84.text!)! + Double(outcome96.text!)! + Double(outcome108.text!)! + Double(outcome120.text!)! + Double(outcome132.text!)! + Double(outcome144.text!)! + Double(outcome156.text!)! + Double(outcome168.text!)! + Double(outcome180.text!)! + Double(blowOverOutcome.text!)!
        
        totalLbl.text = "Total: $\(totalAmount)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func homeOwnerFunc() {
        UIView.animate(withDuration: 0.5, animations: {
            self.homeOwner = true
            self.business = false
            self.homeOwnerBtn.alpha = 0
            self.businessBtn.alpha = 0
            
            self.under35Lbl.alpha = 1
            self.in36Lbl.alpha = 1
            self.in48Lbl.alpha = 1
            self.in60Lbl.alpha = 1
            self.in72Lbl.alpha = 1
            self.in84Lbl.alpha = 1
            self.in96Lbl.alpha = 1
            self.in108Lbl.alpha = 1
            self.in120Lbl.alpha = 1
            self.in132Lbl.alpha = 1
            self.in144Lbl.alpha = 1
            self.in156Lbl.alpha = 1
            self.in168Lbl.alpha = 1
            self.in180Lbl.alpha = 1
            self.blowOverLbl.alpha = 1
            
            self.under35TextField.alpha = 1
            self.in36TextField.alpha = 1
            self.in48TextField.alpha = 1
            self.in60TextField.alpha = 1
            self.in72TextField.alpha = 1
            self.in84TextField.alpha = 1
            self.in96TextField.alpha = 1
            self.in108TextField.alpha = 1
            self.in120TextField.alpha = 1
            self.in132TextField.alpha = 1
            self.in144TextField.alpha = 1
            self.in156TextField.alpha = 1
            self.in168TextField.alpha = 1
            self.in180TextField.alpha = 1
            self.blowOverTextField.alpha = 1
            
            self.outcomeUnder35.alpha = 1
            self.outcome36.alpha = 1
            self.outcome48.alpha = 1
            self.outcome60.alpha = 1
            self.outcome72.alpha = 1
            self.outcome84.alpha = 1
            self.outcome96.alpha = 1
            self.outcome108.alpha = 1
            self.outcome120.alpha = 1
            self.outcome132.alpha = 1
            self.outcome144.alpha = 1
            self.outcome156.alpha = 1
            self.outcome168.alpha = 1
            self.outcome180.alpha = 1
            self.blowOverOutcome.alpha = 1
            
            self.totalLbl.alpha = 1
            self.backBtn.alpha = 1
            
        })
    }
    
    @objc func businessFunc() {
        UIView.animate(withDuration: 0.5, animations: {
            self.business = true
            self.homeOwner = false
            self.homeOwnerBtn.alpha = 0
            self.businessBtn.alpha = 0
            
            self.under35Lbl.alpha = 1
            self.in36Lbl.alpha = 1
            self.in48Lbl.alpha = 1
            self.in60Lbl.alpha = 1
            self.in72Lbl.alpha = 1
            self.in84Lbl.alpha = 1
            self.in96Lbl.alpha = 1
            self.in108Lbl.alpha = 1
            self.in120Lbl.alpha = 1
            self.in132Lbl.alpha = 1
            self.in144Lbl.alpha = 1
            self.in156Lbl.alpha = 1
            self.in168Lbl.alpha = 1
            self.in180Lbl.alpha = 1
            self.blowOverLbl.alpha = 1
            
            self.under35TextField.alpha = 1
            self.in36TextField.alpha = 1
            self.in48TextField.alpha = 1
            self.in60TextField.alpha = 1
            self.in72TextField.alpha = 1
            self.in84TextField.alpha = 1
            self.in96TextField.alpha = 1
            self.in108TextField.alpha = 1
            self.in120TextField.alpha = 1
            self.in132TextField.alpha = 1
            self.in144TextField.alpha = 1
            self.in156TextField.alpha = 1
            self.in168TextField.alpha = 1
            self.in180TextField.alpha = 1
            self.blowOverTextField.alpha = 1
            
            self.outcomeUnder35.alpha = 1
            self.outcome36.alpha = 1
            self.outcome48.alpha = 1
            self.outcome60.alpha = 1
            self.outcome72.alpha = 1
            self.outcome84.alpha = 1
            self.outcome96.alpha = 1
            self.outcome108.alpha = 1
            self.outcome120.alpha = 1
            self.outcome132.alpha = 1
            self.outcome144.alpha = 1
            self.outcome156.alpha = 1
            self.outcome168.alpha = 1
            self.outcome180.alpha = 1
            self.blowOverOutcome.alpha = 1
            
            self.totalLbl.alpha = 1
            self.backBtn.alpha = 1
            
        })
    }
    
    @objc func backBtnAction() {
        UIView.animate(withDuration: 0.5, animations: {
            self.business = false
            self.homeOwner = false
            self.homeOwnerBtn.alpha = 1
            self.businessBtn.alpha = 1
            
            self.under35Lbl.alpha = 0
            self.in36Lbl.alpha = 0
            self.in48Lbl.alpha = 0
            self.in60Lbl.alpha = 0
            self.in72Lbl.alpha = 0
            self.in84Lbl.alpha = 0
            self.in96Lbl.alpha = 0
            self.in108Lbl.alpha = 0
            self.in120Lbl.alpha = 0
            self.in132Lbl.alpha = 0
            self.in144Lbl.alpha = 0
            self.in156Lbl.alpha = 0
            self.in168Lbl.alpha = 0
            self.in180Lbl.alpha = 0
            self.blowOverLbl.alpha = 0
            
            self.under35TextField.alpha = 0
            self.in36TextField.alpha = 0
            self.in48TextField.alpha = 0
            self.in60TextField.alpha = 0
            self.in72TextField.alpha = 0
            self.in84TextField.alpha = 0
            self.in96TextField.alpha = 0
            self.in108TextField.alpha = 0
            self.in120TextField.alpha = 0
            self.in132TextField.alpha = 0
            self.in144TextField.alpha = 0
            self.in156TextField.alpha = 0
            self.in168TextField.alpha = 0
            self.in180TextField.alpha = 0
            self.blowOverTextField.alpha = 0
            
            self.outcomeUnder35.alpha = 0
            self.outcome36.alpha = 0
            self.outcome48.alpha = 0
            self.outcome60.alpha = 0
            self.outcome72.alpha = 0
            self.outcome84.alpha = 0
            self.outcome96.alpha = 0
            self.outcome108.alpha = 0
            self.outcome120.alpha = 0
            self.outcome132.alpha = 0
            self.outcome144.alpha = 0
            self.outcome156.alpha = 0
            self.outcome168.alpha = 0
            self.outcome180.alpha = 0
            self.blowOverOutcome.alpha = 0
            
            self.totalLbl.alpha = 0
            self.backBtn.alpha = 0
            
            self.under35TextField.text = "\(Double(0.0))"
            self.in36TextField.text = "\(Double(0.0))"
            self.in48TextField.text = "\(Double(0.0))"
            self.in60TextField.text = "\(Double(0.0))"
            self.in72TextField.text = "\(Double(0.0))"
            self.in84TextField.text = "\(Double(0.0))"
            self.in96TextField.text = "\(Double(0.0))"
            self.in108TextField.text = "\(Double(0.0))"
            self.in120TextField.text = "\(Double(0.0))"
            self.in132TextField.text = "\(Double(0.0))"
            self.in144TextField.text = "\(Double(0.0))"
            self.in156TextField.text = "\(Double(0.0))"
            self.in168TextField.text = "\(Double(0.0))"
            self.in180TextField.text = "\(Double(0.0))"
            self.blowOverTextField.text = "\(Double(0.0))"
            
            self.outcomeUnder35.text = "\(Double(0.0))"
            self.outcome36.text = "\(Double(0.0))"
            self.outcome48.text = "\(Double(0.0))"
            self.outcome60.text = "\(Double(0.0))"
            self.outcome72.text = "\(Double(0.0))"
            self.outcome84.text = "\(Double(0.0))"
            self.outcome96.text = "\(Double(0.0))"
            self.outcome108.text = "\(Double(0.0))"
            self.outcome120.text = "\(Double(0.0))"
            self.outcome132.text = "\(Double(0.0))"
            self.outcome144.text = "\(Double(0.0))"
            self.outcome156.text = "\(Double(0.0))"
            self.outcome168.text = "\(Double(0.0))"
            self.outcome180.text = "\(Double(0.0))"
            self.blowOverOutcome.text = "\(Double(0.0))"
            
            self.totalAmount = 0.0
            self.totalLbl.text = "Total: $\(self.totalAmount)"
            
        })
    }
    
    @objc func under36TextFieldFunc() {
        under35TextField.text = ""
        estimatingBegan = true
    }
    @objc func in36TextFieldFunc() {
        in36TextField.text = ""
        estimatingBegan = true
    }
    @objc func in48TextFieldFunc() {
        in48TextField.text = ""
        estimatingBegan = true
    }
    @objc func in60TextFieldFunc() {
        in60TextField.text = ""
        estimatingBegan = true
    }
    @objc func in72TextFieldFunc() {
        in72TextField.text = ""
        estimatingBegan = true
    }
    @objc func in84TextFieldFunc() {
        in84TextField.text = ""
        estimatingBegan = true
    }
    @objc func in96TextFieldFunc() {
        in96TextField.text = ""
        estimatingBegan = true
    }
    @objc func in108TextFieldFunc() {
        in108TextField.text = ""
        estimatingBegan = true
    }
    @objc func in120TextFieldFunc() {
        in120TextField.text = ""
        estimatingBegan = true
    }
    @objc func in132TextFieldFunc() {
        in132TextField.text = ""
        estimatingBegan = true
    }
    @objc func in144TextFieldFunc() {
        in144TextField.text = ""
        estimatingBegan = true
    }
    @objc func in156TextFieldFunc() {
        in156TextField.text = ""
        estimatingBegan = true
    }
    @objc func in168TextFieldFunc() {
        in168TextField.text = ""
        estimatingBegan = true
    }
    @objc func in180TextFieldFunc() {
        in180TextField.text = ""
        estimatingBegan = true
    }
    @objc func blowOverTextFieldFunc() {
        blowOverTextField.text = ""
        estimatingBegan = true
    }
}

