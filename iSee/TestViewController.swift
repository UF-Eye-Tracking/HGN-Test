//
//  TestViewController.swift
//  iSee
//
//  Created by LT Carbonell on 4/9/17.
//  Copyright © 2017 LT Carbonel. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var locationLabel: UILabel!
    
    var videoAcc = VideoAcuityChecker()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.videoAcc = VideoAcuityChecker()
        videoAcc.startDebug(with: imageView)
        locationLabel.text = "Right Eye \(self.videoAcc.getRightEye())"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
