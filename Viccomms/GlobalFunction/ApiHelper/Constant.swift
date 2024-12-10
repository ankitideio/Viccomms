//
//  Constant.swift
//  Viccomms
//
//  Created by meet sharma on 19/09/23.
//

import Foundation
import UIKit


//MARK: - URL + KEYS

let baseURL = "http://13.126.130.183/v1/"

public typealias parameters = [String:Any]

var noInternetConnection = "No Internet Connection Available"
var appName = "Viccomms"


//MARK: - STORE FILE
enum DefaultKeys: String{
    case authKey
    case userDetails
    case autoLogin
    case deviceToken
    case Authorization
    case fullName

}


//MARK: API - SERVICES
enum Services: String
{
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

//MARK: API - ENUM
enum API: String
{
    //MARK: API - USER
    case signUp = "auth/signUp"
    case login = "auth/login"
    case forgotPassword = "auth/forgotPassword"
    case categoryList = "user/category/getCategory"
    case addActivity = "user/activity/addActivity"
    case getActivity = "user/activity/getActivityByCategoriesId"
    case getProfile = "user/myProfile"
   
}
enum dateFormat: String {
    case fullDate = "MM_dd_yy_HH:mm:ss.SS"
    case DateAndTime = "dd/M/yyyy hh:mm a"
   
}

enum constantMessages:String{
    
    case internetError = "Please check your internet connectivity"

    var instance : String {
        return self.rawValue
    }
}
