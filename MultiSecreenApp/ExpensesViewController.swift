//
//  ExpensesViewController.swift
//  MultiSecreenApp
//
//  Created by omar mattr on 14/04/2021.
//

import UIKit
private var mData = [ DataModel(image: "image3", text1: "omar", text2: "usa", text3: "500$"), DataModel(image: "image2", text1: "omar2", text2: "ksa", text3: "600$"),DataModel(image: "imag1", text1: "omar3", text2: "ksa", text3: "6000$")]
  
  
class ExpensesViewController: UIViewController {
    @IBOutlet var tableView:UITableView!
    @IBOutlet weak var whenIndexChange: UISegmentedControl!
    @IBAction func indexChanged(_ sender: Any) {
        switch whenIndexChange.selectedSegmentIndex
           {
           case 0:
            text.text = "First Segment Selected"
            mData = [ DataModel(image: "image2", text1: "omar", text2: "usa", text3: "500$"), DataModel(image: "imag1", text1: "omar2", text2: "ksa", text3: "600$"),DataModel(image: "image3", text1: "omar3", text2: "ksa", text3: "6000$")]
            tableView.reloadData()
           case 1:
            text.text = "Second Segment Selected"
           mData =  [ DataModel(image: "image4", text1: "omar4", text2: "usa", text3: "500$"), DataModel(image: "image3", text1: "omar5", text2: "ksa", text3: "600$"),DataModel(image: "image2", text1: "omar6", text2: "ksa", text3: "6000$")]
            tableView.reloadData()

        case 2:
         text.text = "Second Segment Selected"
        mData =  [ DataModel(image: "image2", text1: "omar7", text2: "usa", text3: "500$"), DataModel(image: "image3", text1: "omar8", text2: "ksa", text3: "600$"),DataModel(image: "image4", text1: "omar9", text2: "ksa", text3: "6000$")]
            tableView.reloadData()
           default:
               break
           }
    }
    @IBOutlet weak var text: UILabel!
  
    

}
extension ExpensesViewController :UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int)-> Int {

        return mData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for:indexPath) as? HomeTableViewCell
        cell?.mImage.image = UIImage(named: mData[indexPath.row].image)
        cell?.mLabel1.text = mData[indexPath.row].text1
        cell?.mLabel2.text = mData[indexPath.row].text2
        cell?.mLabel3.text = mData[indexPath.row].text3
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableHeader")
        cell?.textLabel?.text = "section1"
        return cell
    }
    
}
