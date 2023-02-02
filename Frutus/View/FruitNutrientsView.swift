//
//  FruitNutrientsView.swift
//  Frutus
//
//  Created by Nicholes Guillory on 1/31/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    let nutrients: [String] = [
        "Energy",
        "Sugar",
        "Fat",
        "Protein",
        "Vitamins",
        "Minerals"
    ]
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            ZStack{
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                        
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
//                        .foregroundColor(fruit.gradientColors[1])
//                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                    }
                }
//            .foregroundColor(Color.secondary)
            .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
            }
        } //: BOX
    }
}

// MARK: - PREVIEW

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
    }
}
