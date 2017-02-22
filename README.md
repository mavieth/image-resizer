# Bash Script Image Resizing with ImageMagick
This script is used for creating different sized images that integrate nicely with social media websites. I became quite tired of using finder to resize and resample images for web development projects. Hopefully this tool can help you out as it helps me.

## Installation
	git clone https://github.com/mavieth/image-resizer.git
	cd image-resizer/
	
## Running	
* Drop images that need resized into project root
* Run script
* Profit

```bash
sh build.sh
```

	
## Before

	├── README.md
	├── build.sh
	├── macbook.jpeg
	├── new-york.jpeg
	├── dist/
	└── originals/


## After
	├── README.md
	├── build.sh
	├── dist/
	│   ├── macbook-1024x512.png
	│   ├── macbook-1200x628.png
	│   ├── macbook-1920x1080.png
	│   ├── macbook-300x200.png
	│   ├── macbook-600x400.png
	│   ├── macbook-original.png
	│   ├── new-york-1024x512.png
	│   ├── new-york-1200x628.png
	│   ├── new-york-1920x1080.png
	│   ├── new-york-300x200.png
	│   ├── new-york-600x400.png
	│   └── new-york-original.png
	└── originals/
	    ├── macbook.jpeg
	    └── new-york.jpeg



![](http://www.reactiongifs.com/wp-content/uploads/2013/10/tim-and-eric-mind-blown.gif)


## Sharing	
These are sizes used for sharing posts on your site or for linking things such as [Twitter Cards](https://dev.twitter.com/cards/overview) and [Facebook Cards](https://developers.facebook.com/docs/sharing/webmasters).

| Site  | Type | Size |
| ------------- | ------------- | ------------- |
|Facebook & LinkedIn  |Square| 1200x1200 |
|Facebook & Twitter   |Landscape| 1200x627 |
|Pinterest & Google+  |Portrait| 736x1128 |

## General Sizing
These are sizes used in general (not entirely sure what that means) on various social media outlets.

| Site  | Image Size (pixels) |
| ------------- | ------------- |
| Facebook  |  1200x628|
| Twitter   |  1024x512|
| LinkedIn  |  700x400|
| Google+   |  800x1200|
| Pinterest |  735x1102|
| Instagram |  1080x1080|

## Adjust Cropping
[ImageMagick](http://www.imagemagick.org/Usage/resize/#fill) has well documented parameters that can be interchanged in this script to provide different functionality. (keep image aspect ratio, crop, add background, etc.)

## Credits
Contributors are welcome, open up a pull request!

* [My Website](https://www.utilidev.com) - Still in construction...
* [BufferApp.com](https://blog.bufferapp.com/ideal-image-sizes-social-media-posts) - Social Media Image Sizes
* [ImageMagick](https://www.imagemagick.org/script/index.php) - Bash Image Resizing Tool
