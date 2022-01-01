//
//  Router.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import SwiftUI

class HomeRouter {
    func presentPrefectureList(isPresented: Binding<Bool>) -> PrefectureList {
        let viewModel = PrefectureViewModel(
            prefectureUseCase: PrefectureUseCase(prefectureRepo: PrefectureRepository.default),
            isPresented: isPresented
        )
        return PrefectureList(viewModel: viewModel)
    }
}
