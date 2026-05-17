class WebFinder < Formula
  desc "Publish and discover WebFinder services on Tailscale"
  homepage "https://github.com/zeulewan/web-finder"
  url "https://github.com/zeulewan/web-finder/archive/refs/tags/v1.3.3.tar.gz"
  sha256 "e42fc38ae370a1df8ae6a82aa72536f16089a691adeeaa858fb4015c64b893e6"
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
