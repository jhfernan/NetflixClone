//
//  SymbolTextButtonView.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 12/29/21.
//

import SwiftUI

struct SymbolTextButtonView: View {
    
    var text: String
    var imageName: String
    var backgroundColor: Color = Color.white
    
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                
                Image(systemName: imageName)
                    .font(.headline)
                
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                
                Spacer()
            }
            .padding(.vertical, 6)
            .background(backgroundColor)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .cornerRadius(3.0)
        })
    }
}

struct SymbolTextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            SymbolTextButtonView(text: "Play", imageName: "play.fill") {
                //
            }
        }
    }
}
