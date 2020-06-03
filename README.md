<h1 align="center">
<br>
  <img src="https://berty.tech/img/berty.svg" alt="Yolo - The Berty Project" height="300px">
  <br>
</h1>

<h3 align="center">Berty is a secure peer-to-peer messaging app that works with or without internet access, cellular data or trust in the network</h3>

<p align="center">
    <a href="https://berty.tech"><img alt="Made by Berty Technologies" src="https://assets.berty.tech/files/badge--10.svg" /></a>
    <a href="https://crpt.fyi/berty-discord"><img alt="discord" src="https://img.shields.io/badge/discord-gray?logo=discord" /></a>
    <a href="https://github.com/berty"><img alt="github" src="https://img.shields.io/badge/@berty-471961?logo=github" /></a>
    <a href="https://twitter.com/berty"><img alt="twitter" src="https://img.shields.io/twitter/follow/berty?label=%40berty&style=flat&logo=twitter" /></a>
    <a href="https://pkg.go.dev/berty.tech/ipfs-webui-packed?tab=doc"><img alt="go.dev reference" src="https://img.shields.io/badge/go.dev-reference-007d9c?logo=go&logoColor=white" /></a>
    <a href="https://github.com/berty/ipfs-webui-packed/releases"><img alt="GitHub release" src="https://img.shields.io/github/v/release/berty/ipfs-webui-packed" /></a>

</p>

> [IPFS webui](https://github.com/ipfs-shipyard/ipfs-webui) embedded in an easy-to-import golang library.

This repo allows another golang project to embed the IPFS webui easily.

The "master" branch contains the generation and release scripts but is not directly usable.

## Install

`go get berty.tech/ipfs-webui-packed`

## Getting Started

```golang
import ipfswebui "berty.tech/ipfs-webui-packed"

dir := http.FileServer(ipfswebui.Dir())
http.ListenAndServe(":3000", dir)
```

### Troubleshooting

_(please use [issues](https://github.com/berty/ipfs-webui-packed))_

## Development

TODO

### Architecture

TODO

### Testing

TODO

## Contributing

[![Contribute to Berty](https://assets.berty.tech/files/contribute-contribute_v2--Contribute-berty-ultra-light.gif)](https://github.com/berty/community)

If you want to help out, please see [CONTRIBUTING.md](./CONTRIBUTING.md).

This repository falls under the Berty [Code of Conduct](https://github.com/berty/community/blob/master/CODE_OF_CONDUCT.md).

You can contact us on the [`#dev-💻`](https://crpt.fyi/berty-dev-discord) channel on [discord](https://crpt.fyi/berty-discord).

## License

### ipfs-webui

This project embeds ipfs-webui which is licensed under MIT (https://github.com/ipfs-shipyard/ipfs-webui/blob/master/LICENSE).

### Rest of the repo (scripts and helpers)

Dual-licensed under [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0) and [MIT](https://opensource.org/licenses/MIT) terms.

`SPDX-License-Identifier: (Apache-2.0 OR MIT)`

See the [COPYRIGHT](./COPYRIGHT) file for more details.
