QR Code Encoder
===============

Reference used was ISO/IEC 18004, 1st Edition (2000)

This implementation is informed by my specific needs, i.e. to provide
two-factor authentication for mobile phones running Google Authenticator.

+ "Byte" mode only (don't need e.g. numeric mode or kanji mode).
+ Encode only (no detection/decode).
+ Basic supporting library functions provided (HOTP, PNG image functions) to allow full-cyle demo.

How to use QR Code Encoder with Elixir
======================================

Add :qrcode to `mix.deps`
::

    defp deps do
      [{:qrcode, github: "SiliconJungles/elixir-qrcode"}]
    end

Then run:
::

    mix deps.get
    mix deps.compile

Then, whenever you have this compiled, you should have access to the functions available in elixir.

    iex(1)> qrcode = :qrcode.encode("bla")
    {:qrcode, 1, :M, 29,
     <<0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 254, 211, 248, 4, 16, 208, 64, 46, 152, ...>>}
     iex(2)> png = :qrcode_demo.simple_png_encode(qrcode)
     <<137, 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 232, 0, 0, 0, ...>>
     iex(3)> :file.write_file(“example.png”, png)
     :ok

How to use QR Code Encoder with OTP apps and Distillery
====

Add :qrcode to `mix.deps`
 ::

     defp deps do
       [{:qrcode, github: "SiliconJungles/elixir-qrcode"}]
     end


