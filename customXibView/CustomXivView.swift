//
//  CustomXivView.swift
//  customXibView
//
//  Created by Piklu Majumder-401 on 9/18/18.
//  Copyright © 2018 Piklu Majumder-401. All rights reserved.
//

import UIKit

class CustomXivView: UIView {

    @IBOutlet var containerView: UIView!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibSetUp()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetUp()
    }

    private func nibSetUp() {

        Bundle.main.loadNibNamed("CustomXivView", owner: self, options: nil)
        addSubview(containerView)
        // flexibale width and height set
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        // Activate constraint

        //        containerView.translatesAutoresizingMaskIntoConstraints = false
        //        NSLayoutConstraint.activate([containerView.topAnchor.constraint(equalTo: topAnchor),
        //                                     containerView.leftAnchor.constraint(equalTo: leftAnchor),
        //                                     containerView.rightAnchor.constraint(equalTo: rightAnchor),
        //                                     containerView.bottomAnchor.constraint(equalTo: bottomAnchor)])
    }

    public func displayView() {
        self.alpha = 0.0
        self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        UIView.animate(withDuration: 1.0,animations: {
            self.alpha = 1.0
            self.transform  = CGAffineTransform.identity

        }) { (finished) in
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
                self.hideView()
            })
        }
    }

    public func hideView() {
        UIView.animate(withDuration: 1.0, animations: {
            self.alpha = 0.0
            self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        }) { (finished) in
            self.removeFromSuperview()
        }
    }
}
