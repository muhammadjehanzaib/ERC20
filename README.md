## ERC20 

**Erc20 by using openzeppelin and foundry framwork for testing**

## Getting Started
### Requirements

* git
  * You'll know you did it right if you can run git --version and you see a response like git version x.x.x
* foundry
  * You'll know you did it right if you can run forge --version and you see a response like forge 0.2.0 (816e00b 2023-03-16T00:05:26.396218Z)


### Quickstarted

```shell
$ git clone https://github.com/muhammadjehanzaib/ERC20.git
$ cd ERC20
$ forge install 
$ forge build

```

### Start a local node
 ```shell
 $ anvil
 ```

 ### Deploy
 **This will default to your local node. You need to have it running in another terminal in order for it to deploy.**
 ```shell
 $ forge script script/DeployOurToken.s.sol --rpc-url http://localhost:8545
 ```

 ### Testing 
 ```shell
 $ forge test
 ```

 ### Test Converage
 ```shell
$ forge coverage
 ```

### Estimate Gas
```shell
$ forge snapshot
```

### Formating
```shell
$ forge fmt
```

# Thank You
