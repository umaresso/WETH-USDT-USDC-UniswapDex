
//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <=0.8.7;

import "https://github.com/Uniswap/v2-core/blob/master/contracts/interfaces/IUniswapV2Factory.sol";
import "https://github.com/Uniswap/v2-core/blob/master/contracts/interfaces/IUniswapV2Pair.sol";

contract UniswapPairCreator{
IUniswapV2Factory factory;
constructor(address uniswapFactoryAddress)public {
factory=IUniswapV2Factory(uniswapFactoryAddress);

}

function createPair(address _tokenA,address _tokenB)public returns(address){
   (address pair) = factory.createPair(_tokenA, _tokenB);
   return address(pair);

}

 function getPair(address tokenA,address tokenB) public view returns (IUniswapV2Pair) {
        return IUniswapV2Pair(factory.getPair(tokenA, tokenB));
}


}
