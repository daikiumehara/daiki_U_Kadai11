//
//  Router.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import SwiftUI

class HomeRouter {
    var prefectureDisplayManager: PrefecturesDisplayStatusManager!

    func presentPrefectureList() -> PrefectureList {
        let viewModel = PrefectureViewModel(
            prefectureDisplayManager: self.prefectureDisplayManager,
            prefectureUseCase: PrefectureUseCase(prefectureRepo: PrefectureRepository.default)
        )
        return PrefectureList(viewModel: viewModel)
    }
}
