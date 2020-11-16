//
//  MvvmVC+UpdateUI.swift
//  MVVMDemo
//
//  Created by Eslam Sebaie on 10/26/20.
//

import Foundation
import UIKit
extension MvvmVC {
    
    func updateUI(){
        determineSongTable(heightNumber: 55)
        setupViews(mainView)
    }
   
    func setupViews(_ view: UIView){
        view.layer.cornerRadius = 16
        view.layer.masksToBounds = true
        view.dropShadow()
    }

    func dessignTableCell(_ cell: MvvmVCTableViewCell, _ index: IndexPath) {
        cell.songView.layer.cornerRadius = 16
        cell.layer.masksToBounds = true
        cell.songName.text = arrOfTitles[index.row].title
    }
    
    func determineSongTable(heightNumber:Int){
        for cons in mainView.constraints {
           if cons.identifier == "tableHeight" {
               cons.constant = CGFloat(heightNumber)
           }
       }
         mainView.layoutIfNeeded()
    }
}
