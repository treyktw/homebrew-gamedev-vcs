class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.410"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.410/zync-0.0.410-darwin-arm64.tar.gz"
      sha256 "9598e8183e968a4c22d363c379b546f3afb24ac835f58ed2a1a2769cdf1c1251"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.410/zync-0.0.410-darwin-amd64.tar.gz"
      sha256 "b46b19c0195dc79706d2d50a9c2e4e47d6944023e233ca834fd81d1f6781b95c"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
