//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by JunHyuk on 2019/11/02.
//  Copyright © 2019 junhyuk. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 화면에 값을 표시하는데 사용될 레이블.
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    
    // email, update, interval 값을 받을 변수들 선언.
    var paramEmail: String = ""
    var paramUpdate: Bool = false
    var paramInterval: Double = 0
    

    // 앱의 순환주기, 뷰가 로드 되자마자 표시하는 메소드.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신안함")
        self.resultInterval.text = "\(Int(paramInterval))분 마다 갱신"

    }
    
    // onBack버튼을 통해 전화면으로 복귀하는 메소드 구현.
    @IBAction func onBack(_ sender: Any) {
        
        self.presentingViewController?.dismiss(animated: true)
        
    }

}
