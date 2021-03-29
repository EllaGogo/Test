//
//  ContentView.swift
//  Test
//
//  Created by Alžbeta Gogoláková on 29.03.2021.
//

import SwiftUI
import Framework1
import SnipeitKit


struct ContentView: View {
    let client = SnipeitClient()
    var body: some View {
        One()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
