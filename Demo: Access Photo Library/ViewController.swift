//
//  ViewController.swift
//  Demo: Access Photo Library
//
//  Created by Ahmed Samir on 1/17/19.
//  Copyright © 2019 Ahmed Samir. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var selectedImageOL: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        
    }
    //letting the status bar light content
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //This Button will open Photo Library
    @IBAction func imagePickerBtn(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            
            let imagePicker = UIImagePickerController()
            
            imagePicker.allowsEditing = false
            imagePicker.sourceType = .photoLibrary
            imagePicker.delegate = self
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    
    //Getting the image and showing it
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let selectedImage : UIImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        
        selectedImageOL.image = selectedImage
        
        dismiss(animated: true, completion: nil)
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    

 
}
