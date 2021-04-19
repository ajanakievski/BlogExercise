//
//  RedditTableViewCell.swift
//  BlogExercise
//
//  Created by Aleksandar Janakievski on 4/18/21.
//

import UIKit

class RedditTableViewCell:UITableViewCell{
    
    @IBOutlet weak var blogImage: UIImageView!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var upvotesLabel: UILabel!
    
    @IBOutlet weak var title: UITextView!
    @IBOutlet weak var comentsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //style
        let selectedView = UIView(frame: CGRect.zero)
        selectedView.backgroundColor = UIColor(red: 78/255, green: 82/255, blue: 93/255, alpha: 0.6)
        selectedBackgroundView  = selectedView
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
     func configureBlogCell(redditBlog: BlogDataAdapter) {
        title.text = redditBlog.title;
        upvotesLabel.text = redditBlog.ups
        comentsLabel.text = redditBlog.comments
        let url = URL(string: redditBlog.thumbnail ?? "")
        let data = try? Data(contentsOf: url!)
        let defaultpicData:Data = (UIImage(named: "mappleLeaf")?.pngData())!
        blogImage.image =  UIImage(data: data ?? defaultpicData)

        let helper = Helper()
        var backgroundColorList = helper.getBackgroundList()
        backgroundImage.image = UIImage.init(named: backgroundColorList[Int.random(in: 0..<5)])


        
    }
    
}


