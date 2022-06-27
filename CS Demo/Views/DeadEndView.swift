//
//  DeadEndView.swift
//  CS Demo
//
//  Created by Oliver Jansta on 27.06.2022.
//

import SwiftUI

struct DeadEndView: View {
    var body: some View {
        VStack{
            Text("Sorry, this is dead end of this DEMO app. Please go back to you demo app.")
                .padding()
            Text("⛔️")
                .font(.largeTitle)
            Button(action: {
                // Bundle.loadAccounts()
                //let neco = Bundle.getDetails("000-129868")
                let id = "8989323"
                let urlString = String("https://private-anon-219b11a95d-eahtransparentaccountsv3prod.apiary-mock.com/webapi/api/v3/transparentAccounts/" + id)
                print(urlString)
            }, label: {
                Text("Test")
                    .font(.title2)
                    .fontWeight(.bold)
            })
        }
    }
}

struct DeadEndView_Previews: PreviewProvider {
    static var previews: some View {
        DeadEndView()
    }
}
