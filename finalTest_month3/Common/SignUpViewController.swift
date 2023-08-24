import UIKit
import SnapKit


class SignUpViewController: UIViewController {

    private var isChecked = false

    
    private let topImg = UIImageView(image: UIImage(named: "top"))
    private let bottomImg = UIImageView(image: UIImage(named: "bottom"))
    
    private let bgView = ViewMaker.shared.makeView(backgroundColor: .white, cornerRadius: 30)
    
    private let nameLBL = ViewMaker.shared.makeLabel(text: "Full Name", textColor: Colors.greyForLabels, font: .boldSystemFont(ofSize: 12))
    private let nameTF = ViewMaker.shared.makeTF(textColor: Colors.blackForTFs, font: .systemFont(ofSize: 16), placeHolder: "Enter name")
    
    private let viewLine1 = ViewMaker.shared.makeView(backgroundColor: Colors.lightGrayForViewLines)
    
    private let mNumberLBL = ViewMaker.shared.makeLabel(text: "Mobile Number", textColor: Colors.greyForLabels, font: .boldSystemFont(ofSize: 12))
    private let mNumberTF = ViewMaker.shared.makeTF(textColor: Colors.blackForTFs, font: .systemFont(ofSize: 16), placeHolder: "Enter mobile number")
    
    private let viewLine2 = ViewMaker.shared.makeView(backgroundColor: Colors.lightGrayForViewLines)
    
    
    private let emailLBL = ViewMaker.shared.makeLabel(text: "Email", textColor: Colors.greyForLabels, font: .boldSystemFont(ofSize: 12))
    private let emailTF = ViewMaker.shared.makeTF(textColor: Colors.blackForTFs, font: .systemFont(ofSize: 16), placeHolder: "Enter email")
    
    private let viewLine3 = ViewMaker.shared.makeView(backgroundColor: Colors.lightGrayForViewLines)
    
    private let userNameLBL = ViewMaker.shared.makeLabel(text: "User Name", textColor: Colors.greyForLabels, font: .boldSystemFont(ofSize: 12))
    private let userNameTF = ViewMaker.shared.makeTF(textColor: Colors.blackForTFs, font: .systemFont(ofSize: 16), placeHolder: "Enter user name")
    
    private let viewLine4 = ViewMaker.shared.makeView(backgroundColor: Colors.lightGrayForViewLines)
    
    
    private let passwordLBL = ViewMaker.shared.makeLabel(text: "Password", textColor: Colors.greyForLabels, font: .systemFont(ofSize: 12))
    private let passwordTF = ViewMaker.shared.makeTF(textColor: Colors.blackForTFs, font: .systemFont(ofSize: 13), placeHolder: "Enter password", secureTextEntry: true)
    
    private let viewLine5 = ViewMaker.shared.makeView(backgroundColor: Colors.lightGrayForViewLines)
    
    private let eyeBTN = ViewMaker.shared.makeButton(image: UIImage(systemName: "eye.fill"), tintColor: Colors.lightGrayForEyeButton)
   
    private let confPasswordLBL = ViewMaker.shared.makeLabel(text: "Confirm Password", textColor: Colors.greyForLabels, font: .systemFont(ofSize: 12))
    private let confPasswordTF = ViewMaker.shared.makeTF(textColor: Colors.blackForTFs, font: .systemFont(ofSize: 13), placeHolder: "Confirm password", secureTextEntry: true)
    
    private let viewLine6 = ViewMaker.shared.makeView(backgroundColor: Colors.lightGrayForViewLines)
    
    private let confPsswrdEyeBTN = ViewMaker.shared.makeButton(image: UIImage(systemName: "eye.fill"), tintColor: Colors.lightGrayForEyeButton)
   
    
    private let signUpBTN = ViewMaker.shared.makeButton(titleColor: .white, font: .boldSystemFont(ofSize: 18), title: "Sign Up",cornerRadius: 15, backgroundColor: Colors.blueForButton)
    
    private let AlreadyHaveAccountLBL = ViewMaker.shared.makeLabel(text: "Already have an Account?", textColor: .black, font: .boldSystemFont(ofSize: 13))
    
    private let signInBTN = ViewMaker.shared.makeButton(titleColor: Colors.lightBlueForButtons, font: .boldSystemFont(ofSize: 13), title: "Sign In")
    
    override func viewDidLoad() {
        
        view.backgroundColor = Colors.backgroundColor
        super.viewDidLoad()

        
        initUI()
        
        // Do any additional setup after loading the view.
    }
    
    private func initUI(){
        configTopImg()
        
        configBgView()
        
        configNameLBL()
        configNameTF()
        configViewLine1()
        
        configMnumberLBL()
        configMnumberTF()
        configViewLine2()
        
        configEmailLBL()
        configEmailTF()
        configViewLine3()
        
        configUserNameLBL()
        configUserNameTF()
        configViewLine4()
        
        configPsswrdLBL()
        configPsswrdTF()
        configViewLine5()
        configEyeBtn()
        
        configConfrmPsswrdLBL()
        configConfirmPsswrdTF()
        configViewLine6()
        configConfEyeBtn()
        
        configBottomImg()
        configSignInBTN()
        
        configSignUpBTN()

    }

    private func configTopImg(){
        view.addSubview(topImg)
        topImg.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(29)
            make.leading.equalToSuperview().offset(32)
            make.width.equalTo(350)
            make.height.equalTo(256)
        }
    }


    private func configBgView(){
        view.addSubview(bgView)
        
        bgView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(608)
        }
    }
    
    private func configNameLBL(){
        bgView.addSubview(nameLBL)
        
        nameLBL.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(54)
            make.leading.equalToSuperview().offset(22)
            make.height.equalTo(15)
        }
    }
    
    private func configNameTF(){
        bgView.addSubview(nameTF)
        
        nameTF.snp.makeConstraints { make in
            make.top.equalTo(nameLBL.snp.bottom).offset(13)
            make.leading.trailing.equalToSuperview().inset(22)
            make.height.equalTo(20)
        }
    }
    
    private func configViewLine1(){
        bgView.addSubview(viewLine1)
        
        viewLine1.snp.makeConstraints { make in
            make.top.equalTo(nameTF.snp.bottom).offset(13)
            make.leading.trailing.equalToSuperview().inset(22)
            make.height.equalTo(1)
        }
    }
    
    private func configMnumberLBL(){
        bgView.addSubview(mNumberLBL)
        
        mNumberLBL.snp.makeConstraints { make in
            make.top.equalTo(viewLine1.snp.bottom).offset(8)
            make.leading.equalTo(nameLBL)
            make.height.equalTo(15)
        }
    }
    
    private func configMnumberTF(){
        bgView.addSubview(mNumberTF)
        
        mNumberTF.snp.makeConstraints { make in
            make.top.equalTo(mNumberLBL.snp.bottom).offset(13)
            make.leading.trailing.equalTo(nameTF)
            make.height.equalTo(20)
        }
    }
    
    private func configViewLine2(){
        bgView.addSubview(viewLine2)
        
        viewLine2.snp.makeConstraints { make in
            make.top.equalTo(mNumberTF.snp.bottom).offset(13)
            make.leading.trailing.equalTo(viewLine1)
            make.height.equalTo(1)
        }
    }
    
    private func configEmailLBL(){
        bgView.addSubview(emailLBL)
        
        emailLBL.snp.makeConstraints { make in
            make.top.equalTo(viewLine2.snp.bottom).offset(8)
            make.leading.equalTo(mNumberLBL)
            make.height.equalTo(15)
        }
    }
    
    private func configEmailTF(){
        bgView.addSubview(emailTF)
        
        emailTF.snp.makeConstraints { make in
            make.top.equalTo(emailLBL.snp.bottom).offset(13)
            make.leading.trailing.equalTo(mNumberTF)
            make.height.equalTo(20)
        }
    }
    
    private func configViewLine3(){
        bgView.addSubview(viewLine3)
        
        viewLine3.snp.makeConstraints { make in
            make.top.equalTo(emailTF.snp.bottom).offset(13)
            make.leading.trailing.equalTo(viewLine2)
            make.height.equalTo(1)
        }
    }
    
    private func configUserNameLBL(){
        bgView.addSubview(userNameLBL)
        
        userNameLBL.snp.makeConstraints { make in
            make.top.equalTo(viewLine3.snp.bottom).offset(8)
            make.leading.equalTo(emailLBL)
            make.height.equalTo(15)
        }
    }
    
    private func configUserNameTF(){
        bgView.addSubview(userNameTF)
        
        userNameTF.snp.makeConstraints { make in
            make.top.equalTo(userNameLBL.snp.bottom).offset(13)
            make.leading.trailing.equalTo(emailTF)
            make.height.equalTo(20)
        }
    }
    
    private func configViewLine4(){
        bgView.addSubview(viewLine4)
        
        viewLine4.snp.makeConstraints { make in
            make.top.equalTo(userNameTF.snp.bottom).offset(13)
            make.leading.trailing.equalTo(viewLine3)
            make.height.equalTo(1)
        }
    }
    
    private func configPsswrdLBL(){
        bgView.addSubview(passwordLBL)
        
        passwordLBL.snp.makeConstraints { make in
            make.top.equalTo(viewLine4.snp.bottom).offset(8)
            make.leading.equalTo(userNameLBL)
            make.height.equalTo(15)
        }
    }
    
    private func configPsswrdTF(){
        bgView.addSubview(passwordTF)
        
        passwordTF.snp.makeConstraints { make in
            make.top.equalTo(passwordLBL.snp.bottom).offset(10)
            make.leading.trailing.equalTo(userNameTF)
            make.height.equalTo(20)
        }
    }
    private func configViewLine5(){
        bgView.addSubview(viewLine5)
        
        viewLine5.snp.makeConstraints { make in
            make.top.equalTo(passwordTF.snp.bottom).offset(10)
            make.leading.trailing.equalTo(viewLine4)
            make.height.equalTo(1)
        }
    }
    
    private func configEyeBtn(){
        bgView.addSubview(eyeBTN)
        
        eyeBTN.snp.makeConstraints { make in
            make.centerY.equalTo(passwordTF)
            make.trailing.equalTo(passwordTF).offset(-6)
            make.height.equalTo(13)
            make.width.equalTo(18)
        }
        eyeBTN.addTarget(self, action: #selector(eyeBTNPressed), for: .touchUpInside)

    }
    
    @objc private func eyeBTNPressed() {
        passwordTF.isSecureTextEntry.toggle()
        
    }
    
    private func configConfrmPsswrdLBL(){
        bgView.addSubview(confPasswordLBL)
        
        confPasswordLBL.snp.makeConstraints { make in
            make.top.equalTo(viewLine5.snp.bottom).offset(8)
            make.leading.equalTo(passwordLBL)
            make.height.equalTo(15)
        }
    }
    
    private func configConfirmPsswrdTF(){
        bgView.addSubview(confPasswordTF)
        
        confPasswordTF.snp.makeConstraints { make in
            make.top.equalTo(confPasswordLBL.snp.bottom).offset(10)
            make.leading.trailing.equalTo(passwordTF)
            make.height.equalTo(20)
        }

        confPasswordTF.addTarget(self, action: #selector(configureTFChanged), for: .editingDidEnd)

    }
    @objc func configureTFChanged(){
        print(checkPssword(password: passwordTF, confirmPassword: confPasswordTF))
    }
    
    
    
    private func configConfEyeBtn(){
        bgView.addSubview(confPsswrdEyeBTN)
        
        confPsswrdEyeBTN.snp.makeConstraints { make in
            make.centerY.equalTo(confPasswordTF)
            make.trailing.equalTo(confPasswordTF).offset(-6)
            make.height.equalTo(13)
            make.width.equalTo(18)
        }
        confPsswrdEyeBTN.addTarget(self, action: #selector(confEyeBTNPressed), for: .touchUpInside)

    }
    
    @objc private func confEyeBTNPressed() {
        confPasswordTF.isSecureTextEntry.toggle()
    }
    private func configViewLine6(){
        bgView.addSubview(viewLine6)
        
        viewLine6.snp.makeConstraints { make in
            make.top.equalTo(confPasswordTF.snp.bottom).offset(10)
            make.leading.trailing.equalTo(viewLine5)
            make.height.equalTo(1)
        }
    }
    
    private func configBottomImg(){
        bgView.addSubview(bottomImg)
        
        bottomImg.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview().offset(39)
            make.height.equalTo(131)
        }
    }
    
    private func configSignInBTN(){
        bgView.addSubview(AlreadyHaveAccountLBL)
        
        AlreadyHaveAccountLBL.snp.makeConstraints { make in
            make.top.equalTo(bottomImg).offset(36)
            make.leading.equalToSuperview().offset(12)
        }
        
        bgView.addSubview(signInBTN)
        
        signInBTN.snp.makeConstraints { make in
            make.centerY.equalTo(AlreadyHaveAccountLBL)
            make.leading.equalTo(AlreadyHaveAccountLBL.snp.trailing).offset(11)
        }
        
        signInBTN.addTarget(self, action: #selector(signInBTNPressed), for: .touchUpInside)

    }
    
    @objc func signInBTNPressed(_ sender: UIButton) {
        
            let vc = ViewController()
            navigationController?.setViewControllers([vc], animated: true)
    }
    
    private func configSignUpBTN(){
        bgView.addSubview(signUpBTN)
        
        signUpBTN.snp.makeConstraints { make in
            make.top.equalTo(viewLine6.snp.bottom).offset(33)
            make.bottom.equalTo(bottomImg.snp.top)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(168)
        }
        
        signUpBTN.addTarget(self, action: #selector(signUpBTNPressed), for: .touchUpInside)

    }
    
    @objc func signUpBTNPressed(_ sender: UIButton) {
        if checkFilledFields() {
            let vc =  FinalViewController()
            navigationController?.setViewControllers([vc], animated: true)
        }
    }
    
    
    
    private func isFilled(tf: UITextField) -> Bool {
        if tf.text?.isEmpty ?? true {
            tf.layer.borderColor = UIColor.red.cgColor
            tf.layer.borderWidth = 1
            tf.placeholder = "Fill text field please"
            
            return false
        } else {
            tf.layer.borderWidth = 0
            return true
        }
        
    }
    private func checkPssword(password: UITextField, confirmPassword: UITextField)->Bool{
        if password.text != confirmPassword.text{
            confirmPassword.layer.borderColor = UIColor.red.cgColor
            confirmPassword.layer.borderWidth = 1
            confirmPassword.text = ""
            confirmPassword.placeholder = "Wrong password"
            return false
        }else{
            return true
        }
    }
    private func checkFilledFields () -> Bool{
        let name = isFilled(tf: nameTF)
        let phoneNumber = isFilled(tf: mNumberTF)
        let email = isFilled(tf: emailTF)
        let userName = isFilled(tf: userNameTF)
        let password = isFilled(tf: passwordTF)
        let confirmPassword = isFilled(tf: confPasswordTF)
        
        
        if name && phoneNumber && email && userName && password && confirmPassword && checkPssword(password: passwordTF, confirmPassword: confPasswordTF){
            return true
        }
        else{
            return false
        }
    }
    
}
