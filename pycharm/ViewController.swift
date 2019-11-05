//
//  ViewController.swift
//  pycharm
//
//  Created by GyeongTaek Kim on 05/11/2019.
//

import Cocoa
import AVFoundation

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AVCaptureDevice.requestAccess(for: .video) { _ in }
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

