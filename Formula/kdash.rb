
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.2/kdash-macos.tar.gz"
    sha256 "4d2cfd8140bdaf978b68a5758b7d12ecabf017591d6536968300be80449cbddf"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.2/kdash-linux-musl.tar.gz"
    sha256 "0204d68c171160c7a7e302d8ede1b1b61120b7c2f3daec36b19a52cb2e623785"
  end
  version "v0.4.2"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end