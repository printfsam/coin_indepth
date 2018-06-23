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
`./zcash-cli getnewaddress`

### Sign a message
`./zcash-clicsignmessage "[ADDRESS]" "[MESSAGE]"`

### Verify Message
`./zcash-cli verifymessage "[ADDRESS]" "[SIGNED_MESSAGE]" "[MESSAGE]"`

### Dump Your Wallet
Creates a backup of your wallet (Need to set `exportdir=` in conf file first, if running the zcashd then restart when you change zcash.conf)

`./zcash-cli backupwallet backup`

### Import back in
`./zcash-cli importwallet backup`

### View Private Keys
Dumps all wallet data
`./zcash-cli dumpwallet walletDump`

Only Private Keys
`./zcash-cli dumpprivkey "[ADDRESS]"`

Import Priv key back in

`./zcash-cli importprivkey [KEY]`


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

### Sending ZEC
switch over to testnet:
1. Add:
```
In zcash.conf
addnode=testnet.z.cash
testnet=1
```
2. Get a new address
`./zcash-cli getnewaddress`
3. Head over to faucet.testnet.z.cash
4. Get Raw Tx and search chain:


Zcash Specific
--------------


### Create a new z_address:

`./zcash-cli z_getnewaddress`

* Adresses will be added to the nodes wallet. Node wallet is stored in /home/.zcash/wallet.dat
* Refer to https://github.com/zcash/zcash/blob/master/doc/payment-api.md for an indepth analysis