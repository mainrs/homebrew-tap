class GitCm < Formula
  desc "CLI for creating conventional-commits friendly commit messages"
  homepage "https://github.com/SirWindfield/git-cm"
  url "https://github.com/SirWindfield/git-cm/archive/v0.2.3.tar.gz"
  sha256 "1a8960058f7eaff99098e80d9f91017515ed1c2d5f2c337f756a553ffc4a4ff9"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/SirWindfield/git-cm.git"

  depends_on "rust" => :build
  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-cm", "help"
  end
end
