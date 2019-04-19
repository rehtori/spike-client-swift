//
//  SpikeClientManager+UI.swift
//  Loop
//
//  Copyright © 2018 LoopKit Authors. All rights reserved.
//

import LoopKitUI
import HealthKit
import SpikeClient


extension SpikeClientManager: CGMManagerUI {
    public static func setupViewController() -> (UIViewController & CGMManagerSetupViewController & CompletionNotifying)? {
        return SpikeClientSetupViewController()
    }
    
    public func settingsViewController(for glucoseUnit: HKUnit) -> (UIViewController & CompletionNotifying) {
        return SpikeClientSettingsViewController(cgmManager: self, glucoseUnit: glucoseUnit, allowsDeletion: true)
    }

    public var smallImage: UIImage? {
        return nil
    }
}
