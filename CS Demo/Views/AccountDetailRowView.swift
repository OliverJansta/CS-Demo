//
//  AccountDetailRowView.swift
//  CS Demo
//
//  Created by Oliver Jansta on 27.06.2022.
//

import SwiftUI

struct AccountDetailRowView: View {
    var neco: Int = -245
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text("25.3.2021")
                Spacer()
                Text("\(neco) CZK")
                    .foregroundColor((neco > 0) ? .black : .red)
            }
            .padding(.top, 5)
            .padding(.horizontal)
            Text("Jmeno Prijmeni")
                .padding(.horizontal)
            Text("978689-0896876/0800")
                .padding(.horizontal)
            Divider()
        }
    }
}

struct AccountDetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailRowView()
    }
}
