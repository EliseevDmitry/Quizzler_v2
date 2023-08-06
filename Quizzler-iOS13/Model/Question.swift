//Model->View->Controller (MVC) - схема разделения данных приложения и управляющей логики на три отдельных компонента: модель, представление и контроллер
import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.text = q
        self.answer = a
        self.correctAnswer = correctAnswer
    }
}
