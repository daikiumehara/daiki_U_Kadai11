//
//  PrefectureUseCaseImpl.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import Foundation

protocol PrefectureUseCaseProtocol {
    func getPrefectures() -> [String]
}

class PrefectureUseCase: PrefectureUseCaseProtocol {
    private let prefectureRepo: PrefectureRepositoryProtocol

    init(prefectureRepo: PrefectureRepositoryProtocol) {
        self.prefectureRepo = prefectureRepo
    }

    func getPrefectures() -> [String] {
        self.prefectureRepo.getPrefectures()
    }
}
