//
//  CustomTabSwitcher.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 1/4/22.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingfont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            // Scrollable tab picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            // Red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(.red)
                            
                            
                            // Button
                            Button {
                                //
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16))
                                    .bold()
                            }
                            .buttonStyle(PlainButtonStyle())

                        }
                    }
                }
            }
            
            // Selected View
            Text("Selected view")
        }
        .foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
    
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}
