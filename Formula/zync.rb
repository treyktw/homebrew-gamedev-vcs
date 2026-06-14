class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.5/zync-0.0.5-darwin-arm64.tar.gz"
      sha256 "fd568a7b05c6e2486673f6da5fdcf23e95e87205ae4ddabf18f523e43ccd83b6"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.5/zync-0.0.5-darwin-amd64.tar.gz"
      sha256 "cf522b6e8a7cb5893b9d82a6c3cbd4db373fda453aacf8089618330fbc27b3f2"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
