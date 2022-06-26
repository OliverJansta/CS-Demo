//
//  AccountRowView.swift
//  CS Demo
//
//  Created by Oliver Jansta on 26.06.2022.
//

import SwiftUI

struct AccountRowView: View {
    var name: String
    var accNumber: String
    var bankNumber: String
    var balance: Float
    var currency: String
    
    var body: some View {
        VStack (alignment: .leading) {
            Spacer()
            Text(name)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(Constant.color.blackText)
                .padding(.top, 10)
                .padding(.horizontal, 10)
            Text("\(accNumber)/\(bankNumber)")
                .font(.footnote)
                .foregroundColor(Constant.color.blackText)
                .padding(.horizontal, 10)
            //Spacer()
            HStack() {
                Spacer()
                Text("\(currency.uppercased()) \(String(format: "%.2f", balance))")
                    .fontWeight(.semibold)
                    .foregroundColor(Constant.color.blackText)
            }
            .padding(10)
            Spacer()
        }
        .frame(idealWidth: .infinity, maxWidth: .infinity, minHeight: 70, idealHeight: 100, maxHeight: 100, alignment: .leading)

        .padding(5)
        .background(Constant.color.lightGray)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct AccountRowView_Previews: PreviewProvider {
    static var previews: some View {
        AccountRowView(name: "Praha 6", accNumber: "000000-1846405399", bankNumber: "0800", balance: 18626045.61, currency: "CZK")
    }
}
