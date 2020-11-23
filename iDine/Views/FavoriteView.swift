//
//  FavoriteView.swift
//  iDine
//
//  Created by Scott on 11/23/20.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.favoriteItems) { item in
                        HStack(spacing: 8) {
                            Image(item.thumbnailImage)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                                .shadow(radius: 4)
                            Text("\(item.name)")
                        }
                    }
                }
            }
            .navigationBarTitle("Favorites")
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static let order = Order()
    
    static var previews: some View {
        FavoriteView().environmentObject(order)
    }
}
