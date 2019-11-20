//
//  ContentView2.swift
//  SwiftUINavigationLinkSample
//
//  Created by Daisuke TONOSAKI on 2019/11/20.
//  Copyright © 2019 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        // NOTE: There should only be a single NavigationView at the root of your navigation stack.
        // NavigationView {
            VStack {
                Text("2")
                    .font(.largeTitle)
                
                Spacer().frame(height: 20)
                
                NavigationLink(destination: ContentView3()) {
                    Text("Next")
                }
            }
            .padding()
            .navigationBarTitle(Text("2"))
        // }
        
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
