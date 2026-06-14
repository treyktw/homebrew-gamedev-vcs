class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.503"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.503/zync-0.0.503-darwin-arm64.tar.gz"
      sha256 "0865cc862df05b2a37ed007a1dd90ad13d8a1bd8772011dafcb797f938a19088"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.503/zync-0.0.503-darwin-amd64.tar.gz"
      sha256 "9e416cba1a1bccff8c692adf71a33bcd830cebfa33ea909129b1ea6ec88af973"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
