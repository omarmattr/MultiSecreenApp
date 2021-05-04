//
//  SearchViewController.swift
//  MultiSecreenApp
//
//  Created by omar mattr on 15/04/2021.
//

import UIKit

class SearchViewController: UIViewController {
    private var mData = [ DataModel(image: "imag1", text1: "omar", text2: "Usa", text3: "500$"), DataModel(image: "image2", text1: "omar2", text2: "ksa", text3: "600$"),DataModel(image: "image4", text1: "omar3", text2: "ksa", text3: "6000$")]
    private var newData : [DataModel]!
    @IBOutlet var tableView : UITableView!
    @IBOutlet var searchView: UISearchBar!
    @IBOutlet var text :UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        newData = mData

        // Do any additional setup after loading the view.
    }
    
}
extension SearchViewController : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
      
        newData =   mData.filter{
            return $0.text1.contains(searchText)
        }
        tableView.reloadData()
        
    }
}

extension SearchViewController :UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int)-> Int {

        return newData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath) as? SearchTableViewCell
    
        cell?.img.image = UIImage(named: newData[indexPath.row].image)
        cell?.tiltle.text = newData[indexPath.row].text1
        return  cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableHeader")
        cell?.textLabel?.text = "section1"
        return cell
    }
    
}
