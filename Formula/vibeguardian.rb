class Vibeguardian < Formula
  desc "Protect API secrets during VibeCoding — env injection, local proxy, log masking"
  homepage "https://github.com/jjjkkkjjj/vibeguardian"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jjjkkkjjj/vibeguardian/releases/download/v#{version}/vg-aarch64-apple-darwin.tar.gz"
      sha256 "9dd13ab707d2f2ce99629955a93f66a357904fd3d34a0a7164000f72e186becb"
    end
    on_intel do
      url "https://github.com/jjjkkkjjj/vibeguardian/releases/download/v#{version}/vg-x86_64-apple-darwin.tar.gz"
      sha256 "131fc87f21487fb14ab237f4064374d8785d430369e83f4ba67ed3cdb2139366"
    end
  end

  on_linux do
    url "https://github.com/jjjkkkjjj/vibeguardian/releases/download/v#{version}/vg-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "385e7e14e937434043d7b7ca6d166f8e69464b84f19ada844e1db08cda3af6b2"
  end

  def install
    bin.install "vg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vg --version")
  end
end
