//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Apple on 7/29/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        imagePicker.delegate = self
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CameraAction(_ sender: Any) {
//    }
//    @IBAction func cameraTapped(_ sender : Any) {
        
        imagePicker.sourceType = .camera
        present(imagePicker, animated : true, completion: nil)
    }
    
    @IBAction func PhotoLibraryTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func AlbumsTapped(_ sender: Any) {
        
        imagePicker.sourceType = .savedPhotosAlbum
        present(imagePicker, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
