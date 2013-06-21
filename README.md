# PHPUnit notifications on Linux

Thanks to the `notify-send` utility this script
lets you send a desktop notification once PHPUnit tests
are done, outputting whether they ran succesfully or not.

## Installation

Just clone this repository anywhere, then modify your shell
profile file by adding:

```
source /path/to/phpunit-notifications/phpunit-notifications.sh
```

Make sure the script is executable:

```
chmod +x /path/to/phpunit-notifications/phpunit-notifications.sh
```

## Usage

This script assumes that you have PHPUnit installed
via composer in your `vendor` directory, so that the PHPUnit
binary is locate at `./vendor/bin/phpunit`.

To use it, just run the PHPUnit tests by replacing `./vendor/bin/phpunit`
with a simple `phpunit`:

```
phpunit

// or

php -c config

// or

phpunit tests/My/ClassTest.php
```