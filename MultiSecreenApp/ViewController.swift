//
//  ViewController.swift
//  MultiSecreenApp
//
//  Created by omar mattr on 06/04/2021.
//

import UIKit

private var mData = [ DataModel(image: "imag1", text1: "omar", text2: "usa", text3: "500$"), DataModel(image: "image2", text1: "omar2", text2: "ksa", text3: "600$")]

class ViewController: UIViewController {
  
    @IBOutlet var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }


}

extension ViewController :UITableViewDelegate,UITableViewDataSource{
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
struct DataModel {
    var image:String
    var text1:String
    var text2:String
    var text3:String
}

