//
//  ActivityVM.swift
//  Viccomms
//
//  Created by meet sharma on 20/09/23.
//

import Foundation
import UIKit

class ActivityVM{
    
    //MARK: - ADD ACTIVITY API
    
    func addActivityApi(categoryId:String,activityName:String,image:UIImageView,onSuccess:@escaping(()->())){
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat.fullDate.rawValue
        let date = formatter.string(from: Date())
        let imageInfo : ImageStructInfo
        imageInfo = ImageStructInfo.init(fileName: "Img\(date).jpeg", type: "jpeg", data: image.image?.toData() ?? Data(), key: "image")
      
        let param: parameters = ["categoriesId":categoryId,"activityName":activityName,"image":imageInfo]
        WebService.service(API.addActivity,param: param,service: .post,is_raw_form: false) { (model:AuthModel,jsonData,jsonSer) in
            onSuccess()
        }
    }
    
    //MARK: - GET ACTIVITY API
    
    func getActivityApi(categoryId:String,onSuccess:@escaping((ActivityData?)->())){
        WebService.service(API.getActivity,urlAppendId: categoryId,service: .get,is_raw_form: true) { (model:ActivityModel,jsonData,jsonSer) in
            onSuccess(model.data)
        }
    }
}
