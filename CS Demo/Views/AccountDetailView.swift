//
//  AccountDetailView.swift
//  CS Demo
//
//  Created by Oliver Jansta on 27.06.2022.
//

import SwiftUI

struct AccountDetailView: View {
    var body: some View {
        VStack() {
            VStack (alignment: .leading) {
                Spacer()
                Text("ahoj")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Constant.color.blackText)
                    .padding(.top, 10)
                    .padding(.horizontal, 10)
                Text("8875659764-757967/0800")
                    .font(.footnote)
                    .foregroundColor(Constant.color.blackText)
                    .padding(.horizontal, 10)
                //Spacer()
                HStack() {
                    Spacer()
                    Text("CZK 186758.37")
                        .fontWeight(.semibold)
                        .foregroundColor(Constant.color.blackText)
                }
                .padding(10)
                Spacer()
            }
            .frame(idealWidth: .infinity, maxWidth: .infinity, minHeight: 70, idealHeight: 100, maxHeight: 100, alignment: .leading)
            .background(Constant.color.lightGray)

            ScrollView() {
                AccountDetailRowView(neco: 1672)
                AccountDetailRowView(neco: -72)
                AccountDetailRowView(neco: 852)
                AccountDetailRowView(neco: -1272)
                AccountDetailRowView(neco: -4672)
            }
        }
    }
}

struct AccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailView()
    }
}
