cask "webfinder" do
  version "1.3.4"
  sha256 "2554cc2f3ec923bd752a292202e2c81ac8a9aec3290f3a45941d5a7ca00adf71"

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
