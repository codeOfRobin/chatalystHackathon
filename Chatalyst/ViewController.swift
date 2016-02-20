//
//  ViewController.swift
//  Chatalyst
//
//  Created by Robin Malhotra on 20/02/16.
//  Copyright © 2016 Robin Malhotra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    let leftMessages = ["hekhsdkhvbdfksbvjdfsbv s","asdkjfhaksdfnkdsuc","asdkfjhskdafnkasdfnksadf","sad;fkjlsadfmclaweicwleimlvimelvmlsdmivlemkefldsmxvlewmvler"]
    let rightMessages = ["asd,jfbkasjdfunvjunvekufdnvusidf","ljdsfnglmdflkvd","asdkhfkwdjsfweufjnkewuncksdjnvkfdv"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(leftCell.self, forCellReuseIdentifier: "leftCell")
        tableView.registerClass(rightCell.self, forCellReuseIdentifier: "rightCell")
        tableView.separatorStyle = .None
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leftMessages.count + rightMessages.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var identifier: String
        if (indexPath.row%2 == 0)
        {
            identifier = "leftCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as! leftCell
            cell.messageLabel.text = leftMessages[indexPath.row/2]
            
            return cell
        }
        else
        {
            identifier = "rightCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as! rightCell
            cell.messageLabel.text = rightMessages[indexPath.row/2]
            return cell
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

