
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.7/kdash-macos.tar.gz"
    sha256 "f650950849a317d545ae9ef6bf46f552f58d4d231b47599f337fb9ca410479e5"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.7/kdash-linux-musl.tar.gz"
    sha256 "c5d7a91bcc3c6d7ad0c9931f220d6726c76b5947574b37baf0cdd33301a6aaee"
  end
  version "v0.3.7"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end