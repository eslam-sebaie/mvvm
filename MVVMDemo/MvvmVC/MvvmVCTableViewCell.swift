//
//  MvvmVC+TableViewCell.swift
//  MVVMDemo
//
//  Created by Eslam Sebaie on 10/26/20.
//

import UIKit

class MvvmVCTableViewCell: UITableViewCell {

    @IBOutlet weak var songView: UIView!
    @IBOutlet weak var songName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
