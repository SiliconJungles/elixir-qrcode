defmodule QRCode.Mixfile do
  use Mix.Project

  def project do
    [app: :qrcode,
     version: "0.0.1",
     language: :erlang,
     deps: deps]
  end

  def application do
    [applications: [], mod: {:qrcode, []}]
  end

  defp deps do
    [
    ]
  end
end

