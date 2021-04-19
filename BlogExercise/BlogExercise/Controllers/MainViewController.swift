//
//  MainViewController.swift
//  BlogExercise
//
//  Created by Aleksandar Janakievski on 4/18/21.
//

import UIKit
import Alamofire

class MainViewController: UIViewController {

    @IBOutlet weak var ReditTableView: UITableView!
    
    private var blogList = [Child]()
    private var finishedLoadingInitialTableCells = false

    override func viewDidLoad() {
        super.viewDidLoad()
//        fetchBlogData{data in
//            print("Doing something after Block_Completion!!")
//            print("data")
//
//        };
        let dummyData = getDummyData()
        blogList = dummyData.data?.children ?? [];
        ReditTableView.dataSource = self
        ReditTableView.delegate = self
        
        
       // fetchBlogData();
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
    func fetchBlogData()->RedditBlog {
      // Setup the variable ReditBlog
        let url = "https://www.reddit.com/.json"
        // init af
        var redditBlog = RedditBlog.init(kind: "", data: nil)
               
        let request = AF.request(url,encoding: URLEncoding.queryString).validate()
            .responseJSON { (response) in
            print("this data",response)

            switch (response.result) {

                        case .success( _):

                        do {
//                            let blogData = try newJSONDecoder().decode(RedditBlog.self, from: (response.data) )


                        } catch let error as NSError {
                            print("Failed to load: \(error.localizedDescription)")
                        }

                         case .failure(let error):
                            print("Request error: \(error.localizedDescription)")
            }
//            if let result = resultdata.value {
//                let resultData = result as! NSDictionary
//                print(resultData)
//                let dataExample: Data = NSKeyedArchiver.archivedData(withRootObject: resultData)
//
//
//                redditBlog = try newJSONDecoder().decode(RedditBlog.self, from: dataExample )
//
//            }
        }
        return redditBlog;
    }
    
    func getDummyData()-> RedditBlog{
        if let path = Bundle.main.path(forResource: "RedditData", ofType: "json") {
            do {
                  let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let reditBlog = try? newJSONDecoder().decode(RedditBlog.self, from: data  )
                return reditBlog!;
              } catch {
                   // error handling example
                return RedditBlog.init(kind: "", data: nil);
              }
        }
        return RedditBlog.init(kind: "", data: nil);
    }
   
}


//*****************************************************************
// MARK: - TableViewDelegate
//*****************************************************************

extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("clicked!")
       // let blogVC = BlogDetailViewController()
        let blog = self.blogList[indexPath.row].data
        
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let blogVC = storyBoard.instantiateViewController(withIdentifier: "BlogDetails") as! BlogDetailViewController
        
        blogVC.blogData = BlogDetailsData.init(ups: String(blog?.ups ?? 0) , votes: String(blog?.numComments ?? 0), thumbnail: blog?.thumbnail, title: blog?.title,details: blog?.author)
        
        self.present(blogVC, animated: true, completion: nil)
       
        //    navigationController?.pushViewController(blogVC, animated: true)
        
//present(blogVC, animated: true, completion: nil)
        
//        
//  
//        
        
       
   }
}
    



//*****************************************************************
// MARK: - TableViewDataSource
//*****************************************************************

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("Count")
        return blogList.count
    }



    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if blogList.isEmpty {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NothingFound", for: indexPath)
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell

        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! RedditTableViewCell

            // alternate background color
            cell.backgroundColor = (indexPath.row % 2 == 0) ? UIColor.clear : UIColor.black.withAlphaComponent(0.1)
            let blog = self.blogList[indexPath.row].data
            let blogItem = BlogDataAdapter.init(ups: String(blog?.ups ?? 0) , votes: String(blog?.numComments ?? 0), thumbnail: blog?.thumbnail, title: blog?.title)
            
            
            // adapt data
            //bond ui view with data
            cell.configureBlogCell(redditBlog: blogItem)

            return cell
        }
    }

    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
    

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        var lastInitialDisplayableCell = false
        //change flag as soon as last displayable cell is being loaded (which will mean table has initially loaded)
        if self.blogList.count > 0 && finishedLoadingInitialTableCells {
            if let indexPathsForVisibleRows = tableView.indexPathsForVisibleRows,
                let lastIndexPath = indexPathsForVisibleRows.last, lastIndexPath.row == indexPath.row {
                lastInitialDisplayableCell = true
            }
        }
        if !finishedLoadingInitialTableCells {
            
            if lastInitialDisplayableCell {
                finishedLoadingInitialTableCells = true
            }
            
            //animates the cell as it is being displayed for the first time
            cell.transform = CGAffineTransform(translationX: 0, y: CGFloat(90/2))
            cell.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0.12*Double(indexPath.row+1), options: [.curveEaseOut], animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: 0)
                cell.alpha = 1
            }, completion: nil)
        }
    }
}




