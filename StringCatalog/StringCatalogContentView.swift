import SwiftUI

struct StringCatalogContentView: View {
    let config = ConfigManager.shared.currentConfig()

    var body: some View {
        VStack(spacing: 20) {
            Text("welcome_message") // Localized via String Catalog

            if let config = config {
                VStack(alignment: .leading, spacing: 10) {
                    Text("supportLabel")
                        .font(.headline)
                    Text(config.supportEmail)
                        .foregroundColor(.blue)

                    Text("currencyLabel")
                        .font(.headline)
                    Text(config.currency)
                        .foregroundColor(.green)
                }
                .padding()
            } else {
                Text("Could not load config")
            }
        }
        .padding()
    }
}
