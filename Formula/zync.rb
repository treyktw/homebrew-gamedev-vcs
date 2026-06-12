class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.313"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.313/zync-0.0.313-darwin-arm64.tar.gz"
      sha256 "98f02ee0168a99a991eaec37c5a4c41b046f9d8aa769597b5dd2c7bdff817a6a"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.313/zync-0.0.313-darwin-amd64.tar.gz"
      sha256 "2908c0e30ba9170ce976e7e53d713c31e0e75903bbd8be026391b645796988a1"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
