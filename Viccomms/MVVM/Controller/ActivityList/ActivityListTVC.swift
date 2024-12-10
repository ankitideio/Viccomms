//
//  ActivityListTVC.swift
//  Viccomms
//
//  Created by meet sharma on 19/09/23.
//

import UIKit

class ActivityListTVC: UITableViewCell {

    //MARK: - OUTLETS
    
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var vwStatus: UIView!
    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var lblActivity: UILabel!
    @IBOutlet weak var imgVwActivity: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
