//
//  CadastroViewController.swift
//  ColetaAi
//
//  Created by student on 04/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var nome_Usuario: UITextField!
    @IBOutlet weak var sobrenome_Usuario: UITextField!
    @IBOutlet weak var telefone_Usuario: UITextField!
    @IBOutlet weak var cep_Usuario: UITextField!
    @IBOutlet weak var email_Usuario: UITextField!
    @IBOutlet weak var senha_Usuario: UITextField!
    @IBOutlet weak var confirmacao_senha_Usuario: UITextField!
    
    
    
    @IBAction func criar_Conta(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
