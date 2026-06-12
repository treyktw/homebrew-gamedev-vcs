class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.316"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.316/zync-0.0.316-darwin-arm64.tar.gz"
      sha256 "a15588a157dd1c536236032ef47a2c5744c7bbb17fe062fc6a2fe00dfc8f0626"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.316/zync-0.0.316-darwin-amd64.tar.gz"
      sha256 "4b4d28f170609110c343af6b0d29455512a98d3c1f247f74ae17c19aadb27c87"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
