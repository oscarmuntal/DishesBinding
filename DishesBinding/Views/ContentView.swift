//
//  ContentView.swift
//  DishesBinding
//
//  Created by Òscar Muntal on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    private let model = Dish.all()
    
    var body: some View {
        List {
            Toggle(isOn: .constant(false)) {
                Text("Spicy")
                    .font(.title)
            }
            
            ForEach(model) { dish in
                HStack {
                    Image(dish.imageURL)
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Text(dish.name)
                        .font(.title)
                        .lineLimit(nil)
                    
                    Spacer()

                    if(dish.isSpicy) {
                        Image("spicy-icon")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
