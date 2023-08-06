import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var twoBtn: UIButton!
    @IBOutlet weak var threeBtn: UIButton!
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var lableQuestion: UILabel!
    @IBOutlet weak var progressQuestions: UIProgressView!
    var myQuiz = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func btnClick(_ sender: UIButton) {
        if myQuiz.checkAnswer(answer: sender.currentTitle!){
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        myQuiz.nextQuestions()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        oneBtn.setTitle(myQuiz.getAnswerVar(element: 0), for: .normal)
        twoBtn.setTitle(myQuiz.getAnswerVar(element: 1), for: .normal)
        threeBtn.setTitle(myQuiz.getAnswerVar(element: 2), for: .normal)
        lableQuestion.text = myQuiz.getQuestionText()
        scoreLable.text = "Score: \(myQuiz.getScore())"
        oneBtn.backgroundColor = .clear
        twoBtn.backgroundColor = .clear
        threeBtn.backgroundColor = .clear
        progressQuestions.progress = myQuiz.getProgress()
    }
    
}

