
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.9/kdash-macos.tar.gz"
    sha256 "07286bd3d264be8fbfae698fcd9e606320eddf38b5f7fd90fb71fdff6ea62f84"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.9/kdash-linux-musl.tar.gz"
    sha256 "04f443bf9bf89d33a27b4df6fed43a0f262dfa79bbc3a92c728d3ca95abeb82f"
  end
  version "v0.0.9"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end