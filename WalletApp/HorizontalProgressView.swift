//
//  HorizontalProgressView.swift
//  WalletApp
//
//  Created by Abdelrahman Elsayed on 11/26/21.
//

import SwiftUI

struct HorizontalProgressView: View {
    @Binding var percentage: Int
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.primaryYellow)
                    .frame(height: 20)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.primaryPurple)
                    .frame(width: proxy.size.width * CGFloat(percentage)/100,
                           height: 20)
            }
        }
    }
}

struct HorizontalProgressView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalProgressView(percentage: .constant(50))
    }
}
