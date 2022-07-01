//
//  AccountDetailView.swift
//  CS Demo
//
//  Created by Oliver Jansta on 27.06.2022.
//

import SwiftUI

struct AccountDetailView: View {
    var accountNumber: String
    var bankNumber: String
    var name: String
    var balance: Float
    var currency: String?
    
    
    //var data: ResponseModel = Bundle.main.decode("Data.json")
    var accountDetailData: DetailResponseModel = Bundle.main.decode("Detail.json")
    
    var body: some View {
            VStack {
                VStack (alignment: .leading) {

                    Text(name)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Constant.color.blackText)
                        .padding(.top, 10)
                        .padding(.horizontal, 10)
                    Text("\(accountNumber)/\(bankNumber)")
                        .font(.footnote)
                        .foregroundColor(Constant.color.blackText)
                        .padding(.horizontal, 10)
                    //Spacer()
                    HStack() {
                        Spacer()
                        Text("\(currency?.uppercased() ?? "CZK") \(String(format: "%.2f", balance))")
                            .fontWeight(.semibold)
                            .foregroundColor(Constant.color.blackText)
                    }
                    .padding(10)
                    Spacer()
                }
                .frame(idealWidth: .infinity, maxWidth: .infinity, minHeight: 70, idealHeight: 100, maxHeight: 100, alignment: .leading)
                .background(Constant.color.lightGray)

                ScrollView() {
                    ForEach(accountDetailData.transactions) { accountDetail in
                        AccountDetailRowView(value: accountDetail.amount.value, date: accountDetail.dueDate ?? "-", name: accountDetail.sender?.name ?? "-", accountNumber: accountDetail.sender?.accountNumber ?? "-", bankNumber: accountDetail.sender?.bankCode ?? "-")
                    }
                }
            }
            .padding(.top, 0)
            .onAppear(perform: {
                //myAccount = data.accounts
            })
    }
}

struct AccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailView(accountNumber: "000000-3675616309", bankNumber: "0800", name: "MČ Praha 6", balance: 1234345.13, currency: "CZK")
    }
}
