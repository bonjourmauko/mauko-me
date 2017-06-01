const { resolve } = require('path');

module.exports = {
    entry: './elm/index.js',
    output: {
        path: resolve('../priv/static/js'),
        filename: 'app.js'
    },
    resolve: {
        modules: [
            resolve('./elm'),
            resolve('elm-stuff'),
            resolve('node_modules')
        ],
        extensions: ['.js', '.elm']
    },
    module: {
        noParse: /\.elm$/,
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
        }, {
            test: /\.js$/,
            exclude: [/elm-stuff/, /node_modules/],
            use: {
                loader: 'babel-loader',
                options: {
                    presets: ['es2017']
                }
            }
        }]
    }
};
