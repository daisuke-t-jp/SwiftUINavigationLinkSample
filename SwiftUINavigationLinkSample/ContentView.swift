//
//  ContentView.swift
//  SwiftUINavigationLinkSample
//
//  Created by Daisuke TONOSAKI on 2019/11/20.
//  Copyright © 2019 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var switchState: Bool = false
    @State var showsAlert = false
    @State var pushActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                Toggle(isOn: $switchState) {
                    Text("Enable NavigationLink")
                }.frame(width: 260)
                
                Spacer().frame(height: 20)
                
                Button(action: {
                    guard self.switchState else {
                        self.showsAlert = true
                        return
                    }
                    
                    self.pushActive = true
                }) {
                    Text("Next")
                }
                .alert(isPresented: self.$showsAlert) {
                    Alert(title: Text("Switch is disable."))
                }
                
                NavigationLink(destination: ContentView2(),
                               isActive: self.$pushActive) {
                    EmptyView()
                }.hidden()

                Spacer().frame(height: 32)
            }
            .padding()
            .navigationBarTitle(Text("Index"))
            .navigationBarHidden(false)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
