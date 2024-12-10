//
//  LogoutVC.swift
//  Viccomms
//
//  Created by meet sharma on 20/09/23.
//

import UIKit

class LogoutVC: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var btnLogout: UIButton!
    @IBOutlet weak var heightTitle: NSLayoutConstraint!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var lblTitleMsg: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    //MARK: - VARIABLE
    
    var isSelect = 3
    
    //MARK: - LIFE CYCLE METHOD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiSet()
    }
    
    //MARK: - STATUBAR STYLE
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - FUNCTION
    
    func uiSet(){
        
        if isSelect == 0{
            lblTitle.text = "Logout"
            heightTitle.constant = 38
            lblTitleMsg.text = "Are you sure you want to log out of your\n account?"
            btnLogout.setTitle("Logout", for: .normal)
            btnCancel.isHidden = false
            
        }else if isSelect == 1{
            lblTitle.text = "Verification"
            heightTitle.constant = 76
            lblTitleMsg.text = "To complete your account setup, please\n verify your email address. We’ve sent a\n verification link to the email you\n provided."
            btnLogout.setTitle("Okay", for: .normal)
            btnCancel.isHidden = true
            
        }else if isSelect == 2{
            lblTitle.text = "Registration"
            heightTitle.constant = 76
            lblTitleMsg.text = "Please check your email inbox for a\n verification link. Click the link to confirm\n your email address and complete the\n registration process."
            btnLogout.setTitle("Okay", for: .normal)
            btnCancel.isHidden = true
            
        }else{
            lblTitle.text = "Forgot Password"
            heightTitle.constant = 38
            lblTitleMsg.text = "An email with password reset instructions\n has been sent."
            btnLogout.setTitle("Okay", for: .normal)
            btnCancel.isHidden = true
        }
    }
    
    //MARK: - ACTIONS
    
    @IBAction func actionSubmit(_ sender: UIButton) {
        
         if isSelect == 2{
            SceneDelegate().setLoginRoot()
        }else if isSelect == 0{
            Store.authKey = ""
            SceneDelegate().setLoginRoot()
        }else if isSelect == 1{
            SceneDelegate().setCategoryRoot()
        }
        else{
            self.dismiss(animated: false)
        }
        
    }
    
    @IBAction func actionCancel(_ sender: UIButton) {
        
        self.dismiss(animated: false)
    }
    
    
}
