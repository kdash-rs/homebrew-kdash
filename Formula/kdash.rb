
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v2.0.2/kdash-macos-arm64.tar.gz"
    sha256 "a37d700ab1d3680c60e6690d84143e70e08ec4e7ea8edff000e991f3b99a708c"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v2.0.2/kdash-macos.tar.gz"
    sha256 "030447c76dc2b818ff8be61cb43973ec233060df6a0d23468afd915959b10ad7"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v2.0.2/kdash-linux-musl.tar.gz"
    sha256 "7d2bfa6505c18b20ebcbc80c31a6ee1a02e0e2d1c0b69b49027f71f522a26920"
  end
  version "v2.0.2"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end