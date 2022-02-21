# Solidity Tokens

This repo have multiple token formats for test purposes, its an [ERC20](#ERC20), [ERC721](#ERC721) and ERC1155 deployed over multiple chain's. 

To mint each of the token go to blockchain explorer using the below table then use method mint() with 0 on the parameter this will mint any of the token to your wallet. 

You will need some ethers (ETH) to pay for the network transaction fees. See [Testnet Ether Faucets](#testnet-ether-faucets) below to obtain testnet ethers.


# ERC20

<br />

Symbol | Decimals | Faucet Drip Rate | [Mumbai](https://mumbai.polygonscan.com/) | [Ropsten](https://ropsten.etherscan.io/) |  [Kovan](https://kovan.etherscan.io/) | [Rinkeby](https://rinkeby.etherscan.io/) | [Görli](https://goerli.etherscan.io/)  
:----- | --------:| ----------------:|:------- |:------- |:------- |:----- |:-----
[IO](contracts/erc20.sol) | 18 | 10 | [0x93..f44](https://mumbai.polygonscan.com/address/0x93cdc98317A07e83a9AA96F69AdA7Af4b37EBf44#code) | [0x93..f44](https://mumbai.polygonscan.com/address/0x93cdc98317A07e83a9AA96F69AdA7Af4b37EBf44#code) | [0x93..f44](https://mumbai.polygonscan.com/address/0x93cdc98317A07e83a9AA96F69AdA7Af4b37EBf44#code) | [0x93..f44](https://mumbai.polygonscan.com/address/0x93cdc98317A07e83a9AA96F69AdA7Af4b37EBf44#code) | [0x93..f44](https://mumbai.polygonscan.com/address/0x93cdc98317A07e83a9AA96F69AdA7Af4b37EBf44#code) | [0x93..f44]


<hr />

# ERC721

For minting a randon NFT use table below then click method mint() it mint a random NFT for your wallet

Its possible to explore your collection using opensea interface : https://testnets.opensea.io/collection/demonstrating-collection-for-tests-purposes-by-m-1

Testnet   | Explorers                     | 
:-------- |:----------------------------- |
mumbai   | [0xF76...F55](https://mumbai.polygonscan.com/address/0xf601c5489beaCFDB3F318B229114253F7111fA41#code)|
mumbai   | [0xF76...F55](https://mumbai.polygonscan.com/address/0xf601c5489beaCFDB3F318B229114253F7111fA41#code)|
mumbai   | [0xF76...F55](https://mumbai.polygonscan.com/address/0xf601c5489beaCFDB3F318B229114253F7111fA41#code)|


# ERC1155

For minting a randon NFT use table below then click method mint() it mint a random NFT for your wallet

Its possible to explore your collection using opensea interface : https://testnets.opensea.io/collection/demonstrating-collection-for-tests-purposes-by-m-2


Testnet   | Explorers                     | 
:-------- |:----------------------------- |
mumbai   | [0xF76...F55](https://mumbai.polygonscan.com/address/0x5da9F2d6E8dC4E68923d6c3d88535317ba3bB7eC#code)|
mumbai   | [0xF76...F55](https://mumbai.polygonscan.com/address/0x5da9F2d6E8dC4E68923d6c3d88535317ba3bB7eC#code)|



<br />

# Testnet Ether Faucets

Testnet   | Explorers                     | Testnet ETH Faucets
:-------- |:----------------------------- |:-------------------------
Ropsten   | https://ropsten.etherscan.io/ | https://faucet.metamask.io/<br />https://twitter.com/BokkyPooBah/status/1099498823699714048
Kovan     | https://kovan.etherscan.io/   | https://faucet.kovan.network/<br />https://github.com/kovan-testnet/faucet<br />https://faucet.kovan.radarrelay.com/
Rinkeby   | https://rinkeby.etherscan.io/ | https://faucet.rinkeby.io/<br />https://faucet.metamask.io/
Görli     | https://goerli.etherscan.io/  | https://faucet.goerli.mudit.blog/<br />https://goerli-faucet.slock.it/<br />https://bridge.goerli.com/
Mumbai    | https://mumbai.polygonscan.com/  | https://faucet.polygon.technology/

<br />
