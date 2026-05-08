class Zigtsc < Formula
  desc "TypeScript subset compiler targeting C, C++, and JavaScript"
  homepage "https://github.com/nathanjmorton/zigtsc"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-aarch64-macos.tar.gz"
      sha256 "c30182c27f5751e41fe0d53aaedffd65aa5b7cc39cc019d9b90c2340b0f1f623"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-x86_64-macos.tar.gz"
      sha256 "5f922fffb5eedc626115d58da1396953a598a908432a8cab64ddb66126632fed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-aarch64-linux-gnu.tar.gz"
      sha256 "23394efdc73932747f2ac19ae14763a24cab8e3694e71ab713bbfbd16d884160"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-x86_64-linux-gnu.tar.gz"
      sha256 "e1c063b5fd777aca8f4e1b7a66bdd7839450201513b3a3f979e3cf8749ddcc3a"
    end
  end

  def install
    bin.install "zigtsc"
  end

  test do
    system "#{bin}/zigtsc", "--help"
  end
end
