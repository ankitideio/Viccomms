//
//  AuthVM.swift
//  Viccomms
//
//  Created by meet sharma on 20/09/23.
//

import Foundation

class AuthVM{
    
    //MARK: - SIGNUP API
    
    func signUpApi(fullName:String,email:String,password:String,onSuccess:@escaping((AuthData?)->())){
        let param:parameters = ["fullname":fullName,"email":email,"password":password,"confirmPassword":password,"fcmToken":"ios"]
        WebService.service(API.signUp,param: param,service: .post,is_raw_form: true) { (model:AuthModel,jsonData,jsonSer) in
            onSuccess(model.data)
        }
    }
    
    //MARK: - LOGIN API
    
    func loginApi(email:String,password:String,onSuccess:@escaping((AuthData?)->())){
        let param:parameters = ["email":email,"password":password,"fcmToken":"ios"]
        WebService.service(API.login,param: param,service: .post,is_raw_form: true) { (model:AuthModel,jsonData,jsonSer) in
            onSuccess(model.data)
        }
    }
    
    //MARK: - FORGOT PASSWORD API
    
    func forgotPasswordApi(email:String,onSuccess:@escaping((AuthData?)->())){
        let param:parameters = ["email":email]
        WebService.service(API.forgotPassword,param: param,service: .post,is_raw_form: true) { (model:AuthModel,jsonData,jsonSer) in
            onSuccess(model.data)
        }
    }
    
}
