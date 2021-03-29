//
//  Two.swift
//  Framework2
//
//  Created by Alžbeta Gogoláková on 29.03.2021.
//

import SwiftUI

public struct Two: View {
    public init() {}
    
    public var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(
                Color(
                    "CustomColor",
                    bundle: Bundle(identifier: "cz.quanti.Framework2")
                )
            )
    }
}

struct Two_Previews: PreviewProvider {
    static var previews: some View {
        Two()
    }
}
