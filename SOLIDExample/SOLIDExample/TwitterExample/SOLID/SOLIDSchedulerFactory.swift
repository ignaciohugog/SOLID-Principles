//
//  SOLIDSchedulerFactory.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct SOLIDSchedulerFactory {

    static func twitterServiceSchedulerWith(userID: String) -> ServiceScheduler {
        let timer = clockTimer()
        var twitterScheduler = SOLIDServiceScheduler(timer: timer)

        twitterScheduler.registerService(SOLIDServiceFactory.twitterTimelineServiceWith(userID))
        twitterScheduler.registerService(SOLIDServiceFactory.twitterProfileServiceWith(userID))

        return twitterScheduler
    }

    static func clockTimer() -> Timeable {
        return SOLIDTimer()
    }

}
