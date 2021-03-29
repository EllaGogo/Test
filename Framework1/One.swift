//
//  Framework1View.swift
//  Framework1
//
//  Created by Alžbeta Gogoláková on 29.03.2021.
//

import SwiftUI
import Framework2
import SnipeitKit
import Combine

var cancellable: Cancellable?

struct One: View {
    let client = SnipeitClient()
    @State var result = ""
    
    var body: some View {
        VStack {
            Two()
            
            Button("Send request") {
                cancellable = client.asset.getAll().sink(
                    receiveCompletion: { _ in },
                    receiveValue: {
                        result = $0.count.description
                    }
                )
            }
            .foregroundColor(Color(
                "CustomColor",
                bundle: Bundle(identifier: "cz.quanti.Framework1")
            ))
            
            Text(result)
        }
    }
}

struct One_Previews: PreviewProvider {
    static var previews: some View {
        One()
    }
}
