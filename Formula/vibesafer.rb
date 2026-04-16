class Vibesafer < Formula
  desc "Protect API secrets during VibeCoding — env injection, local proxy, log masking"
  homepage "https://github.com/jjjkkkjjj/vibesafer"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jjjkkkjjj/vibesafer/releases/download/v#{version}/vs-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_ARM"
    end
    on_intel do
      url "https://github.com/jjjkkkjjj/vibesafer/releases/download/v#{version}/vs-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_INTEL"
    end
  end

  on_linux do
    url "https://github.com/jjjkkkjjj/vibesafer/releases/download/v#{version}/vs-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER_LINUX"
  end

  def install
    bin.install "vs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vs --version")
  end
end
