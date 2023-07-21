//
//  quiz.swift
//  appDraft
//
//  Created by Maci Bella-Dai Tu on 7/20/23.
//

import Foundation

struct Question {
    var Question: String!
    var Answers: [String]!
    var CorrectAnswer: Int!
}


 Questions = [(Question: "What is an example of a need?",
              Answers: ["Starbucks coffee", "Netflix subscription", "A fancy dress", "A house"],
              CorrectAnswer: 4)]


 var Questions = [Question]()
    var QNumber = Int()
    var answerNumber = Int()


    func generateRandomQuestion() {
        if Questions.count > 0 {

            QNumber = 0
            questionLabel.text = Questions[QNumber].Question
            answerNumber = Questions[QNumber].CorrectAnswer

            for i in 0..<ButtonsCollection.count {
                ButtonsCollection[i].setTitle(Questions[QNumber].Answers[i], for: UIControlState.normal)
            }

            Questions.remove(at: QNumber)

        }

        else  {


         print("Done")
