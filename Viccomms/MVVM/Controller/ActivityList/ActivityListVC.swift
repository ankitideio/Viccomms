//
//  ActivityListVC.swift
//  Viccomms
//
//  Created by meet sharma on 19/09/23.
//

import UIKit

struct ActivityList{
    var name:String?
    var status:String?
    var color:UIColor?
    init(name: String? = nil, status: String? = nil, color: UIColor? = nil) {
        self.name = name
        self.status = status
        self.color = color
    }
}
class ActivityListVC: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var lblDataFound: UILabel!
    @IBOutlet weak var tblVwActivity: UITableView!
    @IBOutlet weak var lblActivityName: UILabel!
    
    //MARK: - VARIABLES
    
    var viewModel = ActivityVM()
    var activityName = String()
    var categoryId = ""
    var arrActivity = [ActivityList]()
    
    //MARK: - LIFE CYCLE METHOD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       uiSet()
    }
    
    //MARK: - STATUBAR STYLE
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - FUNCTION
    
    func uiSet(){
        arrActivity.append(ActivityList(name: "Activity 1",status: "Pending",color: UIColor(red: 255/255, green: 199/255, blue: 0/255, alpha: 1.0)))
        arrActivity.append(ActivityList(name: "Activity 2",status: "Approved",color: UIColor(red: 255/255, green: 199/255, blue: 0/255, alpha: 1.0)))
        arrActivity.append(ActivityList(name: "Activity 3",status: "Reject",color: UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)))
        arrActivity.append(ActivityList(name: "Activity 4",status: "NA",color: UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)))
//        viewModel.getActivityApi(categoryId: categoryId) { data in
//            if data?.activities?.count ?? 0 > 0 {
//                self.lblDataFound.text = ""
//            }else{
//                self.lblDataFound.text = "No Data Found"
//            }
//            self.arrActivity = data?.activities ?? []
//            self.tblVwActivity.reloadData()
//
//        }
//        lblActivityName.text = activityName
        
        
    }
    
    //MARK: - ACTIONS
    
    @IBAction func actionBack(_ sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionAddBtn(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "AddActivityVC") as! AddActivityVC
        vc.categoryId = self.categoryId
        vc.callBack = {
            self.uiSet()
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

//MARK: - TABLEVIEW DELEGATE AND DATASOURCE

extension ActivityListVC:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrActivity.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityListTVC", for: indexPath) as! ActivityListTVC
        cell.lblActivity.text = arrActivity[indexPath.row].name
        cell.lblStatus.text = arrActivity[indexPath.row].status
        cell.vwStatus.backgroundColor = arrActivity[indexPath.row].color
        //        cell.imgVwActivity.imageLoad(imageUrl: arrActivity[indexPath.row].image ?? "")
//        if arrActivity[indexPath.row].isStatus == 1{
//            cell.lblStatus.text = "Pending"
//            cell.vwStatus.backgroundColor = UIColor(red: 255/255, green: 199/255, blue: 0/255, alpha: 1.0)
//        }else if arrActivity[indexPath.row].isStatus == 2{
//            cell.lblStatus.text = "Accept"
//            cell.vwStatus.backgroundColor = UIColor(red: 108/255, green: 255/255, blue: 95/255, alpha: 1.0)
//        }else if arrActivity[indexPath.row].isStatus == 3{
//            cell.lblStatus.text = "Reject"
//            cell.vwStatus.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)
//        }else{
//            cell.lblStatus.text = "NA"
//            cell.vwStatus.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)
//        }
//        let dateString = arrActivity[indexPath.row].createdAt ?? ""
//        let dateFormatter = DateFormatter()
//
//        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
//
//        if let date = dateFormatter.date(from: dateString) {
//
//            let outputDateFormatter = DateFormatter()
//            outputDateFormatter.dateFormat = "dd MMM yyyy, h:mm a"
//            outputDateFormatter.locale = Locale.current
//            let formattedDate = outputDateFormatter.string(from: date)
//            cell.lblDate.text = formattedDate
//        } else {
//            print("Invalid date format")
//        }


        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewActivityImageVC") as! ViewActivityImageVC
        vc.modalPresentationStyle = .overFullScreen
//        vc.image = arrActivity[indexPath.row].image ?? ""
        self.navigationController?.present(vc, animated: true)
    }
    
}
