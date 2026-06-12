class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.315"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.315/zync-0.0.315-darwin-arm64.tar.gz"
      sha256 "4bbfaaa53f080f93e52976ea7207dc948ac3485fede87461623edb290fcbe4bc"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.315/zync-0.0.315-darwin-amd64.tar.gz"
      sha256 "2064c7c1b823db3b31b0377030bebd53bdc86caf200ede33f0980d3ff418a7d2"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
