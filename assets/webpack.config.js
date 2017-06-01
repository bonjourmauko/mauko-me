const { resolve } = require('path');

module.exports = {
    entry: './elm/index.js',
    output: {
        path: resolve('../priv/static/js'),
        filename: 'bundle.js'
    },
    resolve: {
        modules: [
            resolve('./elm'),
            resolve('node_modules')
        ],
        extensions: ['.js', '.elm']
    },
    module: {
        rules: [{
            test: /\.elm$/,
            exclude: [/elm-stuff/, /node_modules/],
            use: {
                loader: 'elm-webpack-loader',
                options: {
                    cwd: __dirname,
                    debug: true,
                    warn: true
                }
            }
        }],

        noParse: /\.elm$/
    },
   devServer: {
      inline: true,
      stats: 'errors-only'
    }
};
