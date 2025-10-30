# Changelog

All notable changes to SwiftUI-Onboarding (formerly OnboardingKit) will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.1.4] - 2025-10-24

### Added
- **Bulgarian Language Localization**: Added Bulgarian language support to the localization system.
- **Sign-in with Apple Button**: New `SignInWithAppleButtonConfiguration` and button component for easy Apple Sign-In integration.
- **CHANGELOG**: Added this changelog file to track all notable changes to the project.

## [2.1.3] - 2025-10-03

### Fixed
- Fixed an issue where image resources weren't working with GitHub Actions.

## [2.1.2] - 2025-07-04

### Added
- `StyledSheet` now adds a dismiss button to the Data Privacy screen when presented in a sheet.

## [2.1.1] - 2025-07-03

### Fixed
- **macOS Sheet Animation**: Animations inside `.sheet` on macOS now use a deferred approach to ensure smooth and reliable presentation. This resolves issues where animations could be skipped or fail to play due to timing mismatches during view hierarchy setup.
- **Text Localization**: Fixed missing `bundle: .module` parameter in localized string lookups. This ensures that localized text from string catalogs loads correctly in Swift Packages.

## [2.1.0] - 2025-06-29

### Added
- **Present Onboarding as a Sheet**: You can now use `.presentOnboardingIfNeeded` to present the onboarding experience as a modal sheet over your main content, instead of conditionally swapping the root view.
  - The sheet is automatically dismissed when onboarding is completed.
  - Supports custom storage and continue actions, just like `.showOnboardingIfNeeded`.
  - Fully disables interactive sheet dismissal until onboarding is completed.
- **Multi-Screen/Custom Flow Onboarding**: Both the sheet and root-replacement styles now support custom multi-step onboarding flows via a new `flowContent` closure. This is perfect for additional setup, permissions, user profile creation, tutorials, or any post-welcome onboarding step.

## [2.0.0] - 2025-06-28

### Added
- **Modern SwiftUI & Swift 6.0**: Leveraging latest SwiftUI APIs and tools.
- **Extended Localization**: 10 languages baked in: English, German, Spanish, French, Italian, Japanese, Korean, Portuguese, Russian, Chinese Simplified.
- **Accessibility First**: Full Dynamic Type support.
- **Automatic State Management**: Seamless onboarding hide/show control with built-in AppStorage helpers.
- **Composable Data Privacy Sheet**: Pass in any custom content as your data privacy policy sheet.

### Changed
- **BREAKING**: Now requires Swift 6, iOS 18+, and macOS 15+ minimum.
- **BREAKING**: `OnboardingConfiguration` has changed—please update your usage accordingly.
- **BREAKING**: You now provide your app's display name explicitly.
- **BREAKING**: Data privacy is specified as a SwiftUI view.

## [1.0.0] - 2025-05-17

### Added
- Initial release of OnboardingKit.
- Basic onboarding functionality for SwiftUI applications.

[2.1.4]: https://github.com/Sedlacek-Solutions/OnboardingKit/releases/tag/2.1.4
[2.1.3]: https://github.com/Sedlacek-Solutions/OnboardingKit/releases/tag/2.1.3
[2.1.2]: https://github.com/Sedlacek-Solutions/OnboardingKit/releases/tag/2.1.2
[2.1.1]: https://github.com/Sedlacek-Solutions/OnboardingKit/releases/tag/2.1.1
[2.1.0]: https://github.com/Sedlacek-Solutions/OnboardingKit/releases/tag/2.1.0
[2.0.0]: https://github.com/Sedlacek-Solutions/OnboardingKit/releases/tag/2.0.0
[1.0.0]: https://github.com/Sedlacek-Solutions/OnboardingKit/releases/tag/1.0.0
