//
//  ItemModel.swift
//  TodoApp
//
//  Created by Dmitro Dohryk on 23.05.2023.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let title: String
    let isCompleted: Bool
    let id: String
    
    
    init(Id: String = UUID().uuidString, Title: String, IsCompleted:Bool){
        self.id = Id
        self.title = Title
        self.isCompleted = IsCompleted
    }
    
    
    func updateCompleted() -> ItemModel {
        return ItemModel(Id: id, Title: title, IsCompleted: !isCompleted)
    }
    
}
