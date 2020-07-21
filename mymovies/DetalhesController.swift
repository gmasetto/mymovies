//
//  DetalhesController.swift
//  mymovies
//
//  Created by Gilberto Masetto on 28/11/19.
//  Copyright © 2019 Gilberto Masetto. All rights reserved.
//

import Foundation
import UIKit

class DetalhesController: UIViewController {
    
    
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var tituloFilme: UILabel!
    @IBOutlet weak var descricaoFilme: UILabel!
    
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = filme.imagem
        tituloFilme.text = filme.titulo
        descricaoFilme.text = filme.descricao
    }
}


