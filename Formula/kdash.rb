
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.6.1/kdash-macos-arm64.tar.gz"
    sha256 "1fef1df4d3395d6b3c8da77c050e887f612f5de286c8c81d64420ab153fec9b9"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.6.1/kdash-macos.tar.gz"
    sha256 "655531680282caef17cd3f2632b08cdb7bb4221693e1808e5060f83edea35dd0"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.6.1/kdash-linux-musl.tar.gz"
    sha256 "5ce3e65d4df5e7a173e214d4ce9cde3cdc72943a0b18241b6a1a79e964bfe516"
  end
  version "v0.6.1"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end