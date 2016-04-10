//
//  KeyboardViewController.swift
//  Cat Keyboard
//
//  Created by Shirley He on 4/9/16.
//  Copyright © 2016 Shirley He. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    
    var keyboardView: UIView!


    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadKeyboardView()
    
    }
    
    @IBAction func generateQuote() {
        //random number generator
        let randomIndex = Int(arc4random_uniform(9))
        print(randomIndex)
        
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText(quotesArray[randomIndex])
        
    }
    
    @IBAction func hideKeyboard() {
        dismissKeyboard()
    }
    
    @IBAction func deleteText() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    @IBAction func nextKeyboard() {
        advanceToNextInputMode()
    }
    
    func loadKeyboardView() {
        let keyboardNib = UINib(nibName: "View", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.backgroundColor = keyboardView.backgroundColor
        view.addSubview(keyboardView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
     
    }

}
