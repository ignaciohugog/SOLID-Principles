//
//  SOLIDServiceScheduler.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct SOLIDServiceScheduler: ServiceScheduler {
    
    // MARK: - Public methods
    
    let timer: Timeable
    private var services: [Service]
    
    init(timer: Timeable) {
        self.timer = timer
        self.services = []
    }
    
    mutating func registerService(_ service: Service) {
        services.append(service)
    }
    
    func start() {
        timer.onTick() {
            tick in
            
            self.timerDidTick(tick)
        }
        
        timer.start()
    }
    
    func stop() {
        timer.stop()
    }
    
    // MARK: - Private methods
    
    private func timerDidTick(_ tick: Int) {
        runServicesWithTick(tick)
    }
    
    private func runServicesWithTick(_ tick: Int) {
        for service in services where shouldExecuteFrequency(service.frequency(), onTick:tick) {
            service.execute()
        }
    }

    private func shouldExecuteFrequency(_ frequency: Int, onTick tick: Int) -> Bool {
        return (tick % frequency) == 0
    }
    
}
