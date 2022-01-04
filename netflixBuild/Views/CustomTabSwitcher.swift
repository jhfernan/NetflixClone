//
//  CustomTabSwitcher.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 1/4/22.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    @State private var currentTab: CustomTab = .episodes
    
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingfont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            // Scrollable tab picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            // Red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 5)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                            
                            
                            // Button
                            Button {
                                currentTab = tab
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16))
                                    .bold()
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)

                        }
                    }
                }
            }
            
            // Selected View
            switch currentTab {
            case .episodes:
                Text("Episodes")
            case .trailers:
                Text("Trailers")
            case .more:
                Text("More")
            }
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
