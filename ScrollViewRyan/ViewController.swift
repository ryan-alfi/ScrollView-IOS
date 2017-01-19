//
//  ViewController.swift
//  ScrollViewRyan
//
//  Created by iMac on 1/18/17.
//  Copyright © 2017 Dycode. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = UIImage(named: "image")
        let imageView = UIImageView(image: image)
        scrollView.addSubview(imageView)
        scrollView.contentSize = image!.size
        scrollView.delegate = self
        imageView.tag = 99
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return scrollView.viewWithTag(99)
    }
    

}

