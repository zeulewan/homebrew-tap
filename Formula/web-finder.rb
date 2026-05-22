class WebFinder < Formula
  desc "Discover Tailscale-served web interfaces with WebFinder"
  homepage "https://github.com/zeulewan/web-finder"
  url "https://github.com/zeulewan/web-finder/archive/refs/tags/v1.3.7.tar.gz"
  sha256 "c5febc5b66fadbcc2a45bf39558bb79f6df1d71cd13bb09decde6b94a7b4125f"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["cli/*"]
    bin.install_symlink libexec/"bin/web-finder" => "web-finder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/web-finder --version")
  end
end
