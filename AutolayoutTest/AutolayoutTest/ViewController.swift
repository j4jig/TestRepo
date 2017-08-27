//
//  ViewController.swift
//  AutolayoutTest
//
//  Created by gaurav sharma on 04/07/17.
//  Copyright © 2017 gaurav sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.getWeatherData(completionHandler: dataArrived(dictionary:))
        
    }
    
    typealias completionBLock = ([String:Any]) -> Void
    
    func getWeatherData(completionHandler : @escaping completionBLock){
        
        guard let url = URL(string: "http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b1b15e88fa797225412429c1c50c122a1") else {
            print("url not created")
            return
        }

        let urlRequest = URLRequest(url:url)
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        session.dataTask(with: urlRequest, completionHandler: {(data, response, error) in
        
            do{
               let jsonData = try JSONSerialization.jsonObject(with:data!, options: []) 
                
                completionHandler(jsonData as? [String: Any] ?? [:]);
                
            }
            catch{
                print("some Issue in data")
            }
            
        }).resume()
    }
    
    func dataArrived(dictionary:[String:Any]) -> Void {
       
        print(dictionary)
    }
    
    
//    override func viewDidAppear(_ animated: Bool) {
//        let alertView = UIAlertController.init(title: "test", message: "this is a test method", preferredStyle: UIAlertControllerStyle.alert)
//        
//       alertView.addTextField(configurationHandler: addPasswordField(textField:))
//        
//        
//        alertView.addAction(UIAlertAction.init(title: "Cancel", style: UIAlertActionStyle.cancel, handler: okButtonHander(alertAction:)))
//        
//       alertView.addAction(UIAlertAction.init(title: "Ok", style: UIAlertActionStyle.default, handler: okButtonHander(alertAction:)))
//        
//       
//        
//       self.present(alertView, animated: true, completion: nil)
//    }

    func addPasswordField(textField:UITextField) -> Void {
        textField.placeholder = "Master Code"
        textField.keyboardType =  UIKeyboardType.numberPad
        textField.isSecureTextEntry = true
    }
    
    func okButtonHander(alertAction:UIAlertAction) -> Void {
        print("ok button tapped")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

