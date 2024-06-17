//
//  EKEventStore+AsyncFetch.swift
//  Today
//
//  Created by Yulia Poznyakova on 16.06.2024.
//

import EventKit
import Foundation

extension EKEventStore {
    func reminders(matching predicate: NSPredicate) async throws -> [EKReminder] {
        try await withCheckedThrowingContinuation { continuation in 
        fetchReminders(matching: predicate) { reminders in
            if let reminders {
                continuation.resume(returning: reminders)
            } else {
                continuation.resume(throwing: TodayError.failedReadingReminders)
            }
        }
        }
    }
}
