//
//  Date+Extension.swift
//  appDraft
//
//  Created by Maci Bella-Dai Tu on 7/20/23.
//

import Foundation

extension Date {
    func diff(numDays: Int) -> Date {
        Calendar.current.date(byAdding: .day, value: numDays, to: self)!
    }
    var startOfDay: Date{
        Calendar.current.startOfDay(for: self)
    }
}

