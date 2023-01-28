//
//  ViewController.swift
//  Checkwork
//
//  Created by Yuki Kuwashima on 2023/01/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    var items = ["ぶどう", "りんご", "パイナップル"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.table.delegate = self
        self.table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    @IBAction func add() {
        self.items.append("いちご")
        self.table.reloadData()
    }
}

