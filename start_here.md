Start Here
==========


Running a testnet:

Add to zconf
```testnet=1
addnode=testnet.z.cash```

Run ./src/zcashd

Code:
```
main.h

ProcessMessages - Process messages from a given node



```

```
zcash-cli: 
takes in requests via rpcclient.cpp



```

```
init.cpp
Contents:
- Shutdown code for node
- Help Messages for cli

Methods:
- AppInit2 - Initialize bitcoin





```

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



Create a new z_address: Run `z_getnewaddress`

Code:

```
libzcash::PaymentAddress CWallet::GenerateNewZKey() `https://github.com/zcash/zcash/blob/3e38e248d5f43767940becdd4d51df8feaa7b707/src/wallet/wallet.cpp#L83`





```


Adresses will be added to the nodes wallet. Node wallet is stored in /home/.zcash/wallet.dat