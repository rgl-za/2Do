//
//  ItemModel.swift
//  TDo
//
//  Created by 지현정 on 2021/11/25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
