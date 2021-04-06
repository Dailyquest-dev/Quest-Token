pragma solidity ^0.5.0;

import "../GSN/Context.sol";
import "../token/ERC20/ERC20.sol";
import "../token/ERC20/ERC20Detailed.sol";
import "../token/ERC20/ERC20Burnable.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
 
contract Questtoken is Context, ERC20, ERC20Detailed, ERC20Burnable {

    constructor () public ERC20Detailed("Quest Token", "Quest", 18) {
        _mint(_msgSender(), 2100000000 * (10 ** uint256(decimals())));
    }
}
