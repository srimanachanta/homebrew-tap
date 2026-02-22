cask "stasis" do
  version "0.1.0"
  sha256 "d1e984ff923ce24b96b121e1d771d6c7c506a622872396656305c9b8c2ecc105"

  url "https://github.com/srimanachanta/Stasis/releases/download/v#{version}/Stasis.dmg"
  name "Stasis"
  desc "Battery management and dashboard for Apple Silicon"
  homepage "https://github.com/srimanachanta/Stasis"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Stasis.app"

  uninstall quit:      "com.srimanachanta.Stasis",
            launchctl: "com.srimanachanta.stasis.charging-helper"

  zap trash: "~/Library/Preferences/com.srimanachanta.Stasis.plist"
end
