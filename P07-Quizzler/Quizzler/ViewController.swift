//
//  ViewController.swift
//  Quizzler
//
//  Created by Evgenii Mazrukho on 30.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var questionNumber = 0
    let quiz = [
              Question(text: "A slug's blood is green.", answer: "True"),
              Question(text: "Approximately one quarter of human bones are in the feet.", answer: "True"),
              Question(text: "The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
              Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it hotexte to eat.", answer: "True"),
              Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a texttate funeral, because the building is considered too sacred a place.", answer: "False"),
              Question(text: "It is illegal to pee in the Ocean in Portugal.", answer: "True"),
              Question(text: "You can lead a cow down stairs but not up stairs.", answer: "False"),
              Question(text: "Google was originally called 'Backrub'.", answer: "True"),
              Question(text: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
              Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephtextnt.", answer: "False"),
              Question(text: "No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
              Question(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
         
        if userAnswer == actualAnswer {
            sender.backgroundColor = .green
            sender.layer.opacity = 0.5
        } else {
            sender.backgroundColor = .red
            sender.layer.opacity = 0.5
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }
}

