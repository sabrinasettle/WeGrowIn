# WeGrowIn
A Small Project for the Tandem Application

The project is a Ruby app, using a ERB partial as the front end.

## Install Ruby if needed
To install Ruby, I used Homebrew and I recommend that if you do not already have it. To update Ruby, using Brew, use the command:
```bash
brew upgrade ruby
```

## Running the project
Head into the WaterMeTandem directory and from there the project can be run with ./launcher.rb, and if not that may mean its permissions have change so the command will change that.
```bash
chmod u+x launcher.rb
```
On running ./launcher.rb, a server will run at localhost:8000, so head there to see the results!

Please use Ctrl C to close the server when done or else it will keep running on that port!

## On the Front End 

The front end interacts with the ruby back end by using a index.erb.html and then copying that info over to a index.html

## Also

I fixed a front issue with the CSS, on the 12th of January, because I finally tried my project on my laptop and a bug was pretty clear and in the way of useability. So the old CSS file is included in the project but is not in use, just in case you would like you see or discuss.