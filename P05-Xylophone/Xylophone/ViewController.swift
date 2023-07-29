//
//  ViewController.swift
//  Xylophone
//
//  Created by Evgenii Mazrukho on 29.07.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sender.currentTitle!)
    }
    
    func playSound(_ sender: String) {
        let url = Bundle.main.url(forResource: sender, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

