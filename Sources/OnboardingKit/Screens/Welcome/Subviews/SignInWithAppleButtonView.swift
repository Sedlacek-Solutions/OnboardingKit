//
//  SignInWithAppleButtonView.swift
//
//  Created by OpenAI Assistant on 2024.
//

import AuthenticationServices
import SwiftUI

@MainActor
struct SignInWithAppleButtonView: View {
    let configuration: SignInWithAppleButtonConfiguration
    let continueAction: () -> Void

    var body: some View {
        SignInWithAppleButton(
            configuration.type,
            onRequest: configuration.onRequest,
            onCompletion: handleCompletion
        )
        .signInWithAppleButtonStyle(configuration.style)
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .clipShape(.rect(cornerRadius: configuration.cornerRadius))
    }

    private func handleCompletion(_ result: Result<ASAuthorization, Error>) {
        configuration.onCompletion(result)

        guard configuration.shouldInvokeDefaultActionOnSuccess else { return }

        if case .success = result {
            continueAction()
        }
    }
}
