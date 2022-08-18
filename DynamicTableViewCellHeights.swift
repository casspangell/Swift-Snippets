//
//  CustomTableViewCell.swift
//
//  Created by Cass Pangell on 8/10/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var statusImage: UIImageView!
    @IBOutlet weak var containerView: UIView!
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
        
    // MARK: Overrides
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

//
//  TableViewController.swift
//
//  Created by Cass Pangell on 8/8/22.
//

import Foundation
import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension // <-- These two are the lines needed
        tableView.estimatedRowHeight = 120                   // for dynamic cell height
    }
    
    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
            
        cell.statusLabel.text = "Status"
        cell.dateLabel.text = "1/1/1990"
        cell.summaryLabel.text = "blah blah blah blah blah blah blah blah h blah blah blah blah blah blah blah"
        return cell
    }
}
