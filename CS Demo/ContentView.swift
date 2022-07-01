//
//  ContentView.swift
//  CS Demo
//
//  Created by Oliver Jansta on 23.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State var data: ResponseModel = Bundle.main.decode("Data.json")
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(data.accounts) {account in
                    NavigationLink(destination: AccountDetailView(
                        accountNumber: account.accountNumber,
                        bankNumber: account.bankCode,
                        name: account.name,
                        balance: account.balance,
                        currency: account.currency), label: {
                        
                        AccountRowView(name: account.name, accNumber: account.accountNumber, bankNumber: account.bankCode, balance: account.balance, currency: account.currency ?? "CZK")
                        
                        
                    })
                }
            }
            .navigationBarTitle("Transparentní účty", displayMode: .automatic)
        }
        .onAppear(perform: {
            //let coneck = Connection()
            //data = coneck.loadAccounts()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        let demoData: ResponseModel = Bundle.main.decode("Data.json")
        ContentView(data: demoData)
    }
}
