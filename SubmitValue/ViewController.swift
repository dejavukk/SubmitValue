//
//  ViewController.swift
//  SubmitValue
//
//  Created by JunHyuk on 2019/10/30.
//  Copyright © 2019 junhyuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 화면의 프로퍼티 선언.
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    @IBOutlet var isUpdateText: UILabel!
    @IBOutlet var intervalText: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 자동 갱신 여부가 바뀔 때마다 호출되는 메소드
    @IBAction func onSwitch(_ sender: UISwitch) {
        
        // 옵셔널 캐스팅
        //guard let obj = sender as? UISwitch else {
        //    return
        //}
        
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    // 갱신 주기가 바뀔 때마다 호출되는 메소드
    @IBAction func onStepper(_ sender: UIStepper) {
        
        // 강제 캐스팅
        // let obj = sender as! UIStepper
        
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다."
        
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        
        // VC2의 인스턴스 생성
        guard let rvc = self.storyboard?.instantiateViewController(identifier: "RVC") as? ResultViewController else {
            
            return
        }
        
        // 값을 전달하는 과정을 작성.
        rvc.paramEamil = self.email.text! // 이메일
        rvc.paramUpdate = self.isUpdate.isOn // 자동갱신 여부
        rvc.paramInterval = self.interval.value // 갱신주기
        
        // 화면이동
        self.present(rvc, animated: true)
        
    }
    
    

}

