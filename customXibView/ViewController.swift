//
//  ViewController.swift
//  customXibView
//
//  Created by Piklu Majumder-401 on 9/18/18.
//  Copyright © 2018 Piklu Majumder-401. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var customview: CustomXivView!

    private lazy var secondCustomView: CustomXivView = {
        let nibView = CustomXivView(frame: CGRect(x: 100, y: 50, width: 100, height: 100))
        nibView.backgroundColor = UIColor.yellow
        return nibView

    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        self.view.addSubview(secondCustomView)
//        secondCustomView.displayView()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.customview.displayView()

    }


}

