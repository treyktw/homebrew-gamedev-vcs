class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.502"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.502/zync-0.0.502-darwin-arm64.tar.gz"
      sha256 "e33dd75c98ec634be69b6982f431e76a91a4472837526dd591eecf6e2db8d4f2"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.502/zync-0.0.502-darwin-amd64.tar.gz"
      sha256 "7896c6df28d0158d2db69b0f24cf34aba71cb41cf21215f1ee8c16f974c18e96"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
