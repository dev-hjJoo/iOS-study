//
//  ViewController.swift
//  3-UpDown
//
//  Created by hyovely on 2020/03/25.
//  Copyright © 2020 MobileX.IVIS.CWNU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: -Properties
    // MARK: IBOutlets
    // 스토리보드 인스턴스와 연결을 해 주기 위해 @IBOutlet이라는 수식어를 붙입니다.
    @IBOutlet var resultLabel: UILabel!           // 게임 결과 (업 혹은 다운)
    @IBOutlet var turnCountLabel: UILabel!        // 시도 횟수
    @IBOutlet var inputField: UITextField!        // 입력받을 TextField
    
    // MARK: Stored Properties
    var randomNumber: UInt32 = 0
    var turnCount: Int = 0
    
    // MARK: -Methods
    // 제출 버튼을 호출했을 때 사용할 메서드
    // 메서드는 IBOutlet이 아닌 IBAction!
    @IBAction func touchUpSubmitButton(_ sender: UIButton) {
        guard let inputText = self.inputField.text, inputText.isEmpty == false else {
            print("입력값 없음")
            return
        }
        guard let inputNumber: UInt32 = UInt32(inputText) else {
            print("입력값이 잘못 되었음")
            return
        }
        
        turnCount += 1
        self.turnCountLabel.text = "\(turnCount)"
        
        if inputNumber > randomNumber {
            self.resultLabel.text = "UP!"
        } else if inputNumber < randomNumber {
            self.resultLabel.text = "Down~"
        } else {
            self.resultLabel.text = "정답입니다!"
        }
    }
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        self.initializeGame()
    }
    @IBAction func tapBackground(_ sender: UITapGestureRecognizer) {
        inputField.resignFirstResponder()
        // 이 외에도 아래와 같은 코드를 이용할 수 있다.
//        self.view.endEditing(true)
//        self.inputField.endEditing(true)
    }
    
    // MARK: Custom Methods
    func initializeGame() {
        self.randomNumber = arc4random() % 25
        self.turnCount = 0
        
        self.resultLabel.text = "Start!"
        self.turnCountLabel.text = "\(turnCount)"
        self.inputField.text = nil
        
        print("임의의 숫자 \(self.randomNumber)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         위의 touchUpSubmitButton을 메서드와 연결했던 것을 코드로 구현하면, 여기(viewDidLoad())에서!
         UIButton().addTarget(self, action: #selector(touchUpSubmitButton(_:)), for: UIControlEvents.touchUpInside)
         와 같이 표현할 수 있다.
         이를 Target-Action Programming Design Pattern이라고 함.
         */
        
        self.initializeGame()
         
    }


}

