class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.31/vsc-0.0.31-darwin-arm64.tar.gz"
      sha256 "2108efe956f8a15871b5353a5556e9caf6c3b4c51a116bb0634e869e7c4f126a"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.31/vsc-0.0.31-darwin-amd64.tar.gz"
      sha256 "aeeedbf5e7797ad259d9b616d69e897a78e101ece413611e2a83c79c756b70e8"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
