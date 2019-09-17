//
//  ViewController.swift
//  Notes
//
//  Created by Leandro de Sousa Silva on 15/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var textNotes: UITextView!
    
    let storeDate = UserDefaults.standard

    
    @IBAction func buttonSalve(_ sender: UIButton) {
        let textNote = textNotes.text
        if let textNoteVerified = textNote{
            storeDate.set(textNoteVerified, forKey: "note")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textNotes.text = storeDate.object(forKey: "note") as? String
    }

    //funcao que indica pra mim quando clico fora de algum objeto da tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //esconde o teclado quando termino de usar
        view.endEditing(true)
    }
    
    //
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

