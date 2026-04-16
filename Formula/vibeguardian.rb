class Vibeguardian < Formula
  desc "Protect API secrets during VibeCoding — env injection, local proxy, log masking"
  homepage "https://github.com/jjjkkkjjj/vibeguardian"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jjjkkkjjj/vibeguardian/releases/download/v#{version}/vg-aarch64-apple-darwin.tar.gz"
      sha256 "f93717dea551402aa5a5c5d84272772d0a8d9c2b67e51dfd0d5ed34250f29353"
    end
    on_intel do
      url "https://github.com/jjjkkkjjj/vibeguardian/releases/download/v#{version}/vg-x86_64-apple-darwin.tar.gz"
      sha256 "b5da5d19a046995eaf0ab65da16b11604bb9d867ca64224a98dcda53e802f97d"
    end
  end

  on_linux do
    url "https://github.com/jjjkkkjjj/vibeguardian/releases/download/v#{version}/vg-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e4d8d88b21d687ca91bc1bf02482e4f9477f89a5e3d9fe56e2a11cfe622cc48"
  end

  def install
    bin.install "vg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vg --version")
  end
end
