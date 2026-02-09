class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.31/vsc-0.0.31-darwin-arm64.tar.gz"
      sha256 "c6039e039ffabbdf852b69b3ebfce82657bbca8a8b910e884fd5bb9c48934651"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.31/vsc-0.0.31-darwin-amd64.tar.gz"
      sha256 "c176af6a1eb49fba9dfc750d28854beede7f317e552ca819594cc9e20f4c654c"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
