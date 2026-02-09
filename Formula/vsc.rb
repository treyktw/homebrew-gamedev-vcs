class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.311"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.311/vsc-0.0.311-darwin-arm64.tar.gz"
      sha256 "cd04d354fb36934b0c3759acceda5a54f0a30afd54aa7b067fd6cd011c8c91c3"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.311/vsc-0.0.311-darwin-amd64.tar.gz"
      sha256 "99e4ff5530180e98fc07c836f7d08e08a389c1eb0f57fb6f8f09e09fff5dc122"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
