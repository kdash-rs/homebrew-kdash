
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.10/kdash-macos.tar.gz"
    sha256 "005515c395d4c4e2610cbcfeb6786d671626988766a7f16dc5dd61c046c38963"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.10/kdash-linux-musl.tar.gz"
    sha256 "7e8d020ec2d871beb067cd3a25f207a03d03cacd2465740c620374bccb7ef7c0"
  end
  version "v0.0.10"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end