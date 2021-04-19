//
//  BlogDataAdapter.swift
//  BlogExercise
//
//  Created by Aleksandar Janakievski on 4/19/21.
//

import Foundation


class BlogDataAdapter {
    
   
    let ups,comments,thumbnail,title: String?

    init(ups:String?,votes:String?,thumbnail:String?,title:String?) {
        self.ups = ups
        self.comments = votes
        self.thumbnail = thumbnail
        self.title = title
    }
}