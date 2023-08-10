# Token Creation in Solidity

In my project, I have used the basic knowledge of solidity to create my token called Aditya and I have added few functions as well.

## Description

The token that I created can mint as well as burn tokens i.e. it can add some tokens into the balance of the account addres that we provide in the input or it can also remove the tokes from that respective address. After implementing all the functionalities, you can check the balance of the account by providing the account address.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ADI.sol). Copy and paste the following code into the file:

```javascript
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile ADI.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ADI" contract from the dropdown menu, and then click on the "Deploy" button.


## Authors

Aditya K

@adityaaakushal@gmail.com

## License

This project is licensed under the MIT License
