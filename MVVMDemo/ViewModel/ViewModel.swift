//
//  View.swift
//  MVVMDemo
//
//  Created by Eslam Sebaie on 10/24/20.
//

import Foundation
protocol mvvmDemoDelegate {
    func send(model: [MvvmModel])
}
class ViewModelToView {
    
    var delegate: mvvmDemoDelegate?
    var titles = [MvvmModel(title: "Amr Diab"), MvvmModel(title: "Eslam Sebaie")]
    
    func sendDelegateData(){
        self.delegate?.send(model: titles)
    }

    func FetchData(Sucess: @escaping ([MvvmModel]) -> Void){
        Sucess(titles)
    }
    
    
    
}
