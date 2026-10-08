import Foundation

/// Looks up a user-facing string in the app's Localizable.strings tables. SwiftUI's Text-style
/// initializers translate their own string literals; this covers strings kept as Swift values:
/// menu items, alerts, panel titles, undo names and default layer names.
func localized(_ key: String) -> String {
    NSLocalizedString(key, comment: "")
}

/// Formats a localized key whose placeholders are filled by the call's arguments, e.g. "Undo %@" or
/// "%lld × %lld px". Formatting deliberately runs without a locale: the numeric placeholders are
/// plain sizes, counts and degrees, and a locale would group their digits ("1,000 × 1,000 px").
func localized(_ key: String, _ args: any CVarArg...) -> String {
    String(format: NSLocalizedString(key, comment: ""), arguments: args)
}
