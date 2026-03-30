class Diskforge < Formula
  desc "Intelligent disk cleanup CLI for developers"
  homepage "https://github.com/joicodev/diskforge"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joicodev/diskforge/releases/download/v#{version}/diskforge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d340b38519ecaec72c76121d6291fca0b1e68ee34c50b9781f1322758ec4b44a"
    end

    on_intel do
      url "https://github.com/joicodev/diskforge/releases/download/v#{version}/diskforge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "cb0a6ea25d4d76bbc8942e6d719a1298201dbfbcb9d42f395964a4e004369016"
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
