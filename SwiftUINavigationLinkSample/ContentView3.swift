//
//  ContentView3.swift
//  SwiftUINavigationLinkSample
//
//  Created by Daisuke TONOSAKI on 2019/11/20.
//  Copyright © 2019 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct ContentView3: View {
    var body: some View {
        
        // NOTE: There should only be a single NavigationView at the root of your navigation stack.
        // NavigationView {
        VStack {
            Text("3")
                .font(.largeTitle)
            
            Spacer().frame(height: 128)
        }
        // }
        
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
