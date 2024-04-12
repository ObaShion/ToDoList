//
//  ContentView.swift
//  ToDoList
//
//  Created by 大場史温 on 2024/04/12.
//

import SwiftUI

struct ContentView: View {
    @State var ispresent = false
    var body: some View {
        NavigationStack{
            ListView()
                .navigationTitle("Todo List")
                .toolbar() {
                    ToolbarItem(placement: .bottomBar) {
                        Button {
                            ispresent.toggle()
                        } label: {
                            Text("やること追加")
                        }
                    }
                }
                .sheet(isPresented: $ispresent) {
                    AddView()
                        .presentationDetents([.medium])
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
