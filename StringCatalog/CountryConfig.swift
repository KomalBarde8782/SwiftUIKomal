import Foundation

struct CountryConfig: Codable {
    let supportEmail: String
    let currency: String
}

typealias CountryConfigs = [String: CountryConfig]

class ConfigManager {
    static let shared = ConfigManager()

    private var config: CountryConfig?

    init() {
        loadConfig()
    }

    private func loadConfig() {
        guard let url = Bundle.main.url(forResource: "CountryConfig", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let configs = try? JSONDecoder().decode(CountryConfigs.self, from: data) else {
            return
        }
        let currentRegionCode = Locale.current.regionCode ?? "US"
        config = configs[currentRegionCode] ?? configs["US"]
    }

    func currentConfig() -> CountryConfig? {
        return config
    }
}
