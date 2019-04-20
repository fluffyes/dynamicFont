//
//  ViewController.swift
//  dynamicFont
//
//  Created by Soulchild on 19/04/2019.
//  Copyright © 2019 fluffy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var largeTitle: UILabel!
    
    @IBOutlet weak var titleOne: UILabel!
    
    @IBOutlet weak var titleTwo: UILabel!
    
    @IBOutlet weak var titleThree: UILabel!
    
    @IBOutlet weak var headline: UILabel!
    
    @IBOutlet weak var body: UILabel!
    
    @IBOutlet weak var callout: UILabel!
    
    @IBOutlet weak var subhead: UILabel!
    
    @IBOutlet weak var footnote: UILabel!
    
    @IBOutlet weak var captionOne: UILabel!
    
    @IBOutlet weak var captionTwo: UILabel!
    
    var labels : [UILabel] = []
    var names : [String] = []
    var styles : [UIFont.TextStyle] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        labels = [largeTitle, titleOne, titleTwo, titleThree, headline, body, callout, subhead, footnote, captionOne, captionTwo]
        
        names = ["Large Title", "Title1", "Title2", "Title3", "Headline", "Body", "Callout", "Subhead", "Footnote", "Caption1", "Caption2"]
        
        styles = [.largeTitle, .title1, .title2, .title3, .headline, .body, .callout, .subheadline, .footnote, .caption1, .caption2]
    }

    override func viewDidAppear(_ animated: Bool) {
        for index in 0...labels.count - 1 {
            let label = labels[index]
            let name = names[index]
            let style = styles[index]
            let pointSize = Int(UIFontDescriptor.preferredFontDescriptor(withTextStyle: style).pointSize)
            
            label.text = "\(name) (\(pointSize) pt)"
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        for index in 0...labels.count - 1{
            let label = labels[index]
            let name = names[index]
            let style = styles[index]
            let pointSize = Int(UIFontDescriptor.preferredFontDescriptor(withTextStyle: style).pointSize)
            
            label.text = "\(name) (\(pointSize) pt)"
        }
    }
}

