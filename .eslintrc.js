module.exports = {
    'env': {
        'browser': true,
        'es6': true,
        'jquery': true,
        'jest': true,
    },
    'plugins': [
        'jsdoc',
        'jest',
        'deprecate',
        'sonarjs',
        'promise'
    ],
    'extends': [
        'airbnb',
        'plugin:jest/recommended',
        'plugin:sonarjs/recommended',
        'plugin:promise/recommended'
    ],
    'parserOptions': {
        'sourceType': 'module',
    },
    'rules': {
        'indent': ['error', 4],
        'max-len': ['error', {
           'code': 120
        }],
        'class-methods-use-this': ['off'],
        'no-use-before-define': ['off'],
        'object-shorthand': ['off'],
        'import/prefer-default-export': ['off'],
        'require-jsdoc': ['error', {
            'require': {
                'FunctionDeclaration': true,
                'MethodDefinition': true,
                'ClassDeclaration': true,
                'ArrowFunctionExpression': true,
                'FunctionExpression': true
            }
        }],
        'valid-jsdoc': ['error', {
            'prefer': {
                'returns': 'returns',
            },
            'preferType': {
                'Boolean': 'boolean',
                'Number': 'number',
                'object': 'Object',
                'String': 'string',
            },
            'requireReturn': false,
            'matchDescription': '(|([A-Z].+\.\n)+)',
            'requireParamDescription': false,
            'requireReturnDescription': false,
        }],
        'jsdoc/check-param-names': 1,
        'jsdoc/check-types': 1,
        'jsdoc/newline-after-description': 1,
        'jsdoc/require-description-complete-sentence': 1,
        'jsdoc/require-hyphen-before-param-description': 1,
        'jsdoc/require-param': 1,
        'jsdoc/require-param-name': 1,
        'jsdoc/require-param-type': 1,
        'jsdoc/require-returns-type': 1,
        'jsdoc/valid-types': 1,
        'deprecate/function': 2,
        'deprecate/import': 2,
        'jsdoc/check-tag-names': 0,
        'jsdoc/require-description': 0,
        'jsdoc/require-example': 0,
        'jsdoc/require-param-description': 0,
        'jsdoc/require-returns-description': 0,
        'sonarjs/no-duplicate-string': 0
    }
};
