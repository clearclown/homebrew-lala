class Lala < Formula
  desc "Modern, lightweight multi-format text editor"
  homepage "https://github.com/clearclown/lala"
  url "https://github.com/clearclown/lala/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3e0891cce56f4b884b14b1ad2242b3849f256957e0849d94d48de636e567cca0"
  license "MIT OR Apache-2.0"
  head "https://github.com/clearclown/lala.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lala", shell_output("#{bin}/lala --version")
  end
end
