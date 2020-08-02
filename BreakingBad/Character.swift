//
//  Character.swift
//  BreakingBad
//
//  Created by Zolani Chamane on 2020/07/27.
//  Copyright © 2020 Zolani Chamane. All rights reserved.
//

import UIKit

class Character: Codable  {
    let Id:Int
    let Name:String
    let Nickname:String
    let DateOfBirth:String
    let Pic :String
    
    
    enum CodingKeys: String, CodingKey {
        case Id = "char_id"
        case Name = "name"
        case Nickname = "nickname"
        case DateOfBirth = "birthday"
        case Pic = "img"
    }
    
//    init?(id:Int, Picture: String?, Name:String, Nickname:String,  DateOfBirth:String) {
//        self.Id = id
//        self.Picture = Picture
//        self.DateOfBirth = DateOfBirth
//        self.Name = Name
//        self.Nickname = Nickname
//    }
}
