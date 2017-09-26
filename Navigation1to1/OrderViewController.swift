//
//  OrderViewController.swift
//  Navigation1to1
//
//  Created by 지현 on 2017. 9. 26..
//  Copyright © 2017년 지현. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    var info: String? //나중에 프로그램에서 사용할 곳
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //첫번째 화면에서 값을 전달하면 info에 저장됨. 널이 아니라면 conentString에 저장
        if let contentString = info {
            infoLabel.text = contentString
        }
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
