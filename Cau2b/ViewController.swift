//
//  ViewController.swift
//  Cau2b
//
//  Created by Cntt05 on 7/5/17.
//  Copyright © 2017 Cntt05. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urltxt1: UITextField!
    
    @IBOutlet weak var urltxt2: UITextField!
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func ClickImage1(_ sender: Any) {
        let imageUrl: URL = URL(string: urltxt1.text!)!
        (URLSession(configuration: URLSessionConfiguration.default)).dataTask(with: imageUrl, completionHandler: {(imageData, response, error) in
            if let data = imageData {
                DispatchQueue.main.async {
                    self.imageView1.image = UIImage(data: data)
                }
            }
            
        }).resume()
    }
    
    @IBAction func ClickImage2(_ sender: Any) {
        let imageUrl: URL = URL(string: urltxt2.text!)!
        (URLSession(configuration: URLSessionConfiguration.default)).dataTask(with: imageUrl, completionHandler: {(imageData, response, error) in
            if let data = imageData {
                DispatchQueue.main.async {
                    self.imageView2.image = UIImage(data: data)
                }
            }
            
        }).resume()
    }

    

}

