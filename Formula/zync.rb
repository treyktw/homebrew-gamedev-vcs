class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.316"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.316/zync-0.0.316-darwin-arm64.tar.gz"
      sha256 "7f8c0e532d8d0a33c9cd4b6a58b7b3f3066a5b50b9b1ad53f15769ea55ae2700"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.316/zync-0.0.316-darwin-amd64.tar.gz"
      sha256 "abba24d3544942c9229f364f921e587e84928a735aaed719ba691e1af1fa9565"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
