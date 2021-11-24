//
//  ListView.swift
//  TDo
//
//  Created by 지현정 on 2021/11/17.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "first", isCompleted: false),
        ItemModel(title: "2", isCompleted: false),
        ItemModel(title: "3", isCompleted: true),
        
    ]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(items){ item in
                    //ListRowView(title: item)
                    
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("2 :Do")
            .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

