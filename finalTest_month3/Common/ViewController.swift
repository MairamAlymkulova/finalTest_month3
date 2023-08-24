

import UIKit
import SnapKit

class ViewController: UIViewController {

    private var isChecked = false

    
    private let topImg = UIImageView(image: UIImage(named: "top"))
    private let bottomImg = UIImageView(image: UIImage(named: "bottom"))
    
    private let welcomeLBL = ViewMaker.shared.makeLabel(text: "Welcome Back", textColor: .white, font: .boldSystemFont(ofSize: 34))
    
    private let signInLBL = ViewMaker.shared.makeLabel(text: "Sign in to continue", textColor: .white, font: .systemFont(ofSize: 20), opacity: 0.61)
    
    private let bgView = ViewMaker.shared.makeView(backgroundColor: .white, cornerRadius: 30)
    
    private let emailLBL = ViewMaker.shared.makeLabel(text: "Employed id / Email", textColor: Colors.greyForLabels, font: .boldSystemFont(ofSize: 12))
    private let emailTF = ViewMaker.shared.makeTF(textColor: Colors.blackForTFs, font: .systemFont(ofSize: 16), placeHolder: "Enter email")
    
    private let viewLine1 = ViewMaker.shared.makeView(backgroundColor: Colors.lightGrayForViewLines)
    
    private let passwordLBL = ViewMaker.shared.makeLabel(text: "Password", textColor: Colors.greyForLabels, font: .systemFont(ofSize: 12))
    private let passwordTF = ViewMaker.shared.makeTF(textColor: Colors.blackForTFs, font: .systemFont(ofSize: 13), placeHolder: "Enter password", secureTextEntry: true)
    
    private let viewLine2 = ViewMaker.shared.makeView(backgroundColor: Colors.lightGrayForViewLines)
    
    private let forgotPswrdBTN = ViewMaker.shared.makeButton(titleColor: Colors.lightBlueForButtons, font: .systemFont(ofSize: 13), title: "Forgot Password?")
    
    private let eyeBTN = ViewMaker.shared.makeButton(image: UIImage(systemName: "eye.fill")!, tintColor: Colors.lightGrayForEyeButton)
    
    private let checkBTN = ViewMaker.shared.makeButton(titleColor: .black, font: .boldSystemFont(ofSize: 18), image: UIImage(systemName: "square"), title: "Remember Me", tintColor: .black)
    
    private let signInBTN = ViewMaker.shared.makeButton(titleColor: .white, font: .boldSystemFont(ofSize: 18), title: "Sign In",cornerRadius: 15, backgroundColor: Colors.blueForButton)
    
    private let dontHaveAccountLBL = ViewMaker.shared.makeLabel(text: "Don't have an Account?", textColor: .black, font: .boldSystemFont(ofSize: 13))
    
    private let signUpBTN = ViewMaker.shared.makeButton(titleColor: Colors.lightBlueForButtons, font: .boldSystemFont(ofSize: 13), title: "Sign Up")
    
    
    override func viewDidLoad() {
        view.backgroundColor = Colors.backgroundColor
        super.viewDidLoad()

        
        initUI()
        
        // Do any additional setup after loading the view.
    }
    
    private func initUI(){
        configTopImg()
        configWelcomLBL()
        configSignInLBL()
        configBgView()
        configEmailLBL()
        
        configEmailTF()
        configViewLine1()

        configPasswordLBL()
        configPasswordTF()
        configViewLine2()

        configEyeBTN()
        configForgotPswrdBTN()

        configCheckBTN()

        configBottomImg()

        configDontHaveAccountLBL()
        configSignUpBTN()
//
        configSignIn()
    }

    private func configTopImg(){
        view.addSubview(topImg)
        topImg.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(29)
            make.width.equalTo(350)
            make.height.equalTo(256)
            make.leading.equalToSuperview().offset(10)
        }
    }
    
    private func configWelcomLBL(){
        view.addSubview(welcomeLBL)
        welcomeLBL.snp.makeConstraints { make in
            make.top.equalTo(topImg.snp.bottom).offset(-9)
            make.leading.equalToSuperview().offset(15)
        }
    }
    
    private func configSignInLBL(){
        view.addSubview(signInLBL)
        signInLBL.snp.makeConstraints { make in
            make.top.equalTo(welcomeLBL.snp.bottom).offset(4)
            make.leading.equalTo(welcomeLBL)
        }
    }
    
    private func configBgView(){
        view.addSubview(bgView)
        
        bgView.snp.makeConstraints { make in
            make.leading.bottom.trailing.equalToSuperview()
            make.height.equalTo(442)
        }
    }
    
    private func configEmailLBL(){
        bgView.addSubview(emailLBL)
        
        emailLBL.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(23)
            make.top.equalToSuperview().offset(43)
        }
    }
    
    private func configEmailTF(){
        bgView.addSubview(emailTF)
        
        emailTF.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(23)
            make.top.equalTo(emailLBL.snp.bottom).offset(13)
            make.height.equalTo(20)

        }
    }
    
    private func configViewLine1(){
        bgView.addSubview(viewLine1)
        
        viewLine1.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(23)
            make.top.equalTo(emailTF.snp.bottom).offset(13)
            make.height.equalTo(1)
        }
    }
    
    private func configPasswordLBL(){
        bgView.addSubview(passwordLBL)
        
        passwordLBL.snp.makeConstraints { make in
            make.leading.equalTo(emailLBL)
            make.top.equalTo(viewLine1.snp.bottom).offset(25)
        }
    }
    
    private func configPasswordTF(){
        bgView.addSubview(passwordTF)
        
        passwordTF.snp.makeConstraints { make in
            make.leading.trailing.equalTo(emailTF)
            make.top.equalTo(passwordLBL.snp.bottom).offset(10)
            make.height.equalTo(20)

        }
    }
    
    private func configViewLine2(){
        bgView.addSubview(viewLine2)
        
        viewLine2.snp.makeConstraints { make in
            make.leading.trailing.equalTo(viewLine1)
            make.top.equalTo(passwordTF.snp.bottom).offset(10)
            make.height.equalTo(1)

        }
    }
    
    private func configEyeBTN(){
        bgView.addSubview(eyeBTN)
        
        eyeBTN.snp.makeConstraints { make in
            make.centerY.equalTo(passwordTF)
            make.trailing.equalTo(passwordTF).offset(-7)
            make.width.equalTo(18)
            make.height.equalTo(13)

        }
        eyeBTN.addTarget(self, action: #selector(eyeBTNPressed), for: .touchUpInside)

    }
    
    @objc private func eyeBTNPressed() {
        passwordTF.isSecureTextEntry.toggle()
        
    }
    private func configForgotPswrdBTN(){
        bgView.addSubview(forgotPswrdBTN)
        
        forgotPswrdBTN.snp.makeConstraints { make in
            make.trailing.equalTo(passwordTF)
            make.top.equalTo(viewLine2.snp.bottom).offset(3)
            make.height.equalTo(20)
        }
        forgotPswrdBTN.addTarget(self, action: #selector(forgotPswrdBTNPressed), for: .touchUpInside)

    }
    
    @objc private func forgotPswrdBTNPressed() {
        let vc =  ForgotPsswrdViewController()

        navigationController?.pushViewController(vc, animated: true)

    }
    private func configCheckBTN(){
        bgView.addSubview(checkBTN)
        
        checkBTN.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.top.equalTo(viewLine2.snp.bottom).offset(65)

        }
        checkBTN.addTarget(self, action: #selector(changeCheckBox), for: .touchUpInside)
        
    }
    
    @objc func changeCheckBox(_sender: UIButton){
        if isChecked{
            checkBTN.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
            isChecked=false
        }else{
            checkBTN.setImage(UIImage(systemName: "square"), for: .normal)
            isChecked=true
        }
    }
    
    private func configBottomImg(){
        bgView.addSubview(bottomImg)
        
        bottomImg.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(131)

        }
    }
    
    private func configDontHaveAccountLBL(){
        bgView.addSubview(dontHaveAccountLBL)
        
        dontHaveAccountLBL.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(11)
            make.top.equalTo(bottomImg).offset(31)
        }
    }
    
    
    private func configSignUpBTN(){
        bgView.addSubview(signUpBTN)
        
        signUpBTN.snp.makeConstraints { make in
            make.leading.equalTo(dontHaveAccountLBL.snp.trailing).offset(11)
            make.centerY.equalTo(dontHaveAccountLBL)
        }
        
        signUpBTN.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside)

    }
    @objc func signUpButtonPressed(_ sender: UIButton) {
        
        let vc =  SignUpViewController()
        navigationController?.setViewControllers([vc], animated: true)

    }
    
    private func configSignIn(){
        bgView.addSubview(signInBTN)
        
        signInBTN.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(bottomImg.snp.top).offset(14)
            make.height.equalTo(40)
            make.width.equalTo(168)
        }
        signInBTN.addTarget(self, action: #selector(signInButtonPressed), for: .touchUpInside)

    }
    @objc func signInButtonPressed(_ sender: UIButton) {
        if checkFilledFeilds() {
            let vc =  FinalViewController()
            navigationController?.setViewControllers([vc], animated: true)
        }
    }
    
    private func isFilled(tf: UITextField) -> Bool {
        if tf.text?.isEmpty ?? true {
            tf.layer.borderColor = UIColor.red.cgColor
            tf.layer.borderWidth = 1
            tf.placeholder = "Enter a name please"
            
            return false
        } else {
            tf.layer.borderWidth = 0
            return true
        }
        
    }
    
    private func checkFilledFeilds()->Bool{
        let name=isFilled(tf: emailTF)
        let password = isFilled(tf: passwordTF)
        if  name && password {
            return true
        } else {
            return false
        }
    }
}
