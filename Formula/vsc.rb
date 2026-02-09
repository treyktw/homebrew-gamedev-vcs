class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.311"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.311/vsc-0.0.311-darwin-arm64.tar.gz"
      sha256 "d2f55f257bde80c54f70fbfe1364b1800df493b2942d80546de36a12a7187df9"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.311/vsc-0.0.311-darwin-amd64.tar.gz"
      sha256 "148073bdfa3a06f594653a38aa2370066148f34358b1fab96027612128204d6a"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
