//
//  Character.swift
//  BreakingBad
//
//  Created by Zolani Chamane on 2020/07/27.
//  Copyright © 2020 Zolani Chamane. All rights reserved.
//

import UIKit

struct Characters: Codable  {
   // let  count :Int
    let all: [Character]
    
    enum CodingKeys: String, CodingKey {
     //case count
    case all
    }
    
//    init?(id:Int, Picture: String?, Name:String, Nickname:String,  DateOfBirth:String) {
//        self.Id = id
//        self.Picture = Picture
//        self.DateOfBirth = DateOfBirth
//        self.Name = Name
//        self.Nickname = Nickname
//    }
}
