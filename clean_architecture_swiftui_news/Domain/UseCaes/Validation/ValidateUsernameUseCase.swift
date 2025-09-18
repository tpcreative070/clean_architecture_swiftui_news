//
//  ValidateUsernameUseCase.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation



final class ValidateUsernameUseCase {

    enum UsernameValidationError: Error {
        case invalidUsername
    }

    private enum Constants {
        static let formatString = "SELF MATCHES %@"
        static let regex = "[a-zA-Z0-9]+"
    }

    func execute(_ username: String) throws {
        let usernamePredicate = NSPredicate(
            format: Constants.formatString,
            Constants.regex
        )
        
        guard usernamePredicate.evaluate(with: username) else {
            throw UsernameValidationError.invalidUsername
        }
    }
}
