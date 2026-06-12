class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.313"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.313/zync-0.0.313-darwin-arm64.tar.gz"
      sha256 "ff84fd71d7bfa4faa19a3c0d0ca9fc0b8fccc77e1e27cd0fa621132ae46ec2d8"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.313/zync-0.0.313-darwin-amd64.tar.gz"
      sha256 "db779ad3302b845dd6a6dcb1007ba45ebd4455108453bd4d6768c36a27ca93e5"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
