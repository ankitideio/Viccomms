//
//  CategoriesVC.swift
//  Viccomms
//
//  Created by meet sharma on 19/09/23.
//

import UIKit

class CategoriesVC: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tblVwCategories: UITableView!
    
    //MARK: - VARIABLE
    
    var viewModel = CategoriesVM()
    var arrCategories = [Category]()
    var arrCategory = ["Shelter","GPS","Sector_S1B1","Sector_S3B2","uWave B facing Briagolong","Non Standard FPQ Items","uWave D facing Stratford Town"]
    //MARK: - LIFE CYCLE METHOD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        categoriesListApi()
    }
    
    //MARK: - STATUBAR STYLE
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - FUNCTION
    
    func categoriesListApi(){
        let inputString = Store.fullName ?? ""
        if let firstCharacter = inputString.first {
            lblTitle.text = String(firstCharacter)
        } else {
            lblTitle.text = ""
        }
        viewModel.categoriesListApi { data in
            self.arrCategories = data?.categories ?? []
            self.tblVwCategories.reloadData()
        }
    }
    
    //MARK: - ACTION
    
    @IBAction func actionProfile(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}

//MARK: - TABLEVIEW DELEGATE AND DATASOURCE

extension CategoriesVC:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrCategory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tblVwCategories.dequeueReusableCell(withIdentifier: "CategoriesTVC", for: indexPath) as! CategoriesTVC
        cell.lblCategories.text = arrCategory[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 55
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ActivityListVC") as! ActivityListVC
//        vc.activityName = arrCategories[indexPath.row].categoryName ?? ""
//        vc.categoryId = arrCategories[indexPath.row].id ?? ""
        vc.activityName = arrCategory[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
