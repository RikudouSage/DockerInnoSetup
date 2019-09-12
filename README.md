Inno Setup built for Docker.

For license of original Inno Setup see
[InnoSetup/license.txt](InnoSetup/license.txt)
or [http://www.jrsoftware.org/files/is/license.txt](http://www.jrsoftware.org/files/is/license.txt).

## Usage

Inside the container is a simple wrapper `iscc` that
you can use. Beware that it uses Windows paths
so the best bet is to not use absolute paths.

Create the container like this:

`docker run --rm -it -v $(pwd):/app rikudousage/inno-setup`

This will bind your current directory to `/app` inside
container, then you can go the directory and run `iscc`:

`cd /app && iscc my-iss-file.iss`.

You can combine this into one command:

`docker run --rm -it -v $(pwd):/app rikudousage/inno-setup bash -c 'cd /app && iscc my-iss-file.iss'`