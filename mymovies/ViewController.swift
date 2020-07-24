//
//  ViewController.swift
//  mymovies
//
//  Created by Gilberto Masetto on 26/11/19.
//  Copyright © 2019 Gilberto Masetto. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createMovies()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheFilme" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesController
                viewControllerDestino.filme = filmeSelecionado
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filmes.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme: Filme = filmes[indexPath.row]
        let nameCelula = "cellMovies"
           
        let celula = tableView.dequeueReusableCell(withIdentifier: nameCelula, for: indexPath) as! FilmeCelula
        celula.filmeImageView.image = filme.imagem
        celula.descricaoLabel.text = filme.descricao
        celula.tituloLabel.text = filme.titulo
           
        return celula
    }
    
    func createMovies() {
        var filme: Filme
        
        filme = Filme(titulo: "Filme 1", descricao: "Descricao 1", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append(filme)
        filme = Filme(titulo: "Filme 2", descricao: "Descricao 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        filme = Filme(titulo: "Filme 3", descricao: "Descricao 3", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append(filme)
        filme = Filme(titulo: "Filme 4", descricao: "Descricao 4", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        filme = Filme(titulo: "Filme 5", descricao: "Descricao 5", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)
        filme = Filme(titulo: "Filme 6", descricao: "Descricao 6", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        filme = Filme(titulo: "Filme 7", descricao: "Descricao 7", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append(filme)
        filme = Filme(titulo: "Filme 8", descricao: "Descricao 8", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append(filme)
    }
}

