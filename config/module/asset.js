// ASSET LOADER
// Reference: https://github.com/webpack/file-loader
// Copy png, jpg, jpeg, gif, svg, woff, woff2, ttf, eot files to output
// Rename the file using the asset hash
// Pass along the updated reference to your code
// You can add here any file extension you want to get copied to your output
module.exports = function(mode) {
  return {
    test: /\.(png|jpg|jpeg|gif|svg|woff|woff2|ttf|eot)$/,
    loader: 'file'
  };
};