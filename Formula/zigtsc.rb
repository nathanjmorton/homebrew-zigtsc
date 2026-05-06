class Zigtsc < Formula
  desc "TypeScript subset compiler targeting C, C++, and JavaScript"
  homepage "https://github.com/nathanjmorton/zigtsc"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-aarch64-macos.tar.gz"
      sha256 "cc983ed99e2bd2de7bc4026295f26752fe554622f5ed2f07239bdbb8f4a1164d"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-x86_64-macos.tar.gz"
      sha256 "fdafdeaaacc7d5d43590c71d9ad96f332b982e826db2dbac17ea0b2c37a89490"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-aarch64-linux-gnu.tar.gz"
      sha256 "38e275ea6cc19f9e1d39c00bf903e9991b1951d22f29fb69598bd6f2dbbfc566"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-x86_64-linux-gnu.tar.gz"
      sha256 "0ccb1b5011f59d40883884ce78e4b56e8dae25beaa10b00796a06f6568ce6be4"
    end
  end

  def install
    bin.install "zigtsc"
  end

  test do
    system "#{bin}/zigtsc", "--help"
  end
end
