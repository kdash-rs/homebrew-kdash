
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v1.0.0/kdash-macos-arm64.tar.gz"
    sha256 "30f58c2257ec44186e7455d81b93848b956b7aabda645f55716a7142a4a43611"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v1.0.0/kdash-macos.tar.gz"
    sha256 "bf6b1d9f839292618514f16ad839e0d9dda5c52f20d9fbd005639a9f2ff2a4ec"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v1.0.0/kdash-linux-musl.tar.gz"
    sha256 "b1578b635df3bf8d1bd749d4584793b3d138c67c4d162dde4716122037648fbf"
  end
  version "v1.0.0"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end