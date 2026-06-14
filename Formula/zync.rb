class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.501"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.501/zync-0.0.501-darwin-arm64.tar.gz"
      sha256 "e880e142982e3ee88450f468ac608d545c7393de031316ee184837051fc07c5c"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.501/zync-0.0.501-darwin-amd64.tar.gz"
      sha256 "045ab28dc311065779c9cf63379dfb238c7e346655aa240e59256002b058c899"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
