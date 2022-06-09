//
//  AssetBannerView.swift
//  FinanceApp
//
//  Created by JUNO on 2022/06/09.
//

import SwiftUI

struct AssetBannerView: View {
    
    let bannerList: [AssetBanner] = [
        AssetBanner(title: "공지사항", description: "추가된 공지사항", backgroundColor: .red),
        AssetBanner(title: "공지사항", description: "추가된 일지사항", backgroundColor: .blue),
        AssetBanner(title: "공지사항", description: "추가된 이지사항", backgroundColor: .yellow),
        AssetBanner(title: "공지사항", description: "추가된 삼지사항", backgroundColor: .green)
    ]
    
    @State private var currentPage = 0
    
    var body: some View {
        let bannerCards = bannerList.map {
            BannerCard(banner: $0)
        }
        
        ZStack(alignment: .bottomTrailing){
            PageViewController(pages: bannerCards, currentPage: $currentPage)
            PageControl(numberOfPage: bannerList.count, currentPage: $currentPage)
                .frame(width: CGFloat(bannerCards.count * 17))
                .padding(.trailing)
        }
    }
}

struct AssetBannerView_Previews: PreviewProvider {
    static var previews: some View {
        AssetBannerView()
            .aspectRatio(5/2, contentMode: .fit)
    }
}
