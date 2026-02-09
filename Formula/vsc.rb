class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.311"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.311/vsc-0.0.311-darwin-arm64.tar.gz"
      sha256 "8b820b921eb75d414493410e99cf435d365ae44a0b05bb1ac1326a6f56b9b8c1"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.311/vsc-0.0.311-darwin-amd64.tar.gz"
      sha256 "088700e4c61b99f5b39b46ca3028d9e9238500abe09edeb85070f38e627c9529"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
