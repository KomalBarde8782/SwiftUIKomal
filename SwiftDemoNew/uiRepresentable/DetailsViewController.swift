//
//  DetailsViewController.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 15/08/23.
//

import UIKit
import SwiftUI
class DetailsViewController: UIViewController {
    var landmark : Landmark?
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var detailsImgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        descLbl.text = landmark?.description
        var yourImage: UIImage = UIImage(named: landmark?.photo ?? "")!
        detailsImgView.image = yourImage
        // Do any additional setup after loading the view.
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(DetailsViewController.tapFunction))
        descLbl.isUserInteractionEnabled = true
        descLbl.addGestureRecognizer(tap)
    }
    
    @objc
        func tapFunction(sender:UITapGestureRecognizer) {
            let vc = UIHostingController(rootView: LandmarkDescriptionView(landmark: landmark!))
            navigationController?.pushViewController(vc, animated: true)
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
