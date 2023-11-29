//
//  CellTableDateHome.swift
//  RestructurePase
//
//  Created by Sergio Guzman Ortiz on 28/11/23.
//

import UIKit

class CellTableDateHome: UITableViewCell{
    
    @IBOutlet weak var diaHora: UILabel!
    @IBOutlet weak var precio: UILabel!
    @IBOutlet weak var tramo: UILabel!
    @IBOutlet weak var ubicacion: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
