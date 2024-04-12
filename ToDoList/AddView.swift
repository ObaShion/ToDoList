//
//  AddView.swift
//  ToDoList
//
//  Created by 大場史温 on 2024/04/12.
//

import SwiftUI

struct AddView: View {
    @State var title = ""
    var body: some View {
        VStack{
            HStack{
                TextField("やることを入力", text: $title)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(30)
                    .padding()
                Button {
                    //TodoListに追加
                    ListView().todos.append(Todo(check: false, title: title))
                    
                    //テキストボックスをリセット
                    title = ""
                } label: {
                    Text("追加")
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                        .cornerRadius(15)
                }
                .padding()
            }
            if title != "" {
                VStack{
                    HStack{
                        Text("例")
                            .padding([.top, .leading])
                        Spacer()
                    }
                    HStack{
                        Image(systemName: "circle")
                            .foregroundColor(.blue)
                        Text(title)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding()
                    .background(.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                }
            }
            Spacer()
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
