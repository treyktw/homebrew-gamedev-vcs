class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.313"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.313/zync-0.0.313-darwin-arm64.tar.gz"
      sha256 "7df4a771499cd24cf8cf51d99f5a4c90f1d382a1fc4af5b4f4a8c13142627b34"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.313/zync-0.0.313-darwin-amd64.tar.gz"
      sha256 "a5f7791c4f77770e5213ce36fef66e278aca0ec7b2e081c8c3d747e6281d1e32"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
