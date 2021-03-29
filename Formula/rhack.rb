class Rhack < Formula
  desc "Temporary edit Rust libraries that your project depends on"
  homepage "https://github.com/nakabonne/rhack"
  url "https://github.com/nakabonne/rhack/archive/v0.1.0.tar.gz"
  sha256 "916cebfe0604e18149a7cde5d0731b63b8197c4d95b7222bc6e00b8308a24ebe"
  license any_of: ["BSD-3-Clause"]
  head "https://github.com/nakabonne/rhack"

  bottle do
    root_url "https://github.com/SirWindfield/homebrew-tap/releases/download/rhack-0.1.0"
    sha256 cellar: :any_skip_relocation, catalina:     "4eaa026a7153ed1c9762d4e56208a4981786edbe201c0a59c60326ae17ddff9a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d6f4912da20ee173fcc5d6a46eb8e6c76ecf6d272c8dee3d2832effc1cc16ead"
  end

  depends_on "rust" => :build
  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/rhack", "help"
  end
end
