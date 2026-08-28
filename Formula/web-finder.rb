class WebFinder < Formula
  desc "Discover Tailscale-served web interfaces with WebFinder"
  homepage "https://github.com/zeulewan/web-finder"
  url "https://github.com/zeulewan/web-finder/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "86012fc7d3a452d064ac4bc011198670fe02e070742773fd3adc0e381d398ac3"
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
