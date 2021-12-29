//
//  PrefectureRepository.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/29.
//

import Foundation

protocol PrefectureRepositoryProtocol {
    func getPrefectures() -> [String]
}

class PrefectureRepository: PrefectureRepositoryProtocol {
    func getPrefectures() -> [String] {
        APIClient.fetchData()
    }
}
