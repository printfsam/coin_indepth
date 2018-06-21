Cli Commands:


Follow Along from https://github.com/ChristopherA/Learning-Bitcoin-from-the-Command-Line/ but with zcash


Running a testnet
-----------------
Add to zconf
```testnet=1
addnode=testnet.z.cash```

Run ./src/zcashd

Code:
```
main.h

ProcessMessages - Process messages from a given node



```

zcash-cli: 
takes in requests via rpcclient.cpp



```

init.cpp
Contents:
- Shutdown code for node
- Help Messages for cli

Methods:
- AppInit2 - Initialize bitcoin





```

tinyformat.h - a typesafe printf in a single C++ file

```

```
util.cpp util.h
Contents:
- LogPrintf is defined here - saves outputs in /home/.zcash/debug.log
changed: 
bool fPrintToConsole = true;
bool fPrintToDebugLog = false;


```


Create A Wallet
---------------



Refer to https://github.com/zcash/zcash/blob/master/doc/payment-api.md for an indepth analysis



### Create a new z_address:

`./zcash-cli z_getnewaddress`

Adresses will be added to the nodes wallet. Node wallet is stored in /home/.zcash/wallet.dat

Get balance
-----------
`./zcash-cli getbalance`

Get unconfirmed balance
-----------------------
`./zcash-cli getunconfirmedbalance`

Get Confirmation depth
----------------------
`./zcash-cli getbalance "*" 1 \\ Confirms if the balance is '1' block deep` 

Get wallet info
---------------
```
./zcash-cli getwalletinfo
{
  "walletversion": 60000,
  "balance": 0.00000000,
  "unconfirmed_balance": 0.00000000,
  "immature_balance": 0.00000000,
  "txcount": 5,
  "keypoololdest": 1523036581,
  "keypoolsize": 101,
  "paytxfee": 0.00000000
}
```


List Transactions
-----------------
`./zcash-cli listtransactions`

List Unspent Tx's
-----------------
`./zcash-cli listunspent`