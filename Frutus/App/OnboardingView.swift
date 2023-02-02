//
//  OnboardingView.swift
//  Frutus
//
//  Created by Nicholes Guillory on 1/30/23.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
