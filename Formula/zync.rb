class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.405"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.405/zync-0.0.405-darwin-arm64.tar.gz"
      sha256 "b556c7fa655c2cfd3a7dd4970ad230ef1baa9ec6efaf3ed6868892877c869c1b"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.405/zync-0.0.405-darwin-amd64.tar.gz"
      sha256 "fd432d2154e314c651e85cc39bdcbcc54536cf4e79096e00a2a883b356659b3c"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
