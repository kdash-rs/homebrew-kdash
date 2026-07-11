
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v2.1.0/kdash-macos-arm64.tar.gz"
    sha256 "9e13d96154abcd1a8b48e301f203489f4746d8054dbb35a348806378678a65db"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v2.1.0/kdash-macos.tar.gz"
    sha256 "f9dc045a8dddd926c80fa3bdf088f5a9149d4578eaefe9d6ba664429dee1eeb3"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v2.1.0/kdash-linux-musl.tar.gz"
    sha256 "c28618a30ccbd4326221dbe682959a84d0007ce3dedf2ae3c20a6a1f7bab7822"
  end
  version "v2.1.0"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end