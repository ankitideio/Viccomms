//
//  ViewActivityImageVC.swift
//  Viccomms
//
//  Created by meet sharma on 20/09/23.
//

import UIKit

class ViewActivityImageVC: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var imgVwActivity: UIImageView!
    
    //MARK: - VARIABLE
    
    var image = ""
    
    //MARK: - LIFE CYCLE METHOD
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        imgVwActivity.imageLoad(imageUrl: image)
        
    }
    
    //MARK: - STATUBAR STYLE
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    //MARK: - ACTION
    
    @IBAction func actionCross(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
    
    
}
