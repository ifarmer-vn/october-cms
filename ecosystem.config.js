module.exports = {
  apps : [{
    name: 'ifarmer-cms',
    script: 'npm run prod-start',
    env: {
      NODE_ENV: 'production',
    },
  }],
};
