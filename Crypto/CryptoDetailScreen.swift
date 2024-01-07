//
//  CryptoDetailScreen.swift
//  Crypto
//
//  Created by Julien on 23/07/2023.
//

import SwiftUI

struct CryptoDetailScreen: View {
    
    let crypto: CryptoCurrency
    @State var quantity: Float
    
    var body: some View {
        VStack {
            HStack {
                Text(crypto.name)
                    .foregroundColor(Color("Text"))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical, 24)
                    .padding(.horizontal, 16)
                Spacer()
                Image(crypto.iconName)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
                    .background(Color("Text2"))
                    .cornerRadius(.infinity)
            }
            VStack(spacing: 16) {
                Text("\(String(format: "%.2f", quantity * crypto.value)) €")
                    .foregroundColor(Color("Text"))
                    .font(.system(size: 32, weight: .bold))
                HStack {
                    Text("\(crypto.evolution > 0 ? "+" : "")\(String(format: "%.2f", crypto.evolution)) %")
                    if crypto.evolution > 0 {
                        Image(systemName: "arrow.up.right")
                    } else {
                        Image(systemName: "arrow.down.right")
                    }
                }
                .foregroundColor(Color(crypto.evolution > 0 ? "AccentGreen" : "AccentRed"))
                Text("Quantité : \(quantity)")
                    .foregroundColor(Color("Text2"))
            }
            
            Spacer()
            HStack(spacing: 16) {
                Button {
                    if quantity > 0 {
                        quantity = quantity - 1
                    }
                } label: {
                    Text("Vendre")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("Text2"))
                        .cornerRadius(10)
                }
                Button {
                    quantity = quantity + 1
                } label: {
                    Text("Acheter")
                        .foregroundColor(Color("Background"))
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("AccentYellow"))
                        .cornerRadius(10)
                }
            }
        }
        .padding()
        .background(Color("Background"))
        .navigationBarTitleDisplayMode(.inline)
    }
    
    init(crypto: CryptoCurrency) {
        self.crypto = crypto
        self._quantity = State(initialValue: UserDefaults.standard.float(forKey: crypto.name + "Quantity"))
    }
}

struct CryptoDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CryptoDetailScreen(crypto: cryptoList[1])
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
