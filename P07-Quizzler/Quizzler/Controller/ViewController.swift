//
//  ViewController.swift
//  Quizzler
//
//  Created by Evgenii Mazrukho on 30.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstAnswer: UIButton!
    @IBOutlet weak var secondAnswer: UIButton!
    @IBOutlet weak var thirdAnswer: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = .green
            sender.layer.opacity = 0.5
        } else {
            sender.backgroundColor = .red
            sender.layer.opacity = 0.5
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        firstAnswer.backgroundColor = .clear
        secondAnswer.backgroundColor = .clear
        thirdAnswer.backgroundColor = .clear
        firstAnswer.setTitle(quizBrain.getAnswer(index: 0), for: .normal)
        secondAnswer.setTitle(quizBrain.getAnswer(index: 1), for: .normal)
        thirdAnswer.setTitle(quizBrain.getAnswer(index: 2), for: .normal)
    }
}

