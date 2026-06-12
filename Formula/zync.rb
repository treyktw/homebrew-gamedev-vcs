class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.317"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.317/zync-0.0.317-darwin-arm64.tar.gz"
      sha256 "f045eefc933bbf435b9d296dc3aad617f094e61759ec0e78732f281241aa4a3e"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.317/zync-0.0.317-darwin-amd64.tar.gz"
      sha256 "2058909b21ff8dad1ce5d2ddacb25d2012a0c20635cc38866d9c3f1ecb9f493a"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
