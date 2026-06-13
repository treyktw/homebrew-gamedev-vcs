class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.4/zync-0.0.4-darwin-arm64.tar.gz"
      sha256 "2b87a94335f4004a96f460f1e42684f84034eaa3d6902bff56d0888797c4218a"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.4/zync-0.0.4-darwin-amd64.tar.gz"
      sha256 "400a8b9ec6a469ad862dd742f174cf5f36428a0ece4317eb7b2fd6e0de69b191"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
