//
//  ExchangeViewController.swift
//  MultiSecreenApp
//
//  Created by omar mattr on 15/04/2021.
//

import UIKit

class ExchangeViewController: UIViewController {
    @IBOutlet var tableView:UITableView!

    private var mData = [ DataModel(image: "image3", text1: "omar", text2: "usa", text3: "500$"), DataModel(image: "image2", text1: "omar2", text2: "ksa", text3: "600$"),DataModel(image: "imag1", text1: "omar3", text2: "ksa", text3: "6000$")]
      
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    



}
extension ExchangeViewController :UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int)-> Int {

        return mData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for:indexPath) as? ExchangeTableViewCell
        cell?.text4.text = mData[indexPath.row].image
        cell?.text1.text = mData[indexPath.row].text1
        cell?.text2.text = mData[indexPath.row].text2
        cell?.text3.text = mData[indexPath.row].text3
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableHeader")
        cell?.textLabel?.text = "section1"
        return cell
    }
    
}
