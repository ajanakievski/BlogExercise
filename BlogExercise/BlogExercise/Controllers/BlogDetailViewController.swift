//
//  BlogDetailViewController.swift
//  BlogExercise
//
//  Created by Aleksandar Janakievski on 4/19/21.
//

import UIKit

class BlogDetailViewController: UIViewController {
    @IBOutlet weak var UpLabel: UILabel!
    @IBOutlet weak var CommentsLabel: UILabel!
    @IBOutlet weak var titleText: UITextField!
    var blogData:BlogDetailsData = BlogDetailsData.init(ups: "", votes: "", thumbnail: "", title: "",details: "")
    override func viewDidLoad() {
        super.viewDidLoad()

        UpLabel.text = blogData.ups
        CommentsLabel.text = blogData.comments
        titleText.text = blogData.title
        
        // Do any additional setup after loading the view.
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
