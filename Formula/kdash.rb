
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.3/kdash-macos.tar.gz"
    sha256 "3327b0b008f9cb0f2e8d71c9276a3419258101835f6d4564510f6740ed01f185"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.3/kdash-linux-musl.tar.gz"
    sha256 "f662293261817270b628276f1f934e98e59ed71e0945f94bf6c34252ec16e606"
  end
  version "v0.2.3"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end