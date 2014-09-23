# EventSplittr

Place a number of images in folders based on the date they were taken.
This is useful if you're using simple photo management tools like [Unbound][unbound] and you need to place images in folders based on the day they were taken.

## Installation

```bash
$ gem install event_splittr
```

## Usage

##### Perform a dry-run

```bash
$ splittr -d /destination_dir path/to/images/*jpg
```

This will output a list of things that will be moved.

##### Move files

```bash
$ splittr -f -d /destination_dir path/to/images/*jpg
```

This will create sub-folders in destination_dir with a format like "2014-05-06", and put all the images taken on that day in that folder.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/event_splittr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[unbound]: http://unboundformac.com/
