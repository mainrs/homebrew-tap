class GitCm < Formula
  desc "CLI for creating conventional-commits friendly commit messages"
  homepage "https://github.com/SirWindfield/git-cm"
  url "https://github.com/SirWindfield/git-cm/archive/v0.2.0.tar.gz"
  sha256 "31bf6fc7b285ac3d5516a9e1d659f35a024afae6f211a8f92f4832e6d9c155ad"
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
