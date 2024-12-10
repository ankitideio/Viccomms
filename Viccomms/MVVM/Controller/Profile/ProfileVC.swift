//
//  ProfileVC.swift
//  Viccomms
//
//  Created by meet sharma on 20/09/23.
//

import UIKit

class ProfileVC: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var lblFirstDigitName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    //MARK: - VARIABLE
    
    var viewModel = ProfileVM()
    
    //MARK: - LIFE CYCLE METHOD
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        profileApi()
    }
    
    //MARK: - STATUBAR STYLE
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - FUNCTIONS
    
    func profileApi(){
        viewModel.getProfileApi { data in
            self.lblName.text = data?.user?.fullname ?? ""
            self.lblEmail.text = data?.user?.email ?? ""
            let inputString = data?.user?.fullname ?? ""
            if let firstCharacter = inputString.first {
                self.lblFirstDigitName.text = String(firstCharacter)
            } else {
                self.lblFirstDigitName.text = ""
            }
        }
        
    }
    
    
    //MARK: - ACTIONS
    
    @IBAction func actionBack(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionLogout(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LogoutVC") as! LogoutVC
        vc.isSelect = 0
        vc.modalPresentationStyle = .overFullScreen
        self.navigationController?.present(vc, animated: false)
    }
    
    
}
