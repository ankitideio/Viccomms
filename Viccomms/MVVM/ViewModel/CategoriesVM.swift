//
//  CategoriesVM.swift
//  Viccomms
//
//  Created by meet sharma on 20/09/23.
//

import Foundation


class CategoriesVM{
    
    //MARK: - CATEGORIES LIST API
    
    func categoriesListApi(onSuccess:@escaping((CategoriesData?)->())){
        WebService.service(API.categoryList,service: .get,is_raw_form: true) { (model:CategoriesModel,josnData,jsonSer) in
            onSuccess(model.data)
        }
    }
}
