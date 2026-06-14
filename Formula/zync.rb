class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.512"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.512/zync-0.0.512-darwin-arm64.tar.gz"
      sha256 "1a43afac10d532614918bccf5415e89d318ea07caac37060b498a0a3fff877ce"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.512/zync-0.0.512-darwin-amd64.tar.gz"
      sha256 "ce90d530c869a2a964f7ef88ba3fa56675cb813a14ee12ba034788ed05d54cea"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
