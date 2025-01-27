const parser = require('@typescript-eslint/parser');
const prettierPlugin = require('eslint-plugin-prettier');
const tsPlugin = require('@typescript-eslint/eslint-plugin');

module.exports = {
  files: [
    'src/**/*.ts',
    'apps/**/*.ts',
    'libs/**/*.ts',
    'test/**/*.ts',
    'clients/**/*.ts',
  ],
  languageOptions: {
    parser: parser,
    parserOptions: {
      project: './tsconfig.json',
      sourceType: 'module',
    },
  },
  plugins: {
    '@typescript-eslint': tsPlugin,
    prettier: prettierPlugin,
  },
  rules: {
    '@typescript-eslint/no-explicit-any': 'off',
    '@typescript-eslint/interface-name-prefix': 'off',
    '@typescript-eslint/explicit-function-return-type': 'off',
    'prettier/prettier': 'error',
  },
  ignores: ['node_modules', 'dist'], // Ensure the right files are excluded
};
