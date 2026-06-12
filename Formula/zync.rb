class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.314"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.314/zync-0.0.314-darwin-arm64.tar.gz"
      sha256 "db314d61e7d4fa2872bf9543c8cb7fb38ececd1dd4d53b75b0cd7f0cee5495e5"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.314/zync-0.0.314-darwin-amd64.tar.gz"
      sha256 "2b88f730ac8e58f2ab6c17bca1ddae12408c5a716417a8726ccabb6925332132"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
