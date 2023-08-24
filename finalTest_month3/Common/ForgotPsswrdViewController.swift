

import UIKit
import SnapKit

class ForgotPsswrdViewController: UIViewController {

    private var stackBTN: UIStackView = {
       let stackImg = UIStackView()
        stackImg.spacing = 7
        stackImg.distribution = .fillProportionally
        
        return stackImg
    }()
    
    private let topImg = UIImageView(image: UIImage(named: "lock"))
    
    private let emailTopTF = ViewMaker.shared.makeTF(textColor: .white, font: .systemFont(ofSize: 15), backgroundColor: Colors.darkGreyForTFBackground, placeHolder: "Enter OTP", cornerRadius: 10, borderWidth: 1,borderColor: Colors.lightGrayForViewLines, leftView: UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 19)), rightView: UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 19)), isEnabled: false)
    
    private let bgView = ViewMaker.shared.makeView(backgroundColor: .white, cornerRadius: 30)
    
    private let topLBL = ViewMaker.shared.makeLabel(text: "Trouble Logging in?", textColor: .white, font: .boldSystemFont(ofSize: 24))
    
    private let topInstructionLBL = ViewMaker.shared.makeLabel(text: "Enter your email or mobile number and we'll send you a OTP to get back into your account.", textColor: Colors.lightGrayForViewLines,font: .systemFont(ofSize: 11), numberOfLines: 2)
    
    private let idLBL = ViewMaker.shared.makeLabel(text: "Employee id", textColor: Colors.greyForLabels, font: .boldSystemFont(ofSize: 12))
    
    private let idTF = ViewMaker.shared.makeTF(textColor: Colors.blackForTFs, font: .systemFont(ofSize: 16), placeHolder: "Enter id")
    
    private let viewLine = ViewMaker.shared.makeView(backgroundColor: Colors.lightGrayForViewLines)
    
    private let contactsLBL = ViewMaker.shared.makeLabel(text: "enter your mobile number or Email id", textColor: Colors.blackForTFs, font: .systemFont(ofSize: 15), borderWidth: 1, borderColor: Colors.lightGrayForViewLines, cornerRadius: 10)
    
    private let OTPbtn = ViewMaker.shared.makeButton(titleColor: .white, font: .boldSystemFont(ofSize: 18), title: "Get OTP", cornerRadius: 15, backgroundColor: Colors.yellowForOTP)
    
    private let x1 = ViewMaker.shared.makeButton(titleColor: .black, font: .boldSystemFont(ofSize: 18), title: "X", cornerRadius: 10, borderWidth: 1, borderColor: Colors.greyForLabels)
    
    
    private let x2 = ViewMaker.shared.makeButton(titleColor: .black, font: .boldSystemFont(ofSize: 18), title: "X", cornerRadius: 10, borderWidth: 1, borderColor: Colors.greyForLabels)
    
    private let x3 = ViewMaker.shared.makeButton(titleColor: .black, font: .boldSystemFont(ofSize: 18), title: "X", cornerRadius: 10, borderWidth: 1, borderColor: Colors.greyForLabels)
    
    private let x4 = ViewMaker.shared.makeButton(titleColor: .black, font: .boldSystemFont(ofSize: 18), title: "X", cornerRadius: 10, borderWidth: 1, borderColor: Colors.greyForLabels)
    
    private let x5 = ViewMaker.shared.makeButton(titleColor: .black, font: .boldSystemFont(ofSize: 18), title: "X", cornerRadius: 10, borderWidth: 1, borderColor: Colors.greyForLabels)
    
    private let x6 = ViewMaker.shared.makeButton(titleColor: .black, font: .boldSystemFont(ofSize: 18), title: "X", cornerRadius: 10, borderWidth: 1, borderColor: Colors.greyForLabels)
    
    private let submitBTN = ViewMaker.shared.makeButton(titleColor: .white, font: .boldSystemFont(ofSize: 18), title: "Submit", cornerRadius: 15, backgroundColor: Colors.greenForButtons)
    override func viewDidLoad() {
        view.backgroundColor = Colors.backgroundColor
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initUI()
    }
    

    private func initUI(){
        confTopImg()
        confTopTF()

        
        conftopLBL()
        confInstruuctionLBL()
        
        confBgView()
        
        confIdLBL()
        confIdTF()
        confViewLine()
        
        confContactLBL()
        confOTPbtn()
        
        confXbtns()
        
        confSubmitBTN()
        
    }
    
    private func confTopImg(){
        view.addSubview(topImg)
        
        topImg.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(64)
            make.centerX.equalToSuperview()
            make.height.equalTo(148)
            make.width.equalTo(148)
        }
    }
    
    private func confTopTF(){
        view.addSubview(emailTopTF)
        
        emailTopTF.snp.makeConstraints { make in
            make.top.equalTo(topImg.snp.bottom).offset(34)
            make.height.equalTo(45)
            make.leading.trailing.equalToSuperview().inset(40)
        }
    }
    
    private func conftopLBL(){
        view.addSubview(topLBL)
        
        topLBL.snp.makeConstraints { make in
            make.top.equalTo(emailTopTF.snp.bottom).offset(34)
            make.centerX.equalToSuperview()
        }
    }
    
    private func confInstruuctionLBL(){
        view.addSubview(topInstructionLBL)
        
        topInstructionLBL.snp.makeConstraints { make in
            make.top.equalTo(topLBL.snp.bottom).offset(1)
            make.centerX.equalTo(topLBL)
            make.leading.trailing.equalToSuperview().inset(64)
        }
    }
    
    private func confBgView(){
        view.addSubview(bgView)
        
        bgView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(385)
        }
    }
    
    private func confIdLBL(){
        bgView.addSubview(idLBL)
        
        idLBL.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(42)
            make.leading.equalToSuperview().offset(22)
            make.height.equalTo(15)
        }
    }
    
    
    private func confIdTF(){
        bgView.addSubview(idTF)
        
        idTF.snp.makeConstraints { make in
            make.top.equalTo(idLBL.snp.bottom).offset(13)
            make.leading.trailing.equalToSuperview().inset(22)
            make.height.equalTo(20)
        }
    }
    
    private func confViewLine(){
        bgView.addSubview(viewLine)
        
        viewLine.snp.makeConstraints { make in
            make.top.equalTo(idTF.snp.bottom).offset(13)
            make.leading.trailing.equalTo(idTF)
            make.height.equalTo(1)
        }
    }
    
    
    private func confContactLBL(){
        bgView.addSubview(contactsLBL)
        
        contactsLBL.snp.makeConstraints { make in
            make.top.equalTo(viewLine.snp.bottom).offset(30)
            make.leading.trailing.equalTo(viewLine)
            make.height.equalTo(45)
        }
    }
    
    private func confOTPbtn(){
        bgView.addSubview(OTPbtn)
        
        OTPbtn.snp.makeConstraints { make in
            make.top.equalTo(contactsLBL.snp.bottom).offset(16)
            make.trailing.equalTo(contactsLBL)
            make.height.equalTo(35)
            make.width.equalTo(95)
        }
        
        OTPbtn.addTarget(self, action: #selector(OTPbtnPressed), for: .touchUpInside)
    }
    @objc func OTPbtnPressed(){
        if isFilled(tf: idTF){
            emailTopTF.isEnabled = true
        }else{
            emailTopTF.isEnabled = false
        }
    }
    
    private func confXbtns(){
        bgView.addSubview(stackBTN)
        
        stackBTN.snp.makeConstraints { make in
            make.top.equalTo(OTPbtn.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            
            make.height.equalTo(40)
        }
    
        x1.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        x2.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        x3.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        x4.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        x5.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        x6.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        stackBTN.addArrangedSubview(x1)
        stackBTN.addArrangedSubview(x2)
        stackBTN.addArrangedSubview(x3)
        stackBTN.addArrangedSubview(x4)
        stackBTN.addArrangedSubview(x5)
        stackBTN.addArrangedSubview(x6)
}
    
    private func confSubmitBTN(){
        bgView.addSubview(submitBTN)
        
        submitBTN.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(stackBTN.snp.bottom).offset(25)
            make.bottom.equalToSuperview().offset(-25)
            make.height.equalTo(35)
            make.width.equalTo(95)
        }
        
        submitBTN.addTarget(self, action: #selector(submitbtnPressed), for: .touchUpInside)
    }
    @objc func submitbtnPressed(){
        if isFilled(tf: emailTopTF){
            let vc = NewPsswrdViewController()
            vc.id = idTF.text
            navigationController?.setViewControllers([vc], animated: true)
       
        }
    }
    
    private func isFilled(tf: UITextField) -> Bool {
        if tf.text?.isEmpty ?? true {
            tf.layer.borderColor = UIColor.red.cgColor
            tf.layer.borderWidth = 1
            tf.placeholder = "Fill the text field"
            
            return false
        } else {
            tf.layer.borderWidth = 0
            return true
        }
        
    }
   
}
