class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.315"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.315/zync-0.0.315-darwin-arm64.tar.gz"
      sha256 "0dc3ea7c99ff8f822316f5bc5ea314e298fee9862c40e5f4438b053e80419816"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.315/zync-0.0.315-darwin-amd64.tar.gz"
      sha256 "172e59c349ecb944b69a91bf4f48a43a33809e8debc0602484ddc919d8657881"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
