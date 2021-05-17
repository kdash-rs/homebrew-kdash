
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.1.0/kdash-macos.tar.gz"
    sha256 "141665a535c2f4d575ad6a8b232336f17a2b68dd99b228a6747f32a85d3fec46"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.1.0/kdash-linux-musl.tar.gz"
    sha256 "e9b7222ef2190c956ea06619cc5ecd9d80a16ffa94c197d9ad20feb7bd1ea5af"
  end
  version "v0.1.0"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end