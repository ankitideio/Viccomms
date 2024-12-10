//
//  Extension.swift
//  Viccomms
//
//  Created by meet sharma on 19/09/23.
//

import Foundation
import UIKit
import Kingfisher

//MARK: - Button
extension UIButton{
    @IBInspectable var cornerRadi: CGFloat {
       get {
         return layer.cornerRadius
       }
       set {
         layer.cornerRadius = newValue
         layer.masksToBounds = newValue > 0
       }
     }
    func removeBackgroundImage(for state: UIControl.State) {
           setBackgroundImage(nil, for: state)
       }
    @IBInspectable override var borderWid: CGFloat {
       get {
         return layer.borderWidth
       }
       set {
         layer.borderWidth = newValue
       }
     }
    @IBInspectable override var borderCol: UIColor? {
       get {
         return UIColor(cgColor: layer.borderColor!)
       }
       set {
         layer.borderColor = newValue?.cgColor
       }
     }
       func underline() {
         guard let text = self.titleLabel?.text else { return }
         let attributedString = NSMutableAttributedString(string: text)
         //NSAttributedStringKey.foregroundColor : UIColor.blue
         attributedString.addAttribute(NSAttributedString.Key.underlineColor, value: self.titleColor(for: .normal)!, range: NSRange(location: 0, length: text.count))
         attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: self.titleColor(for: .normal)!, range: NSRange(location: 0, length: text.count))
         attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: text.count))
         self.setAttributedTitle(attributedString, for: .normal)
       }
   }
//MARK: - LABLE
extension UILabel{
    @IBInspectable var cornerRadius: CGFloat {
       get {
         return layer.cornerRadius
       }
       set {
         layer.cornerRadius = newValue
         layer.masksToBounds = newValue > 0
       }
     }
   
   }

//MARK: - UIView
extension UIView{
    @IBInspectable var cornerRadiusView: CGFloat {
       get {
         return layer.cornerRadius
       }
       set {
         layer.cornerRadius = newValue
         layer.masksToBounds = newValue > 0
       }
     }
    @IBInspectable var borderWid: CGFloat {
      get {
        return layer.borderWidth
      }
      set {
        layer.borderWidth = newValue
      }
    }
    @IBInspectable var borderCol: UIColor? {
      get {
        return UIColor(cgColor: layer.borderColor!)
      }
      set {
        layer.borderColor = newValue?.cgColor
      }
    }

   }

extension UITextField{
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}

extension UIImageView{
    func imageLoad(imageUrl:String)   {
        let url = URL(string:imageUrl)
        self.kf.indicatorType = .activity
        self.kf.setImage(
            with: url,
            placeholder: UIImage(named: ""),
            options: [
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
    }
}
