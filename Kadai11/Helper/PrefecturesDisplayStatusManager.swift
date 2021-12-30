//
//  DisplayStatusManager.swift
//  Kadai11
//
//  Created by daiki umehara on 2021/12/30.
//

import Foundation

class StatusDelegate: NSObject, ObservableObject {}

class PrefecturesDisplayStatusManager {
    var isShow: Bool
    weak var delegate: StatusDelegate?

    init(isShow: Bool) {
        self.isShow = isShow
    }

    func toggle() {
        self.isShow.toggle()
        self.delegate?.objectWillChange.send()
    }
}
