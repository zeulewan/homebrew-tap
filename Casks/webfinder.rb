cask "webfinder" do
  version "1.3.2"
  sha256 "e97c73d2252f048cf0373fcade4b9636c35a1a7095543612e53fdd81dd5569a0"

  url "https://github.com/zeulewan/web-finder/releases/download/v#{version}/WebFinder.app.zip"
  name "WebFinder for Tailscale"
  desc "Discover WebFinder-published web services on Tailscale"
  homepage "https://github.com/zeulewan/web-finder"

  depends_on macos: :ventura

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
