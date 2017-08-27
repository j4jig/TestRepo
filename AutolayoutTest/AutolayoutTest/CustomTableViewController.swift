//
//  CustomTableViewController.swift
//  AutolayoutTest
//
//  Created by gaurav sharma on 23/08/17.
//  Copyright © 2017 gaurav sharma. All rights reserved.
//

import UIKit

class CustomTableViewController: UIViewController {

    @IBOutlet weak var tableViewObj: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewObj.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

extension CustomTableViewController:UITableViewDelegate
{

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    
        return 40;
    
    }
    
    public func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat{
        return UITableViewAutomaticDimension
    }
    
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return UITableViewAutomaticDimension
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableViewObj.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        cell.dataLabel.text = "Gaurav asdfjhaksdf asdfjhasddfjl  asdjkfh asdhfasjdfh asjkdfhajksdfha  asdfjhasdfj hajksdfh asdfh dasjkdfh h ."
        
        return cell
    }
}


extension CustomTableViewController:UITableViewDataSource
{
    
}
