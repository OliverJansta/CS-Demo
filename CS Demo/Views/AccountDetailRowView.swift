//
//  AccountDetailRowView.swift
//  CS Demo
//
//  Created by Oliver Jansta on 27.06.2022.
//

import SwiftUI

struct AccountDetailRowView: View {
    var value: Float = -245
    var date: String
    var name: String
    var accountNumber: String
    var bankNumber: String
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text(date)
                Spacer()
                Text("\(String(format: "%.2f", value)) CZK")
                    .foregroundColor((value > 0) ? .black : .red)
            }
            .padding(.top, 5)
            .padding(.horizontal)
            Text(name)
                .padding(.horizontal)
            Text("\(accountNumber)/\(bankNumber)")
                .padding(.horizontal)
            Divider()
        }
    }
}

struct AccountDetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailRowView(date: "24.3.2021", name: "Petr Ponocný", accountNumber: "987689-12986778", bankNumber: "0800")
    }
}
