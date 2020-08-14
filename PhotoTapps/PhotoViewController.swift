//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Татьяна Кочетова on 14.08.2020.
//  Copyright © 2020 Nikita Kochetov. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    @IBAction func shareAction(_ sender: Any) {
        
        let shareControllet = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareControllet.completionWithItemsHandler = {_, bool, _, _ in
            if bool {
                print("Успешно")
            }
            
        }
        
        present(shareControllet, animated: true, completion: nil)
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
