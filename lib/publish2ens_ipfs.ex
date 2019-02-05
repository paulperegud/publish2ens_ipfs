defmodule Publish2ensIpfs do
  @moduledoc """
  Documentation for Publish2ensIpfs.
  """

  def main(args \\ []) do
    args
    |> parse_args()
    |> response()
    |> IO.puts()
  end

  def parse_args(args) do
    {opts, cid, _} =
      args
      |> OptionParser.parse(switches: [convert: :boolean, publish: :boolean])
    {opts, cid}
  end

  def response({[{:convert, true}], [cid]}) do
    cid_to_content_value(cid)
  end
  def response(_, _) do
    "Usage: publish2ens_ipfs --convert IPFS_HASH"
  end

  defp cid_to_content_value("Qm" <> _ = cid) do
    CID.decode!(cid)
    |> elem(0)
    |> Map.get(:multihash)
    |> Multihash.decode()
    |> elem(1)
    |> Map.get(:digest)
    |> Base.encode16(case: :lower)
  end

  defp cid_to_content_value(_) do
    "Unrecognized format. Value should begin with 'Qm'"
  end
end
