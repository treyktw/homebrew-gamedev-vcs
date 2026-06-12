class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.313"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.313/zync-0.0.313-darwin-arm64.tar.gz"
      sha256 "dca4bc7aa7ba4c694eb702598bd54cce9825408917bb992ec6b54e0f2fad2f2a"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.313/zync-0.0.313-darwin-amd64.tar.gz"
      sha256 "8edee7716134c45a6adb6e90b55aa0dcdaf130c66651671525753bf6a8a804ac"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
