
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v2.1.1/kdash-macos-arm64.tar.gz"
    sha256 "9090a94d6fdd31c1142238330aa9a175fa5e3020706d5ed503ba32e9e8a15abf"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v2.1.1/kdash-macos.tar.gz"
    sha256 "41592507b6c6373ab0cfe6ce337dc00d087937c2b7ad691a378442c4067386e9"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v2.1.1/kdash-linux-musl.tar.gz"
    sha256 "55b32d7d953ff40f3dc6ff8425bd95391fa6d2c3e935950457bc033201e5c9f4"
  end
  version "v2.1.1"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end