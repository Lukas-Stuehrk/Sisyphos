import UIKit


extension String {

    /// Returns the string localized in the locale of the simulator. This is handy for translating standard UIKit
    /// elements or the keyboard.
    var localizedForSimulator: String {
        Bundle.uiKit.localizedString(forKey: self, value: "NO TRANSLATION FOUND for \(self)", table: nil)
    }
}

private extension Bundle {

    static var uiKit: Bundle {
        Bundle(for: UIButton.self)
    }

}
