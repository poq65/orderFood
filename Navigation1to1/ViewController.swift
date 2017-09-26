//
//  ViewController.swift
//  Navigation1to1
//
//  Created by 지현 on 2017. 9. 26..
//  Copyright © 2017년 지현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var zzazang: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toOrderView"){
        let dest = segue.destination as! OrderViewController
            //최종적으로 선택한 string이 뭐다 라는걸 정의
            let order: String! = zzazang.titleForSegment(at: zzazang.selectedSegmentIndex)
            dest.title=order
            var out: String = "감사합니다\n"
            out += "주문내용: \(order!) 입니다\n"
            out += "맛있게드세요 :)"
            dest.info=out

            
        
        }
        //let destination = segue.destination
        //let button = sender as! UIButton
        //destination.title = button.titleLabel?.text
    }

}

