//
//  TimerManager.swift
//  Timer
//
//  Created by Jaewan Kim on 12/21/24.
//

import SwiftUI

class TimerManager: ObservableObject {
    @Published var timeLeft: Int = 300
    
    private var isRunning: Bool = false
    
    
}
