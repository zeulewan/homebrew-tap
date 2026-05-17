class WebFinder < Formula
  desc "Publish and discover WebFinder services on Tailscale"
  homepage "https://github.com/zeulewan/web-finder"
  url "https://github.com/zeulewan/web-finder/archive/refs/tags/v1.3.4.tar.gz"
  sha256 "9e24750451637a4116fec6c804b5c590d228111658d73cc5dce8511cd36f81fa"
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
