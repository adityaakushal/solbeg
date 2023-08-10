// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;                               //compiler version -- Most common == Change compiler if not compatible

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value.
       The function then increases the total supply by that number and increases the balance
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens.
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal
       to the amount that is supposed to be burned.
*/

contract MyToken {                                          

    // public variables here
    string public tokenname="Aditya";                        // token details
    string public tokenabbrv="ADI";
    uint public totalsupply=0;                               // balance is empty
    // mapping variable here   --- used to access each and every address and and is stored in balance
    mapping(address => uint)public balance;

    // mint function   --- depositing tokens  --- address, value
    function mint(address _tomint, uint  _tomintvalue)public {
      totalsupply += _tomintvalue;
      balance[_tomint] += _tomintvalue;
   }
    // burn function   --- withdrawing tokens --- address, value
   function burn(address _toburn, uint _toburnvalue)public {
      if(balance[_toburn]>= _toburnvalue){
        totalsupply -= _toburnvalue;
        balance[_toburn] -= _toburnvalue;
      }
     }  //total supply contains balance of all accounts/ adresses you have
  }     // account = msg sender
