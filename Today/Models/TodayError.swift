//
//  TodayError.swift
//  Today
//
//  Created by Yulia Poznyakova on 10.06.2024.
//

import Foundation

enum TodayError: LocalizedError {
    
    case accessDenied
    case accessRestricted
    case failedReadingCalendarItem
    case failedReadingReminders
    case reminderHasNoDueDate
    case unknown
    
    
    var errorDescription: String? {
        switch self {
        case .accessDenied:
            return NSLocalizedString(
                "The app doesn't have permission to read reminders.",
                comment: "access denied error description")
        case .accessRestricted:
            return NSLocalizedString(
                "The device doesn't allow access to reminders.",
                comment: "access restricted error description")
        case .failedReadingCalendarItem:
            return NSLocalizedString("Failed to read a calendar item.", comment: "failed reading calendar item error description")
        case .failedReadingReminders:
            return NSLocalizedString(
                "Failed to read reminders.",
                comment: "failed reading reminders error desription")
        case .reminderHasNoDueDate:
            return NSLocalizedString(
                "A reminder had no due date.",
                comment: "reminder has no due date error description")
        case .unknown:
            return NSLocalizedString(
                "An unknown error occurred.", comment: "unknown error description")
        }
    }
}

