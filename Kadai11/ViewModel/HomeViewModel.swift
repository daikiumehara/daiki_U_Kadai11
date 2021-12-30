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
    @Published var prefecture: String = "未選択"
    var router: HomeRouter

    init(router: HomeRouter) {
        self.router = router

        super.init()

        self.setRouter(router)
        self.prefectureDisplayManager.delegate = self
    }

    private func setRouter(_ router: HomeRouter) {
        router.prefectureDisplayManager = self.prefectureDisplayManager
    }

    func didTapSelectButton() {
        self.prefectureDisplayManager.toggle()
    }
}
