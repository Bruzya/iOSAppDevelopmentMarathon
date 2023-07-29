//
//  ViewController.swift
//  EggTimer
//
//  Created by Evgenii Mazrukho on 29.07.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //    let softTime = 5
    //    let mediumTime = 8
    //    let hardTime = 12
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 300,
                    "Medium": 420,
                    "Hard": 720]
    
    var player: AVAudioPlayer!
    
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        mainLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        } else {
            timer.invalidate()
            mainLabel.text = "DONE!"
            playSound()
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

//        guard eggTimes[hardness] != nil else { return }
//        and we are now can use ! force unwrapping in our next code, because we already check it for nil in the guard statement
//        print(eggTimes[hardness]!)
//        or just check with nil coalesing ?? using default value as any string ""
//        print(eggTimes[hardness] ?? "")
//        switch hardness {
//        case "Soft": print(softTime)
//        case "Medium": print(mediumTime)
//        case "Hard": print(hardTime)
//        default:
//            break
//        }
