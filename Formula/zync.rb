class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.313"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.313/zync-0.0.313-darwin-arm64.tar.gz"
      sha256 "156ba283d9a0b2fba5fbec7ca7c1f85f012b997ce2ba995f676418cf9a0dbb73"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.313/zync-0.0.313-darwin-amd64.tar.gz"
      sha256 "35334565ba319938ecf0551355767fde48c172edfb6833c661d6d35f262af903"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
