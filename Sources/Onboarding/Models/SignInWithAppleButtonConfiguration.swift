//
//  SignInWithAppleButtonConfiguration.swift
//
//  Created by OpenAI Assistant on 2024.
//

import AuthenticationServices
import CoreGraphics
import SwiftUI

/// Configuration for rendering a "Continue with Apple" button.
///
/// Use this configuration to customize the appearance and lifecycle
/// callbacks for the Sign in with Apple button that can replace the
/// default continue button in the onboarding flow.
public struct SignInWithAppleButtonConfiguration {
    public typealias RequestHandler = (ASAuthorizationAppleIDRequest) -> Void
    public typealias CompletionHandler = (Result<ASAuthorization, Error>) -> Void

    /// The button type to use when rendering the Apple button. Defaults to `.continue`.
    let type: SignInWithAppleButton.Label

    /// The visual style applied to the Apple button. Defaults to `.black`.
    let style: SignInWithAppleButton.Style

    /// The corner radius applied to the Apple button. Defaults to `8`.
    let cornerRadius: CGFloat

    /// Indicates whether the default continue action should automatically be invoked
    /// after a successful authorization. Defaults to `true`.
    let shouldInvokeDefaultActionOnSuccess: Bool

    /// Closure executed when the Sign in with Apple request is configured.
    let onRequest: RequestHandler

    /// Closure executed when the Sign in with Apple request completes.
    let onCompletion: CompletionHandler

    /// Creates a configuration for a "Continue with Apple" button.
    ///
    /// - Parameters:
    ///   - type: The button type to render. Defaults to `.continue`.
    ///   - style: The visual style for the button. Defaults to `.black`.
    ///   - cornerRadius: Corner radius applied to the button. Defaults to `25`.
    ///   - shouldInvokeDefaultActionOnSuccess: When `true`, the default
    ///     continue action provided to the onboarding screen will be executed
    ///     automatically after a successful authorization. Defaults to `true`.
    ///   - onRequest: Closure to configure the authorization request.
    ///   - onCompletion: Closure executed with the authorization result.
    public init(
        type: SignInWithAppleButton.Label = .continue,
        style: SignInWithAppleButton.Style = .black,
        cornerRadius: CGFloat = 25,
        shouldInvokeDefaultActionOnSuccess: Bool = true,
        onRequest: @escaping RequestHandler,
        onCompletion: @escaping CompletionHandler
    ) {
        self.type = type
        self.style = style
        self.cornerRadius = cornerRadius
        self.shouldInvokeDefaultActionOnSuccess = shouldInvokeDefaultActionOnSuccess
        self.onRequest = onRequest
        self.onCompletion = onCompletion
    }
}
