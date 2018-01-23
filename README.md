# bitFlyerLightningAPI-Smalltalk

bitFlyer Lightning (https://lightning.bitflyer.jp/) API Client for Smalltalk. Work in progress.

## Current Requirements
- Pharo 6.1
- NeoJSON (https://github.com/svenvc/NeoJSON)

## Usage

### Get Markets

```smalltalk
blc := BLClient new.
blc marketList.
```

### Get Board Information

```smalltalk
blc := BLClient new.
blc boardInformation: 'BTC_JPY'.
```