class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.401"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.401/zync-0.0.401-darwin-arm64.tar.gz"
      sha256 "1302eebc567f9c76744fbb1e2aeeac14b5f95a1b6d46a2a28427e928ce8758c6"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.401/zync-0.0.401-darwin-amd64.tar.gz"
      sha256 "a299d6559fbdbf9413eb570788abae342dabeaec45daefe71bdf6bb6b9c4eb00"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
