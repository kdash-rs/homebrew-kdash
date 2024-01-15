
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.7/kdash-macos.tar.gz"
    sha256 "0534fe81d713c584b4ea87f8486d3e29420022a1a3fff964b7e97c174a75e6b3"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.7/kdash-linux.tar.gz"
    sha256 "fc4a6c76fee30205148cbc01f5a10226609764d1474a305e0a85e5054acc2f2e"
  end
  version "v0.4.7"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end