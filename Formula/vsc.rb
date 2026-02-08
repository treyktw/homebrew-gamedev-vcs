class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.31/vsc-0.0.31-darwin-arm64.tar.gz"
      sha256 "be6e3acf9b678a531fc2fa33449a2fd88ed3266b35928c04515eafa8c95bbc9b"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.31/vsc-0.0.31-darwin-amd64.tar.gz"
      sha256 "8bf5b7fa50ae931768b13069a47704becc3972d371a3aca8330530256a992860"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
