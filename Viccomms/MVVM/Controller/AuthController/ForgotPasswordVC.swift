//
//  ForgotPasswordVC.swift
//  Viccomms
//
//  Created by meet sharma on 19/09/23.
//

import UIKit

class ForgotPasswordVC: UIViewController {
    
    //MARK: - OUTLETS
    
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
        
    }
    
    @IBAction func actionBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    //MARK: - ACTION
    
    @IBAction func actionSend(_ sender: UIButton) {
//        if txtFldEmail.text == ""{
//            showSwiftyAlert("", "Enter your email.", false)
//        }else if txtFldEmail.isValidEmail(txtFldEmail.text ?? "") == false{
//            showSwiftyAlert("", "Enter valid email.", false)
//        }else{
//            viewModel.forgotPasswordApi(email: txtFldEmail.text ?? "") { data in
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "LogoutVC") as! LogoutVC
                vc.isSelect = 3
                vc.modalPresentationStyle = .overFullScreen
                self.navigationController?.present(vc, animated: false)
//            }
//            
//        }
    }
    
    
    
}
