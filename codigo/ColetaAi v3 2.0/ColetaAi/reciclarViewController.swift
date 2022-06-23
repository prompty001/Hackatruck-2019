//
//  reciclarViewController.swift
//  ColetaAi
//
//  Created by student on 08/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class reciclarViewController: UIViewController {
    @IBOutlet weak var resposta: UILabel!
    @IBOutlet weak var botaoVerificarLixeira: UIButton!
    
    @IBAction func calcularLixeira(_ sender: Any) {
        ColetaDAO.getColeta{(coleta) in
            let dist = String(describing: coleta.distancia)
            
            if dist < "13.5"{
                self.resposta.text = "A Lixeira Está Cheia"
            
            } else{
                self.resposta.text = "A Lixeira Está Vazia"
            }
            
        }
    }
        

}

