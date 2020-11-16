//
//  ViewController.swift
//  MVVMDemo
//
//  Created by Eslam Sebaie on 10/24/20.
//

import UIKit

class MvvmVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var mainView: UIView!
    
    var viewModel = ViewModelToView()
    var arrOfTitles = [MvvmModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        viewModel.delegate = self
        
        //Mark:- using MVVM With Clousure.
        fetchDataByClousure()
        
        //Mark:- using MVVM With protocol.
        fetchDataByProtocol()
    }
   
    
    func fetchDataByClousure(){
        viewModel.FetchData { (titlesArray) in
            self.arrOfTitles = titlesArray
            print(self.arrOfTitles)
            self.tableView.reloadData()
        }
    }
    
    func fetchDataByProtocol(){
        viewModel.sendDelegateData()
    }

    
}

extension MvvmVC: mvvmDemoDelegate {
    func send(model: [MvvmModel]) {
        arrOfTitles = model
    }
}



