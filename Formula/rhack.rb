class Rhack < Formula
  desc "Temporary edit Rust libraries that your project depends on"
  homepage "https://github.com/nakabonne/rhack"
  url "https://github.com/nakabonne/rhack/archive/v0.1.0.tar.gz"
  sha256 "916cebfe0604e18149a7cde5d0731b63b8197c4d95b7222bc6e00b8308a24ebe"
  license any_of: ["BSD-3-Clause"]
  head "https://github.com/nakabonne/rhack"

  depends_on "rust" => :build
  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/rhack", "help"
  end
end
