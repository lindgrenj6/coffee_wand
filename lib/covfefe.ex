defmodule Covfefe do
  def main([]), do: covfefe()
  def main(["on"]), do: covfefe(:ON)
  def main(["off"]), do: covfefe(:OFF)

  defp covfefe do
    stat = File.lstat!("/home/jlindgren/.covfefe", time: :local)
  end

  defp covfefe(cmd) do
    case System.cmd("docker", ~w(run --rm #{image()} -h #{host()} --action #{cmd})) do
      {_output, 0} ->
        IO.puts "Covfefe is #{cmd}"
      {_output, code} ->
        IO.puts "Something happened, rc: #{code}"
    end
  end

  defp image, do: Application.get_env(:covfefe, :image)
  defp host, do: Application.get_env(:covfefe, :wemo_ip)
end
