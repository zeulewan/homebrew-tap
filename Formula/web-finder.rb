class WebFinder < Formula
  desc "Publish and discover WebFinder services on Tailscale"
  homepage "https://github.com/zeulewan/web-finder"
  url "https://github.com/zeulewan/web-finder/archive/refs/tags/v1.3.5.tar.gz"
  sha256 "40e97b680cb996d87da5df7c5f1d282362a67c37439d48ab00f8c5185e943b0c"
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
