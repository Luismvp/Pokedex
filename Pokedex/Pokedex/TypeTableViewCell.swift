//
//  TypeTableViewCell.swift
//  Pokedex
//
//  Created by Luis Martin de Vidales Palomero on 02/11/2018.
//  Copyright © 2018 UPM. All rights reserved.
//

import UIKit

class TypeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var numero: UILabel!
    @IBOutlet weak var icono: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
