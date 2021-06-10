# '================ Generating crypto-config ================'
cryptogen generate --config=crypto-config.yaml --output=crypto-material

# '================ Writting Genesis Block ================'
configtxgen -outputBlock  ./acme-genesis.block  –profile  AcmeOrdererGenesis  -channelID  ordererchannel

# '================ Writting Channel for Network ================'
configtxgen -outputCreateChannelTx	acme-channel.tx –profile AcmeChannel -channelID	acmechannel

# '================ Update Anchor Peer for specific Organization ================'
configtxgen -outputAnchorPeersUpdate Org1Anchors.tx -profile AcmeChannel -channelID acmechannel -asOrg Org1

# '================ Update Anchor Peer for specific Organization ================'
