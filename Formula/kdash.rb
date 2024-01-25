
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.6.0/kdash-macos-arm64.tar.gz"
    sha256 "fc9c16b9eaed6acbe581312dc6567603d056e28e16149c58310eb5289577d19f"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.6.0/kdash-macos.tar.gz"
    sha256 "68d1377dacbdbcc591af693e6ceeabc031c646dbc8d095181d18822d96927cb3"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.6.0/kdash-linux-musl.tar.gz"
    sha256 "9359fbe836f1d4404eab3ae0f1b62c6e5620f4d830b8a2f7e47c88e4411bf090"
  end
  version "v0.6.0"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end