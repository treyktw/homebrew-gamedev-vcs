class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.406"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.406/zync-0.0.406-darwin-arm64.tar.gz"
      sha256 "48590fe01ed0fcf94c36086278c792b8f9b2367a9fd41f73a1658ff1c22dfc70"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.406/zync-0.0.406-darwin-amd64.tar.gz"
      sha256 "9c07af0d4c820f13da1125b7d1f3afb83dd29e6e9bfae7e10162b2d4fcaebbd9"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
