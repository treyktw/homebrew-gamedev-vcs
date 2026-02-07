class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.1/vsc-0.0.1-darwin-arm64.tar.gz"
      sha256 "ef141b188f199b2e0be87bed4bb5c31136ebbb3f4e28d9335d272595d441894b"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.1/vsc-0.0.1-darwin-amd64.tar.gz"
      sha256 "615e865766c8d1d2ca596d289b7900d52c8829dba3102bd9b85e48d9400c4a41"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
