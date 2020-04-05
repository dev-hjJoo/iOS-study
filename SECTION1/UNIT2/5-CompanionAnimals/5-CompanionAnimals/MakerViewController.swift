//
//  MakerViewController.swift
//  5-CompanionAnimals
//
//  Created by hyovely on 2020/04/05.
//  Copyright © 2020 MobileX.IVIS.CWNU. All rights reserved.
//

import UIKit

class MakerViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet var descriptionTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.descriptionTextView.text = """
        안녕하세요 찐효입니다 -(-@
        제 애플리케이션을 이용해주셔서 감사합니다.
        제 블로그 주소는 https://hyoz-dev-diary.tistory.com/ 입니다.
        앞으로 멋진 개발자가 되겠습니다 ~('-')~
        """
    }
    
    // MARK: - Methods
    @IBAction func touchUpInsideDissmissButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
