// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/*
       ---           +=+                ===          
   =--======--   ========+==          =====----      
 --=======================++++        =======----    
--=====----===============+++++       =========---   
-====-     =========     =++++++       ==========-   
-----=      -=======      +++++++       ++========-  
-------      -=======      +++++++       +++======   
 -------      ========      +++++++       ++++===+   
  -------      =======+      =+++++++    ++++++==    
   -------      ========      ++++++++++++++++++     
    -------       =======       +++++++++++++++      
     -------       =======      *++++++++++++        
      -------       =======       ++++++++++         
       -------       =====+=       ++++++++          
        -------      -====+++      +++++++           
         --------  =---===+++++  ++++++++            
          --------------==++++++++++++++             
            -------------+=++++++++++++              
              --------      ++++++++                 
*/


/// @custom:security-contact stefan@welshare.health
contract WelToken is ERC20, ERC20Permit {

    uint256 public constant WEL_SUPPLY = 2_500_000_000 ether;
    constructor(address treasury) ERC20("WelToken", "WEL") ERC20Permit("WelToken")  {
        _mint(treasury, WEL_SUPPLY);
    }
}





