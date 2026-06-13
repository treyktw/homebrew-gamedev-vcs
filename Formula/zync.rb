class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.405"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.405/zync-0.0.405-darwin-arm64.tar.gz"
      sha256 "622126ce1d362fc97fc0668a806f457f35ac6585b0be4c8a84e75b08da546862"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.405/zync-0.0.405-darwin-amd64.tar.gz"
      sha256 "e6c4dd6461600db66994fabb18aed2b51c084142f969f4f4f011a91f442b487b"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
