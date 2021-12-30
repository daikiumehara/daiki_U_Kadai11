//
//  PrefectureUseCaseImpl.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import Foundation

protocol PrefectureUseCaseProtocol {
    func getPrefectures() async -> [String]
    func saveSelectedPrefecture(_ prefecture: String)
    func getSelectedPrefecture() -> String
}

class PrefectureUseCase: PrefectureUseCaseProtocol {
    private let prefectureRepo: PrefectureRepositoryProtocol

    init(prefectureRepo: PrefectureRepositoryProtocol) {
        self.prefectureRepo = prefectureRepo
    }

    func saveSelectedPrefecture(_ prefecture: String) {
        self.prefectureRepo.saveSelectedPrefecture(prefecture)
    }

    func getSelectedPrefecture() -> String {
        self.prefectureRepo.getSelectedPrefecture()
    }

    func getPrefectures() async -> [String] {
        await self.prefectureRepo.getPrefectures()
    }
}
