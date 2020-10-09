# ssec-swc-120-blk-time-manipulation | Solidity | Security | SWC-120 | Block Timestamp Manipulation

**Description**

Ability to generate random numbers is very helpful in all kinds of applications. One obvious example is gambling DApps, where pseudo-random number generator is used to pick the winner. However, creating a strong enough source of randomness in Ethereum is very challenging. For example, use of block.timestamp is insecure, as a miner can choose to provide any timestamp within a few seconds and still get his block accepted by others. Use of blockhash, block.difficulty and other fields is also insecure, as they're controlled by the miner. If the stakes are high, the miner can mine lots of blocks in a short time by renting hardware, pick the block that has required block hash for him to win, and drop all others.

---

## Reference

* [HackPedia: 16 Solidity Hacks/Vulnerabilities, their Fixes and Real World Examples | by vasa | HackerNoon.com | Medium](https://medium.com/hackernoon/hackpedia-16-solidity-hacks-vulnerabilities-their-fixes-and-real-world-examples-f3210eba5148)

* [SWC-120 · Overview](https://swcregistry.io/docs/SWC-120)

---


```
main$ env DEBUG="info*,error*,debug*" yarn run test test/Roulette.spec.ts
yarn run v1.22.4
$ yarn run test:contracts test/Roulette.spec.ts
$ cross-env SOLPP_FLAGS="FLAG_IS_TEST,FLAG_IS_DEBUG" buidler test --show-stack-traces test/Roulette.spec.ts
$(process.argv.length)
All contracts have already been compiled, skipping compilation.


  Roulette Unint Pointer Test
  info:Blk-Time-Manipulation-Test Admin :: 0x17ec8597ff92C3F44523bDc65BF0f1bE632917ff +0ms
  info:Blk-Time-Manipulation-Test Usr1 :: 0x63FC2aD3d021a4D7e64323529a55a9442C444dA0 +1ms
  info:Blk-Time-Manipulation-Test Usr2 :: 0xD1D84F0e28D6fedF03c73151f98dF95139700aa7 +0ms
  info:Blk-Time-Manipulation-Test Usr3 :: 0xd59ca627Af68D29C547B91066297a7c469a7bF72 +0ms
  debug:Blk-Time-Manipulation-Test Network Gas price @ 8000000000 +0ms
  debug:Blk-Time-Manipulation-Test S1-Ent wallet bal :: 200.0 +5ms
Constructor Call
blk.number :: 1
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131072
blk.timestamp :: 1602145456
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x17ec8597ff92c3f44523bdc65bf0f1be632917ff
blk.number :: 2
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131136
blk.timestamp :: 1602145457
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x17ec8597ff92c3f44523bdc65bf0f1be632917ff
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +159ms
  debug:Blk-Time-Manipulation-Test Roulette balance :: 10.0 +2ms
  debug:Blk-Time-Manipulation-Test S1-Ext wallet bal :: 189.996885712 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ent :: 189.996885712 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ent usr1 bal :: 200.0 +3ms
blk.number :: 3
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131200
blk.timestamp :: 1602145458
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 20.0 +4ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 189.999707528 +2ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 189.999707528 +3ms
blk.number :: 4
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131264
blk.timestamp :: 1602145463
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 30.0 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 179.999415056 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 179.999415056 +3ms
blk.number :: 5
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131328
blk.timestamp :: 1602145468
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 40.0 +5ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 169.999122584 +2ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 169.999122584 +4ms
blk.number :: 6
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131392
blk.timestamp :: 1602145473
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 50.0 +5ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 159.998830112 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 159.998830112 +3ms
blk.number :: 7
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131456
blk.timestamp :: 1602145478
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 60.0 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 149.99853764 +4ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 149.99853764 +3ms
blk.number :: 8
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131520
blk.timestamp :: 1602145483
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 70.0 +4ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 139.998245168 +4ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 139.998245168 +4ms
blk.number :: 9
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131584
blk.timestamp :: 1602145488
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 80.0 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 129.997952696 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 129.997952696 +3ms
blk.number :: 10
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131648
blk.timestamp :: 1602145493
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 90.0 +4ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 119.997660224 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 119.997660224 +3ms
blk.number :: 11
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131712
blk.timestamp :: 1602145498
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 100.0 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 109.997367752 +4ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 109.997367752 +3ms
blk.number :: 12
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131776
blk.timestamp :: 1602145503
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 110.0 +4ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 99.99707528 +4ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 99.99707528 +2ms
blk.number :: 13
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131840
blk.timestamp :: 1602145508
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 120.0 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 89.996782808 +4ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 89.996782808 +3ms
blk.number :: 14
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131904
blk.timestamp :: 1602145514
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 130.0 +4ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 79.996490336 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 79.996490336 +3ms
blk.number :: 15
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 131968
blk.timestamp :: 1602145519
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 140.0 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 69.996197864 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 69.996197864 +3ms
blk.number :: 16
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 132032
blk.timestamp :: 1602145524
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 150.0 +6ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 59.995905392 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 59.995905392 +2ms
blk.number :: 17
blk.coinbase :: 0xc014ba5ec014ba5ec014ba5ec014ba5ec014ba5e
blk.difficulty :: 132096
blk.timestamp :: 1602145529
blk.gaslimit :: 2000000000
tx.gasprice :: 8000000000
tx.origin :: 0x63fc2ad3d021a4d7e64323529a55a9442c444da0
  debug:Blk-Time-Manipulation-Test Roulette @ 0xA193E42526F1FEA8C99AF609dcEabf30C1c29fAA +5s
  debug:Blk-Time-Manipulation-Test Roulette balance :: 160.0 +3ms
  debug:Blk-Time-Manipulation-Test S2-Ext usr1 bal :: 49.99561292 +4ms
  debug:Blk-Time-Manipulation-Test S2-Ext :: 49.99561292 +2ms
    ✓ tst-item-001-run-attack (75581ms)
  debug:Blk-Time-Manipulation-Test Roulette balance :: 160.0 +3ms
  debug:Blk-Time-Manipulation-Test S3-Ext wallet bal :: 189.996885712 +4ms
  debug:Blk-Time-Manipulation-Test Roulette balance :: 160.0 +3ms
  debug:Blk-Time-Manipulation-Test S4-Ext wallet bal :: 189.996885712 +3ms


  1 passing (1m)

Done in 83.38s.
```