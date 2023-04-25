// --- stubs ---

class NSObject { }
class NSAttributedString: NSObject {}
class UIResponder: NSObject {}
class UIView: UIResponder {}
class UIControl: UIView {}
class UITextField: UIControl {
  var text: String? {
    get { nil }
    set { }
  }
  var attributedText: NSAttributedString? {
    get { nil }
    set { }
  }
  var placeholder: String? {
    get { nil }
    set { }
  }
}

// --- tests ---

func testUITextField(textField: UITextField) {
  _ = textField.text // $ source=local
  _ = textField.attributedText // $ source=local
  _ = textField.placeholder // GOOD (not input)
  _ = textField.text?.uppercased() // $ source=local
}
