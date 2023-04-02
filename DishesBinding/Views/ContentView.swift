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
            ForEach(model) { dish in
                Image(dish.imageURL)
                    .resizable()
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
