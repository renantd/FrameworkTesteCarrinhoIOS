//
//  ProdutoTableViewController.swift
//  FrameworkIOS
//
//  Created by Renan on 12/09/21.
//

import UIKit

class celula_produto2: UITableViewCell {
    
    @IBOutlet weak var ImagemFruta: UIImageView!
    @IBOutlet weak var NomeFruta: UILabel!
    @IBOutlet weak var PrecoFruta: UILabel!
    @IBOutlet weak var BtnComprar: UIButton!
    

}

class ProdutoTableViewController: UITableViewController{
    
    var dados: [String] = ["Abacaxi","Banana","Maça","Manga","Pera"]
    var produtos = [Produto(nomeProduto: "Maçã",    precoFruta: 0.98, imagemFruta: "maca200"),
                    Produto(nomeProduto: "Banana",  precoFruta: 0.98, imagemFruta: "banana200"),
                    Produto(nomeProduto: "Pêra",    precoFruta: 0.98, imagemFruta: "pera200"),
                    Produto(nomeProduto: "Abacaxi", precoFruta: 0.98, imagemFruta: "abacaxi200"),
                    Produto(nomeProduto: "Manga",   precoFruta: 0.98, imagemFruta: "manga200")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return produtos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso  = "celulaDeReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso , for: indexPath) as! celula_produto
        
        
        let cesta = produtos[indexPath.row]
        celula.NomeFruta.text = cesta.nomeProduto
        celula.PrecoFruta.text = String(cesta.precoFruta)
        celula.ImagemFruta.image = UIImage(named: cesta.imagemFruta)
        
        return celula
    }
}
