class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.311"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.311/vsc-0.0.311-darwin-arm64.tar.gz"
      sha256 "e2005c6435dcdd6f338cae5fc857724aec755162d2100d17a467856928429cdf"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.311/vsc-0.0.311-darwin-amd64.tar.gz"
      sha256 "34cf1e301d816aced4c7423ed4900271336db2a02ec230e15fe4708ce50c4ba7"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
