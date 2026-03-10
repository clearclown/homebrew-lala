class Lala < Formula
  desc "Modern, lightweight multi-format text editor"
  homepage "https://github.com/clearclown/lala"
  url "https://github.com/clearclown/lala/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "f76a898a5a2fa7281f6e69d5e5f8f3074415c675a9f09732e3bd7777658ef941"
  license "MIT OR Apache-2.0"
  head "https://github.com/clearclown/lala.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lala", shell_output("#{bin}/lala --version")
  end
end
