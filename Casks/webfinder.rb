cask "webfinder" do
  version "1.3.8"
  sha256 "9a21ff6a2ba673cd80190381394301bcb826938c1972b5a85f1050571faf9e0b"

  url "https://github.com/zeulewan/web-finder/releases/download/v#{version}/WebFinder.app.zip"
  name "WebFinder for Tailscale"
  desc "Discover WebFinder-published web services on Tailscale"
  homepage "https://github.com/zeulewan/web-finder"

  depends_on macos: :ventura
  depends_on formula: "web-finder"

  app "WebFinder.app"

  zap trash: [
    "~/Library/Application Support/com.zeul.web-finder",
    "~/Library/Application Support/WebFinder",
    "~/Library/Caches/com.zeul.web-finder",
    "~/Library/Caches/WebFinder",
    "~/Library/HTTPStorages/com.zeul.web-finder",
    "~/Library/Preferences/com.zeul.web-finder.plist",
    "~/Library/Saved Application State/com.zeul.web-finder.savedState",
  ]
end
