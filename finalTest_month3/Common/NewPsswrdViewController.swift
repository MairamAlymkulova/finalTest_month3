
import UIKit
import SnapKit


class NewPsswrdViewController: UIViewController {
    var id: String?
    private var check = false
    private let topImg = UIImageView(image: UIImage(named: "lock"))
    
    private let emailTopTF = ViewMaker.shared.makeTF(textColor: .white, font: .systemFont(ofSize: 15), backgroundColor: Colors.darkGreyForTFBackground, placeHolder: "Enter OTP", cornerRadius: 10, borderWidth: 1,borderColor: Colors.lightGrayForViewLines, leftView: UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 19)), rightView: UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 19)), isEnabled: false)
    
    private let bgView = ViewMaker.shared.makeView(backgroundColor: .white, cornerRadius: 30)
    private let passwordLBL = ViewMaker.shared.makeLabel(text: "New Password", textColor: Colors.greyForLabels, font: .systemFont(ofSize: 12))
    
    private let passwordTF = ViewMaker.shared.makeTF(textColor: Colors.blackForTFs, font: .systemFont(ofSize: 13), placeHolder: "Enter new password", secureTextEntry: true)
    
    private let eyeBTN = ViewMaker.shared.makeButton(image: UIImage(systemName: "eye.fill")!, tintColor: Colors.lightGrayForEyeButton)
    
    private let viewLine1 = ViewMaker.shared.makeView(backgroundColor: Colors.lightGrayForViewLines)
   
    
    private let comfirmPasswordLBL = ViewMaker.shared.makeLabel(text: "Confirm Password", textColor: Colors.greyForLabels, font: .systemFont(ofSize: 12))
    
    private let confirmPasswordTF = ViewMaker.shared.makeTF(textColor: Colors.blackForTFs, font: .systemFont(ofSize: 13), placeHolder: "Confirm password", secureTextEntry: true)
    
    private let eyeBTNconfirm = ViewMaker.shared.makeButton(image: UIImage(systemName: "eye.fill")!, tintColor: Colors.lightGrayForEyeButton)

    private let viewLine2 = ViewMaker.shared.makeView(backgroundColor: Colors.lightGrayForViewLines)
   
    
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
        
        confBgView()
        
        confPasswordLBL()
        confPasswordTF()
        confEyeBTN()
        confViewLine1()
        
        confConfirmPasswordLBL()
        confConfirmPasswordTF()
        confEyeBTNconfirm()
        confviewLine2()
        
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
        
        emailTopTF.text = id ?? ""
    }
    
    private func confBgView(){
        view.addSubview(bgView)
        
        bgView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(466)
        
        }
        
    }
    
    private func confPasswordLBL(){
        bgView.addSubview(passwordLBL)
        
        passwordLBL.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(120)
            make.leading.equalToSuperview().offset(23)
            make.height.equalTo(15)
        }
    }
    
    private func confPasswordTF(){
        bgView.addSubview(passwordTF)
        
        passwordTF.snp.makeConstraints { make in
            make.top.equalTo(passwordLBL.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(23)
            make.height.equalTo(20)

        }
    }
    private func confEyeBTN(){
        bgView.addSubview(eyeBTN)
        
        eyeBTN.snp.makeConstraints { make in
            make.centerY.equalTo(passwordTF)
            make.trailing.equalTo(passwordTF).offset(-7)
            make.height.equalTo(13)
            make.width.equalTo(18)

        }
        eyeBTN.addTarget(self, action: #selector(eyeBTNPressed), for: .touchUpInside)

    }
    
    @objc private func eyeBTNPressed() {
        passwordTF.isSecureTextEntry.toggle()
        
    }
    private func confViewLine1(){
        bgView.addSubview(viewLine1)
        
        viewLine1.snp.makeConstraints { make in
            make.top.equalTo(passwordTF.snp.bottom).offset(10)
            make.leading.trailing.equalTo(passwordTF)
            make.height.equalTo(1)

        }
    }
    
    private func confConfirmPasswordLBL(){
        bgView.addSubview(comfirmPasswordLBL)
        
        comfirmPasswordLBL.snp.makeConstraints { make in
            make.top.equalTo(viewLine1.snp.bottom).offset(25)
            make.leading.equalTo(passwordLBL)
            make.height.equalTo(15)

        }
    }
    
    private func confConfirmPasswordTF(){
        bgView.addSubview(confirmPasswordTF)
        
        confirmPasswordTF.snp.makeConstraints { make in
            make.top.equalTo(comfirmPasswordLBL.snp.bottom).offset(10)
            make.leading.trailing.equalTo(passwordTF)
            make.height.equalTo(20)

        }
        confirmPasswordTF.addTarget(self, action: #selector(checkConfirm), for: .editingDidEnd)
    }
    
    @objc func checkConfirm(){
        check = checkConfirmPassword(password: passwordTF, confirmPassword: confirmPasswordTF)
    }
    private func confEyeBTNconfirm(){
        bgView.addSubview(eyeBTNconfirm)
        
        eyeBTNconfirm.snp.makeConstraints { make in
            make.centerY.equalTo(confirmPasswordTF)
            make.trailing.equalTo(confirmPasswordTF).offset(-7)
            make.height.equalTo(13)
            make.width.equalTo(18)

        }
        eyeBTNconfirm.addTarget(self, action: #selector(confEyeBTNPressed), for: .touchUpInside)

    }
    
    @objc private func confEyeBTNPressed() {
        confirmPasswordTF.isSecureTextEntry.toggle()
        
    }
    private func confviewLine2(){
        bgView.addSubview(viewLine2)
        
        viewLine2.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordTF.snp.bottom).offset(10)
            make.leading.trailing.equalTo(viewLine1)
            make.height.equalTo(1)

        }
    }
    
    private func confSubmitBTN(){
        bgView.addSubview(submitBTN)
        
        submitBTN.snp.makeConstraints { make in
            make.top.equalTo(viewLine2.snp.bottom).offset(67)
            make.bottom.equalToSuperview().offset(-107)
            make.centerX.equalToSuperview()
            make.height.equalTo(35)
            make.width.equalTo(95)

        }
        
        
        submitBTN.addTarget(self, action: #selector(submitBTNPressed), for: .touchUpInside)
    }
    
    @objc func submitBTNPressed(){
        if !(passwordTF.text?.isEmpty ?? true) && check{
            let vc = FinalViewController()
            navigationController?.setViewControllers([vc], animated: true)
        }
    }
    
    private func checkConfirmPassword(password: UITextField, confirmPassword: UITextField) -> Bool {
        
        if password.text != confirmPassword.text {
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor(ciColor: .red).cgColor
            confirmPassword.text=""

            confirmPassword.placeholder = "Wrong password"
            return false
        }else{
            confirmPassword.layer.borderWidth = 0
            return true
        }
    }
}
