//
//  RegisterVC.swift
//  Viccomms
//
//  Created by meet sharma on 19/09/23.
//

import UIKit

class RegisterVC: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var btnConfirmPasswordEye: UIButton!
    @IBOutlet weak var btnPasswordEye: UIButton!
    @IBOutlet weak var btnSelectTerm: UIButton!
    @IBOutlet weak var txtFldConfirmPassword: UITextField!
    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    @IBOutlet weak var txtFldFullName: UITextField!
    
    //MARK: - VARIABLE
    
    var viewModel = AuthVM()
    var selectTerm = false
    //MARK: - LIFE CYCLE METHOD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiSet()
    }
    
    //MARK: - STATUBAR STYLE
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - FUNCTIONS
    
    func uiSet(){
        let placeholderFullName = NSAttributedString(string: "Full Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        txtFldFullName.attributedPlaceholder = placeholderFullName
        let placeholderEmail = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        txtFldEmail.attributedPlaceholder = placeholderEmail
        let placeholderPassword = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        txtFldPassword.attributedPlaceholder = placeholderPassword
        
        let placeholderConfirmPassword = NSAttributedString(string: "Confirm Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        txtFldConfirmPassword.attributedPlaceholder = placeholderConfirmPassword
    }
    
    
    //MARK: - ACTIONS
    
    @IBAction func actionSelectTerm(_ sender: UIButton) {
        if sender.isSelected{
            selectTerm = false
        }else{
            selectTerm = true
        }
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func actionPasswordEye(_ sender: UIButton) {
        if sender.isSelected{
            txtFldPassword.isSecureTextEntry = true
        }else{
            txtFldPassword.isSecureTextEntry = false
        }
     
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func actionConfrimPasswordEye(_ sender: UIButton) {
        if sender.isSelected{
            txtFldConfirmPassword.isSecureTextEntry = true
        }else{
            txtFldConfirmPassword.isSecureTextEntry = false
        }
   
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func actionSubmit(_ sender: UIButton) {
        print(selectTerm)
//        if txtFldFullName.text == ""{
//            showSwiftyAlert("", "Enter your full name.", false)
//        }else if txtFldEmail.text == ""{
//            showSwiftyAlert("", "Enter your email.", false)
//        }else if txtFldEmail.isValidEmail(txtFldEmail.text ?? "") == false{
//            showSwiftyAlert("", "Enter your valid email.", false)
//        }else if txtFldPassword.text == ""{
//            showSwiftyAlert("", "Enter your password.", false)
//        }else if txtFldConfirmPassword.text == ""{
//            showSwiftyAlert("", "Enter your confirm password.", false)
//        }else if txtFldConfirmPassword.text != txtFldPassword.text{
//            showSwiftyAlert("", "Corfirm password don't  match.", false)
//        }else if selectTerm == false{
//            showSwiftyAlert("", "Select terms and condition.", false)
//        }else{
           
//            viewModel.signUpApi(fullName: txtFldFullName.text ?? "", email: txtFldEmail.text ?? "", password: txtFldPassword.text ?? "") { data in
//                Store.authKey = data?.token ?? ""
//                Store.fullName = data?.user?.fullname ?? ""
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "LogoutVC") as! LogoutVC
                vc.isSelect = 2
                vc.modalPresentationStyle = .overFullScreen
                self.navigationController?.present(vc, animated: false)
//            }
//
//        }
        
        
    }
    
    @IBAction func actionLogin(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
