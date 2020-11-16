//
//  MvvmVC+TableView.swift
//  MVVMDemo
//
//  Created by Eslam Sebaie on 10/24/20.
//

import Foundation
import UIKit
extension MvvmVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        determineSongTable(heightNumber: 60 + (arrOfTitles.count * 60))
        return arrOfTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MvvmVCTableViewCell
        dessignTableCell(cell, indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    
    
}
extension MvvmVC: UITableViewDelegate {}
