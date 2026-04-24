
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v1.1.0/kdash-macos-arm64.tar.gz"
    sha256 "e19ec4ed1d8d3d855f7668d38ab31e1ae090ae61937f8fde55a44e4aba834f2b"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v1.1.0/kdash-macos.tar.gz"
    sha256 "8b55a1c82d6fb406d6ec5fbf176ac2eec24f05c89bc4e5126e1e639fe8a62b49"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v1.1.0/kdash-linux-musl.tar.gz"
    sha256 "3f6d7c15ee99cbfa67e9cc668192dc63fa211b9dc6dd50cd3df59b0081580e27"
  end
  version "v1.1.0"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end