//
//  ViewController.swift
//  iSpy
//
//  Created by Katlynn Davis on 10/28/22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / imageView.bounds.width
        let hieghtScale = size.height / imageView.bounds.width
        let scale = min(widthScale, hieghtScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
    }

    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    
}

