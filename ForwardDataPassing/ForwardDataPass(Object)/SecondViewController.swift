//
//  SecondViewController.swift
//  ForwardDataPass(Object)
//
//  Created by Mac on 21/09/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var container : [Student] = []
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerAnXIB()

        
    }
    func registerAnXIB(){
        let uiNib = UINib(nibName: "StudentableViewCell", bundle: nil)
        myTableView.register(uiNib, forCellReuseIdentifier: "StudentableViewCell")
    }

}
extension SecondViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        container.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var studentTableViewCell = self.myTableView.dequeueReusableCell(withIdentifier: "StudentableViewCell", for: indexPath) as! StudentableViewCell
        
        studentTableViewCell.firstNameLabel.text = container[indexPath.row].firstName
        studentTableViewCell.lastNameLabel.text = container[indexPath.row].lastaname
        studentTableViewCell.rollNumberLabel.text = String(container[indexPath.row].rollNumber)
        
        
        
       return studentTableViewCell
    }
    
    
}
extension SecondViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    200
    }
}
