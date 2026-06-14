class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.507"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.507/zync-0.0.507-darwin-arm64.tar.gz"
      sha256 "ead83b4c6e6c62378ed813f9ef23d7b3ad945b0353e35e1646dbfec2cda0f5ec"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.507/zync-0.0.507-darwin-amd64.tar.gz"
      sha256 "85de8afcdd1397d8c7740137dcd31cef0e6608034693e6c21ca625f4d47021df"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
