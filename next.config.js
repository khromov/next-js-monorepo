module.exports = {
  webpack: (config, { buildId, dev }) => {
    config.resolve.symlinks = false;
    return config;
  },
  future: {
    webpack5: true,
  },
};
