//
//  ViewController.swift
//  iSonidos
//
//  Created by Cetys on 07/11/2019.
//  Copyright © 2019 Cetys. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var reproductor : AVAudioPlayer!
    
    @IBAction func sonidoPulsado(_ sender: UIButton) {
        reproductor.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let rutaAlArchivo : URL = Bundle.main.url(forResource: "latigo", withExtension: "mp3")!
        do {
            try reproductor = AVAudioPlayer(contentsOf: rutaAlArchivo)
        } catch {
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

