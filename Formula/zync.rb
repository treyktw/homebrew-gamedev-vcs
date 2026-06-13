class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.4/zync-0.0.4-darwin-arm64.tar.gz"
      sha256 "6300a40c06d783d9b3d61b4e45f310cbc256ec4d04affa64ac66bad4c3e6e6fd"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.4/zync-0.0.4-darwin-amd64.tar.gz"
      sha256 "058c61850d3cdef98e41c3e5b05c8b76cc78082539a729613b1d2a4a48c4b76d"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
