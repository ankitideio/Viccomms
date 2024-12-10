//
//  ViewController.swift
//  Viccomms
//
//  Created by meet sharma on 19/09/23.
//

import UIKit

class LoginVC: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var btnEye: UIButton!
    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    
    //MARK: - VARIABLE
    
    var viewModel = AuthVM()
    
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
        let placeholderEmail = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        txtFldEmail.attributedPlaceholder = placeholderEmail
        let placeholderPassword = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        txtFldPassword.attributedPlaceholder = placeholderPassword
    }
    
    //MARK: - ACTIONS
    
    @IBAction func actionForgotPassword(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordVC") as! ForgotPasswordVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func actionBtnEye(_ sender: UIButton) {
       
        if sender.isSelected{
            txtFldPassword.isSecureTextEntry = true
        }else{
            txtFldPassword.isSecureTextEntry = false
        }
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func actionSubmit(_ sender: UIButton) {
//        if txtFldEmail.text == ""{
//            showSwiftyAlert("", "Enter your email.", false)
//        }else if txtFldEmail.isValidEmail(txtFldEmail.text ?? "") == false{
//            showSwiftyAlert("", "Enter your valid email.", false)
//        }else if txtFldPassword.text == ""{
//            showSwiftyAlert("", "Enter your password", false)
//        }else{
            
           
//            viewModel.loginApi(email: txtFldEmail.text ?? "", password: txtFldPassword.text ?? "") { data in
                
//                Store.fullName = data?.user?.fullname ?? ""
//                Store.authKey = data?.token ?? ""
//                if data?.user?.isEmailVerify == true{
//                    SceneDelegate().checkUserExist()
//                }else{
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "LogoutVC") as! LogoutVC
                    vc.isSelect = 1
                    vc.modalPresentationStyle = .overFullScreen
                    self.navigationController?.present(vc, animated: false)
//                }
              
//            }
//        }
       
    }
    
    @IBAction func actionRegister(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RegisterVC") as! RegisterVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

