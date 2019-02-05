# Publish2ensIpfs

Helper script for publishing with ENS and IPFS.

## Requirements

This is an Elixir application. Here is [how to install](https://elixir-lang.org/install.html) Elixir.

## Building

To build the script run:


```bash
mix escript.build
mix escript.install
```

## Using
Add contents of your website to ipfs using `ipfs add -r DIR`, get the IPFS cid.
Next, convert cid to form acceptable by ENS content field:

```bash
$ publish2ens_ipfs --convert QmayQq2DWCkY3d4x3xKh4suohuRPEXe2fBqMBam5xtDj3t

bbb709bb1c1fd9107d81083f36e36dd971e4fbfe4577a86a53d1910e3bcdbdff
```

Next, set the `content` field of your ens domain. Done!
Page should be accessible with Firefox + Metamask + IPFS companion or with Status on Android.
