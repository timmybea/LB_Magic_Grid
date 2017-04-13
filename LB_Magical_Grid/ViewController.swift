//
//  ViewController.swift
//  LB_Magical_Grid
//
//  Created by Tim Beals on 2017-04-12.
//  Copyright © 2017 Tim Beals. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        let squaresPerRow: Int = 15
        let size: CGFloat = self.view.bounds.width / CGFloat(squaresPerRow)
        let rowsInHeight: Int = Int(self.view.bounds.height / size) + 1
        
        for j in 0...rowsInHeight {
            for i in 0...squaresPerRow {
                let cellView = UIView()
                cellView.backgroundColor = randomColor()
                cellView.frame = CGRect(x: CGFloat(i) * size, y: CGFloat(j) * size, width: size, height: size)
                cellView.layer.borderWidth = 0.5
                cellView.layer.borderColor = UIColor.black.cgColor
                self.view.addSubview(cellView)
            }
        }
        
        view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePan)))
    }
    
    func handlePan(recognizer: UIPanGestureRecognizer) {
    
        let position = recognizer.location(in: self.view)
        print(position)
    }
    
    fileprivate func randomColor() -> UIColor {
     
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

