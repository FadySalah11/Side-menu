//
//  SideMenuViewModel.swift
//  sideMenu
//
//  Created by Folio on 31/05/2022.
//

import Foundation



enum SideMenuViewModel : Int ,CaseIterable {
    case lists
    case bookmarks
    case profile
    case messages
    case notifications
    case logout
    
    var title : String{
        switch self{
        
            
        case .lists:
            return "lists"
        case .bookmarks:
            return "bookmarks"
        case .profile:
            return "profile"
        case .messages:
            return "messages"
        case .notifications:
            return "notifications"
        case .logout:
            return "logout"
        }	
    }
    var imageName :String {
        switch self{
            
        case .lists:
            return "list.bullet"
        case .bookmarks:
            return "bookmark"
        case .profile:
            return "person"
        case .messages:
            return "bubble.left"
        case .notifications:
            return "bell"
        case .logout:
            return "arrow.left.square"
        }
    }
}
