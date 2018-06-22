Cli Commands:


Follow Along from https://github.com/ChristopherA/Learning-Bitcoin-from-the-Command-Line/ but with zcash


Running a testnet
-----------------
Add to zcash.conf
```
testnet=1
addnode=testnet.z.cash
```
```
$ ./src/zcashd
```

Commands
-----------

### Help
`./zcash-cli help`
* Displays commands

### Create an Address

### Sign a message

### Dump Your Wallet

### View Private Keys

### Get balance

`./zcash-cli getbalance`

### Get unconfirmed balance

`./zcash-cli getunconfirmedbalance`

### Get Confirmation depth

`./zcash-cli getbalance "*" 1 \\ Confirms if the balance is '1' block deep` 

### Get wallet info

```
./zcash-cli getwalletinfo
{
  "walletversion": 60000,
  "balance": 0.00000000,
  "unconfirmed_balance": 0.00000000,
  "immature_balance": 0.00000000,
  "txcount": 5,
  "keypoololdest": 1111111111,
  "keypoolsize": 101,
  "paytxfee": 0.00000000
}
```


### List Transactions

`./zcash-cli listtransactions`

### List Unspent Tx's

`./zcash-cli listunspent`

### Get Raw tx hash:
(1 to get info, no arg to get hex tx data)

`./zcash-cli getrawtransaction "[txid]" 1`


Zcash Specific
--------------


### Create a new z_address:

`./zcash-cli z_getnewaddress`

* Adresses will be added to the nodes wallet. Node wallet is stored in /home/.zcash/wallet.dat
* Refer to https://github.com/zcash/zcash/blob/master/doc/payment-api.md for an indepth analysis