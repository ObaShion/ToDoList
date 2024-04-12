//
//  ListView.swift
//  ToDoList
//
//  Created by 大場史温 on 2024/04/12.
//

import SwiftUI


struct Todo: Identifiable {
    var id = UUID()
    var check: Bool
    var title: String
}

struct ListView: View {
    @State var todos: [Todo] = [Todo(check: true, title: "洗濯畳み"), Todo(check: true, title: "お風呂掃除")]
    var body: some View {
        List{
            Section("未実行") {
                ForEach(0..<todos.count, id: \.self, content: { index in
                    if todos[index].check == false {
                        Button {
                            todos[index].check.toggle()
                        } label: {
                            HStack{
                                Image(systemName: todos[index].check ? "checkmark.circle.fill" :"circle")
                                    .foregroundColor(.blue)
                                Text(todos[index].title)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                })
            }
            Section("実行済み") {
                ForEach(0..<todos.count, id: \.self, content: { index in
                    if todos[index].check == true {
                        Button {
                            todos[index].check.toggle()
                        } label: {
                            HStack{
                                Image(systemName: todos[index].check ? "checkmark.circle.fill" :"circle")
                                    .foregroundColor(.blue)
                                Text(todos[index].title)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                })
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
