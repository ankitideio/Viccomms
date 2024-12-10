//
//  ProfileVM.swift
//  Viccomms
//
//  Created by meet sharma on 21/09/23.
//

import Foundation

class ProfileVM{
    
    //MARK: - GET PROFILE API
    
    func getProfileApi(onSuccess:@escaping((ProfileData?)->())){
        WebService.service(API.getProfile,service: .get,is_raw_form: true) { (model:ProfileModel,jsonData,jsonSer) in
            onSuccess(model.data)
        }
    }
}
