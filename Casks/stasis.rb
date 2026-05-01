cask "stasis" do
  version "0.2.1"
  sha256 "58a280be2b96c39af9e9f151e6d19a58d6c120919b9d649fce8dc22347a00806"

  url "https://github.com/srimanachanta/Stasis/releases/download/v#{version}/Stasis.zip"
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
