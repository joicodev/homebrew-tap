class Diskforge < Formula
  desc "Intelligent disk cleanup CLI for developers"
  homepage "https://github.com/joicodev/diskforge"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joicodev/diskforge/releases/download/v#{version}/diskforge-v#{version}-aarch64-apple-darwin.tar.gz"
      # To be updated with: shasum -a 256 diskforge-v0.6.0-aarch64-apple-darwin.tar.gz
      sha256 "REPLACE_WITH_ARM64_SHA256"
    end

    on_intel do
      url "https://github.com/joicodev/diskforge/releases/download/v#{version}/diskforge-v#{version}-x86_64-apple-darwin.tar.gz"
      # To be updated with: shasum -a 256 diskforge-v0.6.0-x86_64-apple-darwin.tar.gz
      sha256 "REPLACE_WITH_X86_64_SHA256"
    end
  end

  def install
    bin.install "diskforge"
    doc.install "LICENSE"
  end

  test do
    assert_match "diskforge #{version}", shell_output("#{bin}/diskforge --version")
  end
end
