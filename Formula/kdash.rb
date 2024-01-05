
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.5/kdash-macos.tar.gz"
    sha256 "5c0c238205dd16cb6fe1e33c181765553510d39773ff5d00982056c4966d31f9"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.5/kdash-linux.tar.gz"
    sha256 "9d7d67f60ec3c1c139e4f31a38a4662ddaf7c390c605e97da5f3966a86985503"
  end
  version "v0.4.5"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end