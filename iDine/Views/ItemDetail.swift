//
//  ItemDetail.swift
//  iDine
//
//  Created by Scott on 11/22/20.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    
    var item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(item.description)
                .padding()
            
            Button("Order This") {
                order.add(item: item)
            }
            .padding(8)
            .font(.headline)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .shadow(color: .gray, radius: 4)
            
            Spacer()
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
        .navigationBarItems(trailing: Button("\(Image(systemName: "star"))Favorite") {
            // add favorite
            order.addFavorites(item: item)
        })
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            ItemDetail(item: MenuItem.example)
        }
    }
}
