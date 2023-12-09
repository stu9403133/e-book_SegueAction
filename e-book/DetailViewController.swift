//
//  DetailViewController.swift
//  e-book
//
//  Created by stu on 2023/12/8.
//

import UIKit


class DetailViewController: UIViewController {

    @IBOutlet weak var detailPic1: UIImageView!
    @IBOutlet weak var detailText: UITextView!
    @IBOutlet weak var detailPic2: UIImageView!
    
    var detailLoad:PeopleName!
    var detail = Detail()
    let peopleName = PeopleName.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        switch detailLoad {
        case .itadori:
            updateUI(PeopleName: .itadori)
        case .fushiguro:
            updateUI(PeopleName: .fushiguro)
        case .kugisaki:
            updateUI(PeopleName: .kugisaki)
        case .gojo:
            updateUI(PeopleName: .gojo)
        case .toge:
            updateUI(PeopleName: .toge)
        case .sukuna:
            updateUI(PeopleName: .sukuna)
        case .jogo:
            updateUI(PeopleName: .jogo)
        default:
            updateUI(PeopleName: .itadori)
        }
        
        
    }
    
    func updateUI(PeopleName: PeopleName) {
        detailPic1.image = UIImage(named: "\(PeopleName.rawValue)" + "0")
        detailPic2.image = UIImage(named: "\(PeopleName.rawValue)" + "1")
        var index = peopleName.index(of: PeopleName)
        let detailArray = detail.detailArray
        
        detailText.text = "\(detailArray[index!])"
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
