//
//  MainViewController.swift
//  BlogExercise
//
//  Created by Aleksandar Janakievski on 4/18/21.
//

import UIKit
import Alamofire

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        fetchBlogData{data in
//            print("Doing something after Block_Completion!!")
//            print("data")
//
//        };
       let dummyData = getDummyData();
        fetchBlogData();
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
            
        let request = AF.request(url)
        request.responseJSON { response in
           // print(resultdata)
            switch (response.result) {

                        case .success( _):

                        do {
                            let blogData = try JSONDecoder().decode([RedditBlog].self, from: response.data!)
                            print(blogData)

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
//                redditBlog = try! newJSONDecoder().decode(RedditBlog.self, from: dataExample )
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
