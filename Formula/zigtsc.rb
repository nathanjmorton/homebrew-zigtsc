class Zigtsc < Formula
  desc "TypeScript subset compiler targeting C, C++, and JavaScript"
  homepage "https://github.com/nathanjmorton/zigtsc"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-aarch64-macos.tar.gz"
      sha256 "bac7be7caa2ffb448d1bf09c72e16720cdba518d92643c453d2e2b2dcd2e201f"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-x86_64-macos.tar.gz"
      sha256 "2ac7b36bd4891941c7a70886de4ae413750272c931fa3e40267116ec6f56660e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-aarch64-linux-gnu.tar.gz"
      sha256 "7b6d52b55d5ee2e00e15ecf73df53c39604940db0e84fb200dd6f9895525373e"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-x86_64-linux-gnu.tar.gz"
      sha256 "b2707f5ffc7356640ed1891814d070d75a9529eccdf5e035c69338442283070b"
    end
  end

  def install
    bin.install "zigtsc"
  end

  test do
    system "#{bin}/zigtsc", "--help"
  end
end
