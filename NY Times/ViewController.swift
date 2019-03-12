//
//  ViewController.swift
//  NY Times
//
//  Created by sourav on 12/03/19.
//  Copyright © 2019 sourav. All rights reserved.
//

import UIKit

fileprivate let reuseCellID = "NewsCellID"

class ViewController: UIViewController {

    @IBOutlet var newsTableView: UITableView!
    var newsArray: [NewsModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.getNewsAPI()
    }
    
    func getNewsAPI(){
        API.shared.getNewsList(success: { (response) in
            self.newsArray = response
            self.newsTableView.reloadData()
            print(response)
        },failure: {error in
            print(error)
        })
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseCellID, for: indexPath) as! NewsCell
        let news = newsArray![indexPath.row]
        cell.newsHeaderLabel.text = news.description
        cell.newsAuthorLabel.text = news.author
        cell.newsDateLabel.text = news.date
        return cell
    }
    
}

