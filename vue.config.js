let config = {
	outputDir: 'tlearn',
	devServer: {
		disableHostCheck: true,
		port: 8090
	},
  transpileDependencies: [
    'webpack-dev-server/client'
  ]
};

if (process.env.NODE_ENV == 'production') {
	config.publicPath = '/static/tlearn';
}

module.exports = config;
