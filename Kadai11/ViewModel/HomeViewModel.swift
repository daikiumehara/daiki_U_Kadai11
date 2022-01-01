//
//  HomeViewModel.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import Foundation
import Combine

class HomeViewModel : ObservableObject {
    @Published var prefecture: String = ""
    @Published var isShowPrefectureList = false

    var router: HomeRouter
    private var prefectureUseCase: PrefectureUseCaseProtocol

    init(router: HomeRouter,
         prefectureUseCase: PrefectureUseCaseProtocol) {
        self.router = router
        self.prefectureUseCase = prefectureUseCase
    }

    func onAppear() {
        self.prefecture = self.prefectureUseCase.getSelectedPrefecture()
    }

    func onTapSelectButton() {
        isShowPrefectureList = true
    }
}
