class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.516"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.516/zync-0.0.516-darwin-arm64.tar.gz"
      sha256 "8c1f1105af9762e16cd2998307fb165d2f6a37b5d955a1e007c3ca14b5f00a2c"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.516/zync-0.0.516-darwin-amd64.tar.gz"
      sha256 "2336987a2da0553d79c982fb1891394e6b3b339334efad5a76d29317baa329d6"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
