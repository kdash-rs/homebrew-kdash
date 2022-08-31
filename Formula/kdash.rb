
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.5/kdash-macos.tar.gz"
    sha256 "274daa99bb6bd9d79314141128b2f0b335e49f837313986b251a8ec859f08670"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.5/kdash-linux-musl.tar.gz"
    sha256 "a35b2a8d255fd18b68f52da43bf9d09e462fdfa55e48cf2f83ba1bece0b06801"
  end
  version "v0.3.5"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end