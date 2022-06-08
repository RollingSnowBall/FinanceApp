//
//  AssetView.swift
//  FinanceApp
//
//  Created by JUNO on 2022/06/08.
//

import SwiftUI

struct AssetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30){
                    Spacer()
                    AssetMenuGridView()
                }
            }
            .background(Color.gray.opacity(0.2))
            .navigationBarWithButtonStyle("내 자산")
        }
    }
}

struct AssetView_Previews: PreviewProvider {
    static var previews: some View {
        AssetView()
    }
}
