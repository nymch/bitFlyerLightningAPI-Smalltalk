# bitFlyerLightningAPI-Smalltalk

bitFlyer Lightning (https://lightning.bitflyer.jp/) API Client for Smalltalk. Work in progress.

## Current Requirements
- Pharo 6.1
- NeoJSON (https://github.com/svenvc/NeoJSON)

## Usage

### Get Markets

```smalltalk
client := BitFlyerLightningClient new.
client marketList.
```

### Get Board Information

```smalltalk
client := BitFlyerLightningClient new.
client boardInformation: 'BTC_JPY'.
```

### Get Ticker

```smalltalk
client := BitFlyerLightningClient new.
client ticker: 'BTC_JPY'.
```

### Get Executions

```smalltalk
client := BitFlyerLightningClient new.
"Get latest 100 executions."
client executions: 'BTC_JPY' count: 100.
"Get executions before specific execution id."
client executions: 'BTC_JPY' before: 100.
"Get executions after specific execution id"
client executions: 'BTC_JPY' after: 100.
```

### Use Private API

```smalltalk
BLSettings default apiKey: '<YOUR-API-KEY>'.
BLSettings default apiSecret: '<YOUR-API-SECRET>'.
```

### Get Account Balance

```smalltalk
client := BitFlyerLightningClient new.
client accountBalance.
```

### Execute Buy Order
```smalltalk
client := BitFlyerLightningClient new.
buyOrder := BLBuyOrder productCode: 'BTC_JPY' childOrderType: (BLChildOrderTypeConstants limit) price: 900000 size: 0.001 minuteToExpire: 10 timeInForce: (BLTimeInForceConstants goodTilCanceled ).
client sendChildOrder: buyOrder.
```
