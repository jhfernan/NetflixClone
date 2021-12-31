//
//  SmallVerticalButtonView.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 12/29/21.
//

import SwiftUI

struct SmallVerticalButtonView: View {
    var text: String
    
    var isOnImage: String
    var isOffImage: String
    
    var isOn: Bool
    
    var imageName: String {
        return isOn ? isOnImage : isOffImage
    }
    
    
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: isOnImage)
                    .foregroundColor(.white)
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SmallVerticalButtonView(
                text: "My List",
                isOnImage: "checkmark",
                isOffImage: "plus",
                isOn: true) {
                    print("Pressed")
                }
            
        }
    }
}
