
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.10/kdash-macos.tar.gz"
    sha256 "e6fdd27c00aeb830ef565521e19b839f21f157747c966f060dc7eb9adb14b4cd"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.10/kdash-linux-musl.tar.gz"
    sha256 "05176d41245106f20a76ba2e2441a72ebc9e03f61e45c6be874bbed816023048"
  end
  version "v0.0.10"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end