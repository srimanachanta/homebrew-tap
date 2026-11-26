cask "stasis" do
  version "0.3.0"
  sha256 "51ad56533da7a383676a3217683ad0b5b259a39a69cc92dcddae45c17d3b87a1"

  url "https://github.com/srimanachanta/Stasis/releases/download/v#{version}/Stasis.zip"
  name "Stasis"
  desc "Battery management and dashboard for Apple Silicon"
  homepage "https://github.com/srimanachanta/Stasis"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Stasis.app"

  uninstall quit:      "com.srimanachanta.Stasis",
            launchctl: "com.srimanachanta.stasis.charging-helper"

  zap trash: "~/Library/Preferences/com.srimanachanta.Stasis.plist"
end
