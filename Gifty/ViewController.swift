//
//  ViewController.swift
//  Gifty
//
//  Created by Lizeth OLARTE on 12/01/2017.
//  Copyright © 2017 lizetho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var profileImage: UIImageView!
  @IBOutlet weak var giftTableView: UITableView!
  @IBOutlet weak var profileName: UILabel!
  
  let data = ["informatique", "musique", "cadeaux"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    //init profile name and photo
    profileName.text = "LizethO"
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "giftCellView", for: indexPath)
    tableViewCell.textLabel?.text = data[indexPath.row].firstLetterCapitalized()
    
    return tableViewCell
    
    
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  
}

extension String{
  func firstLetterCapitalized() -> String {
    return String(describing: self.uppercased().characters.first!) + String(self.lowercased().characters.dropFirst())
    
  }
}
