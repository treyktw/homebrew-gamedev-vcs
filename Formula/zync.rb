class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.510"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.510/zync-0.0.510-darwin-arm64.tar.gz"
      sha256 "78f9bb997b677e4c39ef21ea31e336a8b9e47e0c2dec9d0a4664d287e4865b61"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.510/zync-0.0.510-darwin-amd64.tar.gz"
      sha256 "90a88d8bf45c93d1b9a4d41389d074ced7adf12ffcb2b735beea41e6e13dc3dd"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
