//
//  InfoCell.swift
//  Tremor
//
//  Created by adham ragap on 28/06/2022.
//

import UIKit

class InfoCell: UITableViewCell {
    @IBOutlet weak var pageImage: UIImageView!
    @IBOutlet weak var hyperLink: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
