class Zigtsc < Formula
  desc "TypeScript subset compiler targeting C, C++, and JavaScript"
  homepage "https://github.com/nathanjmorton/zigtsc"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-aarch64-macos.tar.gz"
      sha256 "86984d28db074f0a3f757ab502a225e9e6a9d7cde86967c9eb0331c0959e19b7"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-x86_64-macos.tar.gz"
      sha256 "68cfadcb72a4658def17404e3715e2a1925e370c25f5afffe87d72d0bea47c8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-aarch64-linux-gnu.tar.gz"
      sha256 "158d5f5c5e826598c5b014e3397d5f5dc6b8b98b55f22afc4ec078f96af44a75"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-x86_64-linux-gnu.tar.gz"
      sha256 "a483a23691166b211b872f458ec9250476ee7a5b2f0988969484c776c8e341e7"
    end
  end

  def install
    bin.install "zigtsc"
  end

  test do
    system "#{bin}/zigtsc", "--help"
  end
end
