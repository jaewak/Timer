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
    private var timer: Timer?
    
    func startTimer(timeInSeconds: Int) {
        isRunning = true
        
        timeLeft = timeInSeconds
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {_ in 
            self.timeLeft -= 1
            
            if self.timeLeft == 0 {
                self.timer?.invalidate()
            }
        }
    }
    
    func stopTimer() {
        isRunning = false
        timeLeft = 0
        timer?.invalidate()
    }
}
