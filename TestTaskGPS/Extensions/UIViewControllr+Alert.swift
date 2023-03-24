//
//  UIViewControllr+Alert.swift
//  TestTaskGPS
//
//  Created by Evgenii on 20.03.2023.
//

import UIKit

extension UIViewController {
    func showAlert(withTitle title: String?, andMessage message: String?, andActions actions: [UIAlertAction] = [UIAlertAction(title: "Ok", style: .default, handler: nil)]) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        actions.forEach({alert.addAction($0)})
        present(alert, animated: true, completion: nil)
    }
}
