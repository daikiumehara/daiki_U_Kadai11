//
//  HomeView.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import SwiftUI
import Combine

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    @State var isShowPrefectures = false
    @State var prefecture = "未選択"

    var body: some View {
        HStack(alignment: .top, spacing: 30) {
            Text("都道府県")
            Text(self.prefecture)

            Button {
                self.isShowPrefectures.toggle()
            } label: {
                Text("選択")
            }
        }
        .fullScreenCover(isPresented: self.$isShowPrefectures) {
            PrefectureList(isShowPrefectures: self.$isShowPrefectures,
                           prefectures: ["a", "b", "c"])
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
