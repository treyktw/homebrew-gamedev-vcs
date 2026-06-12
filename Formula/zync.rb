class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.313"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.313/zync-0.0.313-darwin-arm64.tar.gz"
      sha256 "613698cb090014580e547e8e123e32795003e8d797eb461acaaa6c5f2a2490fe"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.313/zync-0.0.313-darwin-amd64.tar.gz"
      sha256 "23364df00244e866384a4511c717227adc5ff43e6c11fc65fc87494a192c9cba"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
