class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.403"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.403/zync-0.0.403-darwin-arm64.tar.gz"
      sha256 "af4f9582c05123deb67565e6055053af94ee15ef7d166e7c524f2023e1a7fe5b"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.403/zync-0.0.403-darwin-amd64.tar.gz"
      sha256 "b93c10134d1e2d5b1374270cf7b9201db984a5912af59103dc341e2a6e200d30"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
