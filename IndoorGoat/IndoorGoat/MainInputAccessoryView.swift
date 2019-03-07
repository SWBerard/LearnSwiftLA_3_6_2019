import UIKit

protocol MainInputAccessoryViewDelegate: class {
    func userTappedOnButton()
    func userTypedSomething(text: String)
}

class MainInputAccessoryView: UIView {

    weak var delegate: MainInputAccessoryViewDelegate?

    @IBAction func userTappedOnButton(_ sender: Any) {
        delegate?.userTappedOnButton()
    }

    @IBAction func userChangedText(_ sender: UITextField) {
        delegate?.userTypedSomething(text: sender.text ?? "")
    }
}
