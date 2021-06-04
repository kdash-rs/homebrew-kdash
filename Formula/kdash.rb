
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.1.1/kdash-macos.tar.gz"
    sha256 "9d635d2c6ce6a950dde8d37eefc99542356de6daf69be7161392bfa582aac663"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.1.1/kdash-linux-musl.tar.gz"
    sha256 "b35f94244c8023e36e31fe8b40f9a64ba12a58d1008ee074ad6ba53491e80b84"
  end
  version "v0.1.1"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end