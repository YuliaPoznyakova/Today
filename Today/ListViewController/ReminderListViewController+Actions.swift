//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by Yulia Poznyakova on 24.04.2024.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton){
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
