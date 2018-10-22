//
//  SOLIDTimer.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

class SOLIDTimer: Timeable {

    private var internalTimer: Timer?
    private var tick: Int
    private var tickAction: ((Int) -> ())?
    
    init() {
        self.internalTimer = nil
        self.tick = 0
        self.tickAction = nil
    }
    
    // MARK: - Protocol conformance
    
    // MARK: Timeable
    
    func onTick(action: @escaping (Int) -> ()) {
        tickAction = action
    }
    
    func start() {
        internalTimer = Timer.scheduledTimer(timeInterval: 1.0,
                                             target: self,
                                             selector:#selector(timerDidFire),
                                             userInfo: nil,
                                             repeats: true)
    }
    
    func stop() {
        internalTimer?.invalidate()
        internalTimer = nil
    }
    
    // MARK: - Private methods
    
    @objc private func timerDidFire(timer: Timer) {
        tick+=1
        
        tickAction?(tick)
    }
    
}
