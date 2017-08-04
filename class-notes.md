## Custom Drawing

* What is Core Grahics?
A C framework for 2D drawing
`CG` stands for Core Graphics `CGRect`, `CGPoint`, `CGFloat`

* Draw Rect 
	- Never call this directly
	- This is the method where you implement all your custom drawing
	- Graphics context exists for the view, when this method is called
	- Draw to the in memory context, then apply our context to the view.

`UIBezierPath` an object we can use, instead of using the C library.

* Set needs display

Call `setNeedsDisplay` on a view to redraw that view.
Need to call this, anytime something changes that needs to be redrawn. (starColor)

## Text input

* text view
Has pretty much everything we need built in. We just need to manage the keyboard `resignFirstResponder`

* text field


Both controls `UIControl` for recieving text input from the user.

* first responder "Status"

The first thing to respond to user interaction.
If a text view becomes the first responder, it recieves all keyboard input.



<!--* notification centre-->
Use this to detect when the keyboard gets presented and detect when it gets dismissed



## Web view


* UIWebView
	- The old thing
	- As of iOS 8, Apple says stop using this

* WKWebview
	- The new thing
	- Much faster, more customizable
	- Has to be setup programatically
	- Most things are customizable, but most things have to be implemented manually. Like page refresh.

* SafariViewController
An entire view controller we can present when we want to display entire web pages within our app.
