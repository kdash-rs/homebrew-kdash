
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.0/kdash-macos.tar.gz"
    sha256 "1f575e351d8768254faf1d2f04c8f92a4fa69e2481795a666d1fd2c3695ab9ec"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.0/kdash-linux-musl.tar.gz"
    sha256 "799dc2e72b9260a13f844175e3c82e33c88aa90730d2db36a7b87d5929031c85"
  end
  version "v0.3.0"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end