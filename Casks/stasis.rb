cask "stasis" do
  version "0.2.0"
  sha256 "6bc1829af17303cedbc4ee1ac1a115bffeec7b9770831f2f5e5ebd6eb597aab0"

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
