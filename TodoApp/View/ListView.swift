//
//  ListView.swift
//  TodoApp
//
//  Created by Dmitro Dohryk on 24.05.2023.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listviewmodel: ListViewModel
    
    var body: some View {
        ZStack{
            if listviewmodel.items.isEmpty {
                NoListView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else{
                List{
                    ForEach(listviewmodel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.easeOut(duration: 1.1)){
                                    listviewmodel.update(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listviewmodel.deleteItem)
                    .onMove(perform: listviewmodel.moveItem)
                }
            }
        }
        .navigationTitle("Todo List 🖌")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }.environmentObject(ListViewModel())
    }
}
