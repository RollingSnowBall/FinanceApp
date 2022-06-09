//
//  AssetSectionView.swift
//  FinanceApp
//
//  Created by JUNO on 2022/06/09.
//

import SwiftUI

struct AssetSectionView: View {
    
    @ObservedObject var assetSection: Asset
    
    var body: some View {
        VStack(spacing: 20){
            AssetSectionHeaderView(title: assetSection.type.title)
            ForEach(assetSection.data){ asset in
                HStack{
                    Text(asset.title)
                        .font(.title)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(asset.amount)
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                Divider()
                    .background(.gray)
            }
        }
        .padding()
    }
}

struct AssetSectionView_Previews: PreviewProvider {
    static var previews: some View {
        let asset = Asset(
            id: 0,
            type: .bankAccount,
            data: [
                    AssetData(id: 0, title: "Barclay", amount: "$100,000"),
                    AssetData(id: 1, title: "Citi", amount: "$130,000"),
                    AssetData(id: 2, title: "Chase", amount: "$150,000")
                  ]
        )
        
        AssetSectionView(assetSection: asset)
    }
}
