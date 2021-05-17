
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.10/kdash-macos.tar.gz"
    sha256 "12358"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.10/kdash-linux-musl.tar.gz"
    sha256 "12345"
  end
  version "v0.0.10"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end