//
//  Filme.swift
//  mymovies
//
//  Created by Gilberto Masetto on 26/11/19.
//  Copyright © 2019 Gilberto Masetto. All rights reserved.
//

import UIKit

class Filme {
    
    var titulo: String!
    var descricao: String!
    var imagem: UIImage
    
    init(titulo: String, descricao: String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
