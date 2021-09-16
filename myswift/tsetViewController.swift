//
//  tsetViewController.swift
//  myswift
//
//  Created by kadis on 2021/9/13.
//

import UIKit
class tsetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let myString = "Hello, World!"
        print(myString)
        
        for x in 0...10{
            print("\(x)")
        }
        var str : String
        str = "kadis"
        print("\(str)")
        
        let contsa = 34
        print(contsa)
        
        let contsb:Float = 3.3423
        
        print(contsb)
        
        let stringa = ""
        
        let strb = String()
        
        if stringa.isEmpty {
            print("空的")
        }else{
            
        }
        
        if strb.isEmpty {
            print("空的")
        }else{
            
        }
        
        let hello = ocViewController()
        hello.seyhello("kadis")
        
        
        let lab = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let view1 = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    
        self.view.addSubview(lab)
        
        
        
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
