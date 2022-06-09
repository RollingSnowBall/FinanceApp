//
//  AssetSummaryData.swift
//  FinanceApp
//
//  Created by JUNO on 2022/06/09.
//

import SwiftUI

class AssetSummaryData: ObservableObject {
    
    @Published var assets: [Asset] = load("assets.json")
    
}

func load<T: Decodable>(_ filename: String) -> T {
    var data = Data()
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else { fatalError("\(filename)을 찾을 수 없다.") }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("\(filename)을 찾을 수 없다.")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("\(filename)을 파싱할 수 없다.")
    }
}
