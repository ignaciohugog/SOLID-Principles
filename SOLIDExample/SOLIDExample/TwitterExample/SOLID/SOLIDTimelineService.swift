//
//  SOLIDTimelineService.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct SOLIDTimelineService: Service {
    
    private let freq: Int
    let userID: String
    
    init(frequency: Int, userID: String) {
        self.freq = frequency
        self.userID = userID
    }
    
    // MARK: - Protocol conformance
    
    // MARK: Service
    
    func frequency() -> Int {
        return freq
    }
    
    func execute() {
        fetchTimelineFor(userID)
    }
    
    // MARK: - Private methods
    
    private func fetchTimelineFor(_ userID: String) {
        print("[SOLID] fetched timeline for user \(userID)")
    }
    
}
