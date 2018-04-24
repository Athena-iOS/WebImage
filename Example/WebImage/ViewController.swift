//
//  ViewController.swift
//  WebImage
//
//  Created by wangxiaotao on 04/12/2018.
//  Copyright (c) 2018 wangxiaotao. All rights reserved.
//

import UIKit
import WebImage

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enableWebp()
//        imageView.image = UIImage(named: "example.webp")
//        imageView.web.setImage(withURLString: "http://orwkbqlqc.bkt.clouddn.com/2018042421354330061.webp")
        imageView.web.setImage(withURLString: "http://orwkbqlqc.bkt.clouddn.com/avatar.jpg")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

