//
//  ContentView.swift
//  CS Demo
//
//  Created by Oliver Jansta on 23.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                AccountRowView(name: "Praha 6", accNumber: "000000-1846405129", bankNumber: "0800", balance: 18626045.44, currency: "CZK")
                AccountRowView(name: "Město Mariánské Lázně", accNumber: "000000-2846405399", bankNumber: "0800", balance: 26045.69, currency: "CZK")
                AccountRowView(name: "Společenství Praha 4, Obětí 6.května 553", accNumber: "000000-1846434399", bankNumber: "0800", balance: 3426045.21, currency: "CZK")
                AccountRowView(name: "Slovácký běžecký klub Kyjov", accNumber: "000000-8716405399", bankNumber: "0800", balance: 2045.61, currency: "CZK")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
