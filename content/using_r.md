# Using R

## Starting R

R has it's own interactive REPL ([Read-eval-print loop](https://en.wikipedia.org/wiki/Read–eval–print_loop)) and this
is where many R users on Linux will start.

Opening a terminal and typing `R` at the command prompt will start the REPL.

```bash
sellorm@raspberrypi$ R

R version 4.0.4 (2021-02-15) -- "Lost Library Book"
Copyright (C) 2021 The R Foundation for Statistical Computing
Platform: armv7l-unknown-linux-gnueabihf (32-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> 
```


R starts up with messages about the version and license and so on.

At this point you're running R and you can start to do all sorts of fun things.

Let's start with a couple of basics. 

## The basics

A quick note about conventions: Throughtout this page you'll see R commands that you should type in prefacted by the
`>` symbol. This is R's default "prompt". You don't need to type that, just everything that follows it.

Let's try some maths. Type the following and hit 'return':

```R
> 3192 / 76
```

**Note:** R, like most programming languages, uses `/` for division and `*` for multiplication.

R should output:

```R
[1] 42
```

Don't worry too much about the `[1]` for now, that's just R's way of saying that it's the first result. As you'll learn
later we can return many results at once and knowing which position things are in is more useful then.

Now let's try some text...

Let's assign a variable. A variable is a way of saving something for later. This could be a number or some text, or any
one of a number of things.

```R
> my_name <- "sellorm"
```

R will look like it's not done anything and return you straight to the `>` prompt. Assigning a variable is a silent
operation, so R doesn't bother to tell us anything when all goes according to plan.

We can see what value our variable has by typeing it's name and hitting return:

```R
> my_name
```

This will output:

```R
[1] "sellorm"
```

(There's that `[1]` again!)

Let's use out variable in another command. Try this:

```R
> cat("Hello", my_name, "\n")
```

This one should print the following to the screen:

```R
Hello sellorm
```

The `cat` command is R's built-in 'concatenate' function, but it's often used for outputting simple messages like this.

Hopefully the content of the command we ran makes sense -- joining the word "Hello" with the name we stored earlier -- 
but you may be wondering about the "\n" on the end. This tells R to print a "new line". Without it, the message would
still be printed, but out prompt would directly follow the output. 

Try it:

```R
> cat("Hello", my_name)
Hello sellorm>
```

See how the prompt is now stuck on the end of the output? This isn't a problem, it just looks messy and makes it harder
to see where you are.

Lastly (for now!), we're going to run a couple of R's built-in demos.

Try this one first:

```R
> demo(graphics)
```

This demo will open another window, and display some pre-canned plots created with the built in plotting tools. R has a
really powerful graphics system and the built in plotting tools are great, however, if you want to take your plots to
the next level check out the '[ggplot2](https://ggplot2.tidyverse.org)' package.

![](/images/using_r_demo_screenshot.png)

To cycle through the demo plots, make sure the terminal window has focus and hit return.

When no more plots are displayed and you have a bunch of `>`s stacking up in the REPL, you know you reached the end of
the demo. You can close the graphics windows that opened now.

Next try this one:

```R
demo(image)
```

Again, press enter to see the next example. The code for each example is shown in the REPL too, so you can start to get
a feel for how you might be able to start creating some plots of your own.

Now that we've played around a little in R, we should exit the REPL.

The official way to do this is with the `quit()` funtion, but R's developers have given us a handy alias, `q()`, to use
instead.

```R
> q()
Save workspace image? [y/n/c]: n
```

When we run `q()`, R will ask us if we want to save our "workspace". The workspace contains all the variables we creaed
and packages that we've loaded. It's generally considered to be bad practice to save the workspace, as it can get us
into trouble later on, so always answer with "n".

Eventually, even this might feel like too much typing and someone will point out that you can accomplish the same thing
by pressing "ctrl+d" twice, so feel free to do that instead if you prefer.


## Installing packages

In the R world, add-on packages that provide useful functions or otherwise extend the language in some way, come from
[CRAN](https://cran.r-project.org). CRAN serves pre-compiled binaries of these packages to Mac and Windows users, but
Linux users (like us!) only get the source code.

This makes sense as there are a very large number of Linux distributions out there and compiling binaries for all of
them isn't feasible. Source code is the default for all Linux OSes then, but it can also be difficult to work with. As
an end user, having to compile packages from source can be time consuming and packages also often require specific
build-time dependencies, that you'd need to make sure were available.

To make this process easier, the R4Pi project runs it's own CRAN mirror that only contains a small subset of some of the
most popular packages available in the public CRAN. Since we know exactly which version of Linux you'll be using, we're
able to compile packages for you, making installation simpler and much quicker!

You can see the default mirror by running the following inside of R:

```R
> options("repos")
```

Packages are installed as usual using, for example:

```R
> install.packages("tidyverse")
```

If you need to install a package that's not available in our mirror, you can still use public CRAN, either by adding it
to the list of available repos, or by specifying where a particular package should come from, like this:

```R
> install.packages(<PACKAGE_NAME>, repos = "https://cloud.r-project.org")
```
