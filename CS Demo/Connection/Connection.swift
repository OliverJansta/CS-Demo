//
//  Connection.swift
//  CS Demo
//
//  Created by Oliver Jansta on 27.06.2022.
//

import Foundation

class Connection {
    /*
    func loadAccounts<T: Decodable>() -> T {
        let data: Data
        let url = URL(string: "https://webapi.developers.erstegroup.com/api/csas/public/sandbox/v3/transparentAccounts/?page=&size=&filter=")!
        var request = URLRequest(url: url)
        request.addValue("871afc23-018a-4abe-af8e-b5f757e5c45c", forHTTPHeaderField: "WEB-API-key")

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          if let response = response {
              
            print(response)

            if let data = data, let body = String(data: data, encoding: .utf8) {
                print(body)
                let decoder = JSONDecoder()
                return try decoder.decode(T.self, from: body)
                //return body
             
            }
          } else {
            print(error ?? "Unknown error")
          }
        }

        task.resume()

    }
  
    func getDetails<T: Decodable>(id: String) -> T {
        let urlString = String("https://private-anon-219b11a95d-eahtransparentaccountsv3prod.apiary-mock.com/webapi/api/v3/transparentAccounts/" + id)
        let url = URL(string: urlString)!
        var request = URLRequest(url: url)
        request.addValue("871afc23-018a-4abe-af8e-b5f757e5c45c", forHTTPHeaderField: "WEB-API-key")

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          if let response = response {
            print(response)

            if let data = data, let body = String(data: data, encoding: .utf8) {
              print(body)
            }
          } else {
            print(error ?? "Unknown error")
          }
        }

        task.resume()
    }
     
    */
}
