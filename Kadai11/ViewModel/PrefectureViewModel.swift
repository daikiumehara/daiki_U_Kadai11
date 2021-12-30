//
//  PrefectureViewModel.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/28.
//

import Foundation

class PrefectureViewModel: ObservableObject {
    private let prefectureUseCase: PrefectureUseCaseProtocol
    @Published var prefectureDisplayManager: PrefecturesDisplayStatusManager
    @Published var prefectures = [String]()


    init(prefectureDisplayManager: PrefecturesDisplayStatusManager,
         prefectureUseCase: PrefectureUseCaseProtocol) {
        self.prefectureDisplayManager = prefectureDisplayManager
        self.prefectureUseCase = prefectureUseCase
    }

    private func fetchPrefectures() {
        DispatchQueue.main.async {
            Task {
                self.prefectures = await self.prefectureUseCase.getPrefectures()
            }
        }
    }

    func onTapCancelButton() {
        self.prefectureDisplayManager.toggle()
    }

    func onTapCell(_ prefecture: String) {
        self.prefectureUseCase.saveSelectedPrefecture(prefecture)
        self.prefectureDisplayManager.toggle()
    }

    func onAppear() {
        self.fetchPrefectures()
    }
}
