//
//  ContentView.swift
//  Crypto
//
//  Created by Julien on 22/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("My Wallet")
                        .foregroundColor(Color("Text"))
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical, 24)
                        .padding(.horizontal, 16)
                    ForEach(cryptoList, id : \.name) { crypto in
                        NavigationLink {
                            CryptoDetailScreen(crypto: crypto)
                        } label: {
                            CryptoCell(crypto: crypto)
                        }
                    }
                }
                .padding()
            }
            .background(Color("Background"))
            .navigationBarHidden(true)
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
