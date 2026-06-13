class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.401"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.401/zync-0.0.401-darwin-arm64.tar.gz"
      sha256 "f0f7fbd4bada2abec4bf15564806d2b546a0d341c4718d3dc3b0780ed2a07c3c"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.401/zync-0.0.401-darwin-amd64.tar.gz"
      sha256 "a4da5cf57dfa3a78ad7cb518a9098725f8b1dff8c98f8a5b788401fb890e7eea"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
