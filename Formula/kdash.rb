
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.4/kdash-macos.tar.gz"
    sha256 "48ae0d4d912b414de76883622faa4e96f05520a0db04673ee25b53b608f7462e"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.4/kdash-linux-musl.tar.gz"
    sha256 "b6c3deec6dd012896df2a3ea64dbea588811894d3e4c4471c0a1758734d529b8"
  end
  version "v0.0.4"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end