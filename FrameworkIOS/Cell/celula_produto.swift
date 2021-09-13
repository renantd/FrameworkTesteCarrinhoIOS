//
//  celula_produto.swift
//  FrameworkIOS
//
//  Created by Renan on 12/09/21.
//

import Foundation
import UIKit


class celula_produto: UITableViewCell {
    
    @IBOutlet weak var ImagemFruta: UIImageView!
    @IBOutlet weak var NomeFruta: UILabel!
    @IBOutlet weak var PrecoFruta: UILabel!
    @IBOutlet weak var BtnComprar: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        BtnComprar.layer.cornerRadius = 5
        BtnComprar.clipsToBounds = true
        
    }

    
}
