class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.31/vsc-0.0.31-darwin-arm64.tar.gz"
      sha256 "df5c9a9ad0859aec3f09989f501cab16c27a1dc584126a5ea16b7c5d02729ba4"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.31/vsc-0.0.31-darwin-amd64.tar.gz"
      sha256 "3c0db66617ac781c1b091927d7b1d88e71b7856bf21f23e50836207ae21c4d8c"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
