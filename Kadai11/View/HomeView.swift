//
//  HomeView.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import SwiftUI
import Combine

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        HStack(alignment: .top, spacing: 30) {
            Text("都道府県")
            Text(self.viewModel.prefecture)
            Button {
                self.viewModel.onTapSelectButton()
            } label: {
                Text("選択")
            }
        }
        .onAppear {
            self.viewModel.onAppear()
        }
        .fullScreenCover(isPresented: self.$viewModel.isShowPrefectureList) {
            self.viewModel.onAppear()
        } content: {
            self.viewModel.router.presentPrefectureList(isPresented: $viewModel.isShowPrefectureList)
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(
            viewModel: HomeViewModel(
                router: HomeRouter(),
                prefectureUseCase: PrefectureUseCase(prefectureRepo: PrefectureRepository())
            )
        )
    }
}
