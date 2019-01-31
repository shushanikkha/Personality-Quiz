//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Shushan Khachatryan on 10/12/18.
//  Copyright © 2018 Shushan Khachatryan. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.calculatePersonalityResult()
        navigationItem.hidesBackButton = true
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswer: [AnimalType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        for response in responseTypes {
            frequencyOfAnswer[response] = (frequencyOfAnswer[response] ?? 0) + 1
        }
        let frecuentAnswersSorted = frequencyOfAnswer.sorted(by: {(pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        })
        let mostCommonAnswer = frequencyOfAnswer.sorted {
            $0.1 > $1.1}.first!.key
        
       resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
    
    
 
    @IBAction func buttonDonTapped(_ sender: UIBarButtonItem) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "IntroductionViewController")
    }
    
}
