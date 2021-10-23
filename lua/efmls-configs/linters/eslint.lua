local fs = require('efmls-configs.fs')

local linter = 'eslint'
local bin = fs.get_executable(linter, fs.Scope.NODE)
local args = '--no-color --format visualstudio --stdin'
local cmd = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = cmd,
  lintStdin = true,
  lintFormats = { '<text>(%l,%c): %trror %m', '<text>(%l,%c): %tarning %m' },
  rootMarkers = {
    '.eslintrc',
    '.eslintrc.cjs',
    '.eslintrc.js',
    '.eslintrc.json',
    '.eslintrc.yaml',
    '.eslintrc.yml',
    'package.json',
  },
}