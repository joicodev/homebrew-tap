class Diskforge < Formula
  desc "Intelligent disk cleanup CLI for developers"
  homepage "https://github.com/joicodev/diskforge"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joicodev/diskforge/releases/download/v#{version}/diskforge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5ef9d548bdaf15686e87cb44ca62efd8c1c668923d49060a077eaccb7ed74ccf"
    end

    # Intel support disabled until binaries are generated
    # on_intel do
    #   url "https://github.com/joicodev/diskforge/releases/download/v#{version}/diskforge-v#{version}-x86_64-apple-darwin.tar.gz"
    #   sha256 "REPLACE_WITH_X86_64_SHA256"
    # end
  end

  def install
    bin.install "diskforge"
    doc.install "LICENSE"
  end

  test do
    assert_match "diskforge #{version}", shell_output("#{bin}/diskforge --version")
  end
end
