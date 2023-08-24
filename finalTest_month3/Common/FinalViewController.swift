
import UIKit
import SnapKit

class FinalViewController: UIViewController {

    private var successImg = UIImageView(image: UIImage(named: "success"))
    private var successLBL = ViewMaker.shared.makeLabel(text: "Success", textColor: .white, font: .boldSystemFont(ofSize: 23))
    override func viewDidLoad() {
        view.backgroundColor = Colors.backgroundColor
        super.viewDidLoad()

        initUI()
    }
    
    private func initUI(){
        configSuccessImg()
        configSuccessLBL()
        
    }
    
    private func configSuccessImg(){
        view.addSubview(successImg)
        
        successImg.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(183)
            make.width.equalTo(183)
        }
    }
    
    private func configSuccessLBL (){
        view.addSubview(successLBL)
        
        successLBL.snp.makeConstraints { make in
            make.top.equalTo(successImg.snp.bottom).offset(25)
            make.centerX.equalTo(successImg)
        }
        
    }
}
