require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/U7-Nc7m9TxUuE8a4ZlWHYOWamCi26IJP',
      accounts: [
        'a81e027b048541d5ffabf7bdaba56166c525ff4c8079ed5f7217b537aca3fb46',
      ],
    },
  },
};
