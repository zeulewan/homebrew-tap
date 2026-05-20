class WebFinder < Formula
  desc "Discover Tailscale-served web interfaces with WebFinder"
  homepage "https://github.com/zeulewan/web-finder"
  url "https://github.com/zeulewan/web-finder/archive/refs/tags/v1.3.6.tar.gz"
  sha256 "4648bd2f8d7c59dc190ca50295f344e39a94803a64c84cc659fbe1c379048239"
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
