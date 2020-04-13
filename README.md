# itsonlyamodel.posts
Contains notebooks used in www.itsonlyamodel.us.

You can run these notebooks using your own jupyter kernal. 

The notebooks use some libraries that can be painful to download (ahem, Cartopy).

I've created a Dockerfile to make this install easier. 

First open a terminal

Then build the image with the following command

`docker build --no-cache -t itsonlyamodel:1.0 .`

Run the image with this code
`docker run --net=host itsonlyamodel:1.0`

Lastly follow the provided link in the terminal. You may be promted to set the kernal on a notebook. Just use ioam_env. Good luck!
