//
//  AvatarViewController.swift
//  dynamicFont
//
//  Created by Soulchild on 20/04/2019.
//  Copyright © 2019 fluffy. All rights reserved.
//

import UIKit

class AvatarViewController: UIViewController {

    // the height constraint for the avatar image view
    @IBOutlet weak var avatarHeightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let adjustedHeight = UIFontMetrics(forTextStyle: .headline).scaledValue(for: 75.0)
        avatarHeightConstraint.constant = adjustedHeight
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let adjustedHeight = UIFontMetrics(forTextStyle: .headline).scaledValue(for: 75.0)
        avatarHeightConstraint.constant = adjustedHeight
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
