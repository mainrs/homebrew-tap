class GitCm < Formula
  desc "CLI for creating conventional-commits friendly commit messages"
  homepage "https://github.com/SirWindfield/git-cm"
  url "https://github.com/SirWindfield/git-cm/archive/v0.1.4.tar.gz"
  sha256 "cb77242304cb3467726fd4dea04161419a23e663bfc406736c4559c27f69306f"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/SirWindfield/git-cm.git"

  depends_on "rust" => :build
  depends_on :macos
  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-cm", "help"
  end
end
