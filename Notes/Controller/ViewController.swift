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

    
    @IBAction func buttonSalve(_ sender: UIButton) {
    
        if let textTyped = textNotes.text {
            let task = DatesTask()
            task.salve(task: textTyped)
            textNotes.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

