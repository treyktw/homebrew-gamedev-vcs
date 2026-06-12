class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.316"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.316/zync-0.0.316-darwin-arm64.tar.gz"
      sha256 "3c821c01ebfd04061ad001f3e202262d0bf97cefb632a67ca24316a0250fbc15"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.316/zync-0.0.316-darwin-amd64.tar.gz"
      sha256 "3df779110b60992c9dd2b9b449c7a4ddb2411a7e990a223e921f9e0d0e935b64"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
