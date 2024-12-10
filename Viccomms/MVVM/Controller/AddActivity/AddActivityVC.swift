//
//  AddActivityVC.swift
//  Viccomms
//
//  Created by meet sharma on 20/09/23.
//

import UIKit

class AddActivityVC: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var imgVwAddPhoto: UIImageView!
    @IBOutlet weak var txtFldActivityName: UITextField!
    
    //MARK: - VARIABLES
    
    var categoryId = ""
    var uploadImg = false
    var viewModel = ActivityVM()
    var callBack:(()->())?
    
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
        
        let placeholderActivity = NSAttributedString(string: "Activity Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        txtFldActivityName.attributedPlaceholder = placeholderActivity
    }
    
    //MARK: - ACTION
    
    @IBAction func actionBack(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionAddImage(_ sender: UIButton) {
        ImagePicker().pickImage(self){ image in
            self.imgVwAddPhoto.image = image
            self.uploadImg = true
        }
    }
    
    @IBAction func actionAdd(_ sender: UIButton) {
//        if txtFldActivityName.text == "" {
//            showSwiftyAlert("", "Enter activity name.", false)
//        }else if uploadImg == false{
//            showSwiftyAlert("", "Upload acitivity image", false)
//        }else{
//            viewModel.addActivityApi(categoryId: categoryId, activityName: txtFldActivityName.text ?? "", image: imgVwAddPhoto) {
//                self.navigationController?.popViewController(animated: true)
//                self.callBack?()
//            }
//        }
    }
    
}
