//
//  AppDelegate.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    enum TwitterClientType {
        case SOLID
        case NotSOLID
    }

    func applicationDidFinishLaunching(_ application: UIApplication) {


        // Twitter Example - SRP, OCP, DIP
//
//        let clientType: TwitterClientType = .SOLID
//        let client: Client = (clientType == .SOLID) ? SOLIDClient() : NotSOLIDClient()
//
//        client.startScheduler()
//


        // Square/Rectangle Example - LSP
//
//        let rect1 = NotSOLIDRectangle()
//        rect1.setWidth(3.0)
//        rect1.setHeight(7.0)
//
//        let square1 = NotSOLIDSquare()
//        square1.setWidth(3.0)
//        square1.setHeight(7.0)
//
//        print("[Not SOLID] Rectangle: (width: \(rect1.width()), height: \(rect1.height())), area: \(rect1.area())")
//        print("[Not SOLID] Square: (width: \(square1.width()), height: \(square1.height())), area: \(square1.area())")
//
//        let rect2 = SOLIDRectangle(width: 3.0, height: 7.0)
//        let square2 = SOLIDSquare(side: 3.0)
//
//        print("[SOLID] Rectangle: (width: \(rect2.width), height: \(rect2.height)), area: \(rect2.area())")
//        print("[SOLID] Square: (width: \(square2.side), height: \(square2.side)), area: \(square2.area())")


        // ATM Example - ISP

//        let atmUI = NotSOLIDConsoleATM()
//        let depositTransaction1 = NotSOLIDDepositTransaction(ui: atmUI)
//
//        depositTransaction1.execute()
//
//        let depositUI = SOLIDDepositUI()
//        let depositTransaction2 = SOLIDDepositTransaction(ui: depositUI)
//
//        depositTransaction2.execute()

    }
}

