
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.7/kdash-macos.tar.gz"
    sha256 "6317a8716b9c80fb7d72c27f31308ebac047dec625a28a8df9c3b02509f5bbe0"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.7/kdash-linux-musl.tar.gz"
    sha256 "dd78842294475d2c28f228a32169515a779cd4d0f276ff7f28e044196bdcaec5"
  end
  version "v0.0.7"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end