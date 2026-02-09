class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.311"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.311/vsc-0.0.311-darwin-arm64.tar.gz"
      sha256 "d03bfd6cfc2c62843aaab9281abda9c1f87e8484318a83361d0cbef9d2899078"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.311/vsc-0.0.311-darwin-amd64.tar.gz"
      sha256 "8431cef1c7da87f0b35828d7779a20ff78091edaec0c28d38390becfd22d62ce"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
