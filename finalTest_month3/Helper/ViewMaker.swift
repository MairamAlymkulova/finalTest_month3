
import UIKit

class ViewMaker {
    
    static let shared = ViewMaker()
    
    func makeView(backgroundColor: UIColor = .white,
                  cornerRadius: CGFloat = 0
                  
    ) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.layer.cornerRadius = cornerRadius
        return view
    }
    func makeLabel(text: String = "",
                   textColor: UIColor = .white,
                   textAlignment: NSTextAlignment = .center,
                   font: UIFont = .systemFont(ofSize: 12, weight: .regular),
                   borderWidth: CGFloat = 0,
                   borderColor: UIColor = .black,
                   cornerRadius: CGFloat = 0,
                   numberOfLines: Int = 0,
                   lineBreakMode: NSLineBreakMode = .byCharWrapping,
                   shadowColor: UIColor = .clear,
                   shadowOffset: CGSize = CGSize(width: 0, height: 0),
                   opacity: Float = 1
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.textAlignment = textAlignment
        label.font = font
        label.layer.borderWidth = borderWidth
        label.layer.borderColor = borderColor.cgColor
        label.layer.cornerRadius = cornerRadius
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.shadowColor = shadowColor
        label.shadowOffset = shadowOffset
        label.layer.opacity = opacity
        return label
    }
    
    func makeTF(
                textColor: UIColor = .white,
                font: UIFont = .systemFont(ofSize: 12, weight: .regular),
                textAlinment: NSTextAlignment = .left,
                backgroundColor: UIColor = .white,
                placeHolder: String = "",
                cornerRadius: CGFloat = 0,
                borderWidth: CGFloat = 0,
                borderColor: UIColor = .black,
                leftView: UIView? = nil,
                leftViewMode: UITextField.ViewMode = .always,
                rightView: UIView? = nil,
                rightViewMode: UITextField.ViewMode = .always,
                secureTextEntry: Bool = false,
                isEnabled: Bool = true,
                autocorrectionType: UITextAutocorrectionType = .no
    ) -> UITextField {
        let textField = UITextField()
        textField.textColor = textColor
        textField.font = font
        textField.textAlignment = textAlinment
        textField.backgroundColor = backgroundColor
        textField.placeholder = placeHolder
        textField.layer.cornerRadius = cornerRadius
        textField.layer.borderWidth = borderWidth
        textField.layer.borderColor = borderColor.cgColor
        textField.leftView = leftView
        textField.leftViewMode = leftViewMode
        textField.rightView = rightView
        textField.rightViewMode = rightViewMode
        textField.isSecureTextEntry = secureTextEntry
        textField.isEnabled = isEnabled
        textField.autocorrectionType = autocorrectionType
        return textField
    }
    
    func makeButton(
                    titleColor: UIColor = .white,
                    font: UIFont = .systemFont(ofSize: 12, weight: .regular),
                    image: UIImage? = nil,
                    title: String = "",
                    cornerRadius: CGFloat = 0,
                    backgroundColor: UIColor = .clear,
                    tintColor: UIColor = .white,
                    borderWidth: CGFloat = 0,
                    borderColor: UIColor = .black
    ) -> UIButton {
        let button = UIButton()
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = font
        if let image = image{
            button.setImage(image, for: .normal)
        }
        button.setTitle(title, for: .normal)
        button.layer.cornerRadius = cornerRadius
        button.backgroundColor = backgroundColor
        button.tintColor = tintColor
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = borderColor.cgColor
        
        return button
    }
    
}
