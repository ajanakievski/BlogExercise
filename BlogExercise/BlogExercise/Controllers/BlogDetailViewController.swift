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
    
    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var blogImageview: UIImageView!
    @IBOutlet weak var BodyTextView: UITextView!
    @IBAction func CloseView(_ sender: Any) {
        navigationController?.popViewController(animated: true)

        dismiss(animated: true, completion: nil)
    }
    var blogData:BlogDetailsData = BlogDetailsData.init(ups: "", votes: "", thumbnail: "", title: "", body: "",details: "")
    override func viewDidLoad() {
        super.viewDidLoad()

        UpLabel.text = blogData.ups
        CommentsLabel.text = blogData.comments
        titleTextView.text = blogData.title
        let url = URL(string: blogData.thumbnail ?? "")
        let data = try? Data(contentsOf: url!)
        let defaultpicData:Data = (UIImage(named: "mappleLeaf")?.pngData())!
        blogImageview.image =  UIImage(data: data ?? defaultpicData)
        BodyTextView.text = blogData.body
       
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
