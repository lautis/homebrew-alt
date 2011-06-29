require 'formula'

class RtmpdumpYle < Formula
  depends_on 'json-c'
  url 'http://users.tkk.fi/~aajanki/rtmpdump-yle/rtmpdump-yle-1.4.2.tar.gz'
  homepage 'http://users.tkk.fi/~aajanki/rtmpdump-yle/index.html'
  md5 '5bdbf955d3b4ddb06eaa13b326d9d80d'

  def install
    ENV["INC"] = "-I#{HOMEBREW_PREFIX}/include/json"

    system "make", "SYS=darwin"
    system "make", "install", "SYS=darwin", "prefix=#{prefix}", "mandir=#{man}"
  end
end
