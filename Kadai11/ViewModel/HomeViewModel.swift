//
//  HomeViewModel.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import Foundation
import Combine

class HomeViewModel: StatusDelegate {
    @Published var prefectureDisplayManager = PrefecturesDisplayStatusManager(isShow: false)
    @Published var prefecture: String = ""
    var router: HomeRouter
    private var prefectureUseCase: PrefectureUseCaseProtocol

    init(router: HomeRouter,
         prefectureUseCase: PrefectureUseCaseProtocol) {
        self.router = router
        self.prefectureUseCase = prefectureUseCase

        super.init()

        self.setRouter(router)
        self.prefectureDisplayManager.delegate = self
    }

    private func setRouter(_ router: HomeRouter) {
        router.prefectureDisplayManager = self.prefectureDisplayManager
    }

    func onAppear() {
        self.prefecture = self.prefectureUseCase.getSelectedPrefecture()
    }

    func onTapSelectButton() {
        self.prefectureDisplayManager.toggle()
    }
}
