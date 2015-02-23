# CSS Frameworks

The aim of frameworks in general is to provide a common structure so that developers don’t have to redo it from scratch.

CSS frameworks:
- allow for quicker and easier styling
- provide a cohesive, semi-polished look right off the bat
- are super easy to install!
- help with mobile-friendly layouts

#### What do frameworks provide?
- A grid system
- Nicer typography
- A basic color scheme (which you can mess with!)
- Pretty styling on things like buttons, nav bars, forms, etc.
- Helper classes for things like aligning text

###### *Word of warning: Don't let frameworks be the only styling you do! If you're lazy, your website will look very generic!*

## What frameworks are there?
- **[Foundation](http://foundation.zurb.com/)** (preferred)
- [Bootstrap](http://getbootstrap.com/)
- [Pure](http://purecss.io/)
- Many, many others

## How to use Foundation

1. First, [download it here!](http://foundation.zurb.com/develop/download.html)
2. Copy css/foundation.min.css and css/normalize.css into your project's stylesheets folder
3. Link to the stylesheets from your layout.erb file **in this order:**
  * normalize.css
  * foundation.min.css
  * your own stylesheets!

Bam! You're up and running!

Just by having it installed, Foundation gives you a whole new look - but don't stop there!

#### Some Resources:
**[Foundation documentation](http://foundation.zurb.com/docs/):**
This will become your new best friend! All the tools are explained with examples via the bar on the left - browse through to get a sense of what Foundation can do for you. Example code abounds - use it!

**[Foundation templates](http://foundation.zurb.com/templates.html):**
Mostly use these as inspiration for how to use Foundation. Don't go copying an entire page of code from here - that'll just make you lazy! If you find a piece of a page you really like, use their code to learn how they use the Foundation tools to make it happen.

**Inspect Element:**
You should be using this all. The. Time. Right click the webpage and hit "Inspect Element", or use Cmd + Opt + I. Click on an HTML element to see the styling that is applied to it!

#### The [Foundation grid system](http://foundation.zurb.com/docs/components/grid.html)
This allows you to use HTML classes to format the layout of your page! By adding `class="blah"` to your HTML element, you get all the nice formatting that Foundation provides for that class.

Foundation imagines that every element of the page is divided into rows and columns. This allows you to specify what sort of space you want your content to take up! You can add rows all you want. For columns, Foundation divides every element into 12 imaginary units of space - you use this to specify what width you want your elements.

![alt text](http://foundation.zurb.com/assets/img/seo/feature-grid-1.png)

Here are some of the classes you'll use:
- `row`: marking something as a row will cause it to take up the full width of its parent element. Use this to mark out a space for vertical elements to reside inside.
- `column` or `columns`: Preferably use this to wrap your actual content. This will create a column of a certain width (see below) that your content will reside inside.
- `small-#`: This is how you pick how wide your columns are. Remember, every parent element is divided into 12 imaginary units. `small-#` specifies how many of those units you want your column to take up. If I write `small-3`, my column will be 3 units wide, or 25% the width of the parent element. `small-12` will take up the full width of my parent element.
- `medium-#`, `large-#`: the "small" part of the above class means "with small screens, do this". Here you can specify different widths for medium and large screens! This will mean your layout changes depending on screen size. (Yay mobile-friendly design!)

Check out the [docs](http://foundation.zurb.com/docs/components/grid.html) for more useful classes like offsetting your rows, centering columns, etc.

#### Useful basic features to check out:
- **[Utility classes](http://foundation.zurb.com/docs/utility-classes.html):** these give you handy all-around tools to use - like text alignment!
- **[Forms](http://foundation.zurb.com/docs/components/forms.html):** they can be so beautiful!
- **[Buttons](http://foundation.zurb.com/docs/components/buttons.html):** make everything nicer.
- **[Inline lists](http://foundation.zurb.com/docs/components/inline_lists.html)** can be pretty handy!
- **[Panels](http://foundation.zurb.com/docs/components/panels.html)** help visually organize content on your site.
- **[Typography](http://foundation.zurb.com/docs/components/typography.html):** Foundation lets you do some cool useful things with your text!
- **[Tables](http://foundation.zurb.com/docs/components/tables.html):** Foundation makes them beautifulll.
- **[Pretty](http://foundation.zurb.com/docs/components/sidenav.html) [nav bars](http://foundation.zurb.com/docs/components/icon-bar.html):** See the [templates page](ttp://foundation.zurb.com/templates.html) for more pretty nav ideas!

## Extras!

#### Setting up your layout file
I like to have my website content centered with some space on each side, and Foundation makes that super easy! Inside the `body` tag of every layout.erb file, I wrap the `<%= yield %>` with some `divs` with Foundation classes:

```html
<div class="container">
  <div class="row">
    <div class="column">
      <%= yield %>
    </div>
  </div>
</div>
```

#### Using JS-based features
Some things, like [alert boxes](http://foundation.zurb.com/docs/components/alert_boxes.html), you need to install Foundation's Javascript files in order to use. Here's how:

1. Create a folder in `public` called `js`
2. Copy the entire contents of the Foundation `js` folder into your `js` folder
3. In the `head` section of your `layout.erb` file, require `modernizer.js`: <br>
`<script src="/js/vendor/modernizr.js"></script>`
4. Right before the closing `body` tag in your `layout.erb` file, require jquery and foundation's main js file:<br>
`<script src="/js/vendor/jquery.js"></script>`<br>
`<script src="/js/foundation.min.js"></script>`<br>
5. Last of all, right beneath the above code, call Foundation's `foundation` function to get things running:<br>
`<script>`<br>
`$(document).foundation();`<br>
`</script>`<br>

##### Some cool JS-based features:
- [Tool for creating equal-height columns](http://foundation.zurb.com/docs/components/equalizer.html)
- [Awesome](http://foundation.zurb.com/docs/components/topbar.html). [nav](http://foundation.zurb.com/docs/components/offcanvas.html). [bars](http://foundation.zurb.com/docs/components/magellan.html).
- [Cool dropdown buttons](http://foundation.zurb.com/docs/components/dropdown_buttons.html)
- [Tabs](http://foundation.zurb.com/docs/components/tabs.html#tabs-deeplink-3)
- [Pop-up lightboxes, aka "modals"](http://foundation.zurb.com/docs/components/reveal.html)
- [Cool "walkthroughs" of your page](http://foundation.zurb.com/docs/components/joyride.html)

### Using Flash with Sinatra
[Sinatra Flash](https://github.com/SFEley/sinatra-flash) is an awesome gem that allows you to alert your users to important things! It also gives you a great chance to implement Foundation's beautiful [alerts](http://foundation.zurb.com/docs/components/alert_boxes.html). Here's how to set it up!

1. Install the gem by typing `gem install sinatra-flash` in your terminal.
2. Require the gem in the top of your server.rb file: `require 'sinatra/flash'`
3. Enable sessions by adding this line right after your `require`s in server.rb: `enable :sessions`. (Sessions allow your browser a way to persist certain information.)
4. Add the following code to your layout.erb file, right before your yield block:
```
<% flash.keys.each do |type| %>
  <div data-alert class="flash <%= type %> alert-box radius">
    <%= flash[type] %>
    <a href="#" class="close">&times;</a>
  </div>
<% end %>
```

Flash stores its messages as a hash. If you place a binding.pry in your code (such as in server.rb or layout.erb - either work!) you can call `flash` to examine how it works and how to interact with it. The above block of code goes through each `flash` key, and for each one, it sets up an alert box and prints the text associated with that key.

To make a new flash message appear, you need to set a new key-value pairing in your server.rb file. For example, I may use the following code:
```
get '/' do
  flash[:notice] = "Hooray, Flash is working!"
  erb :index
end
```

Try to use a descriptive word as the key! For example, if your flash is warning your user of a potential problem, you could use `flash[:warning]`. Check out the different types of words Foundation uses to differentiate its alert boxes for inspiration!

(Hint: the block of ERB code I provided above takes the key from your flash message and sets that as an HTML class for the alert box. So if you want to get your message to look like the Foundation "info" alert box, use `:alert` as your key and the Foundation styles will show right up!)
