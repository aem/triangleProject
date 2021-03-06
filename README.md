# Triangle Project
This project was originally a Java program I had written for my high school AP
Computer Science course. Largely as a teaching exercise for myself, I've decided
to rebuild this project in Swift. I know it's primitive, but it serves my 
purposes just fine.

# Original Project
The original project's goal was to find all solutions for the triangles in the
image in the root of this repository. Essentially, find all duplicate triangles.
The catch is that the triangles are still considered matches if they can be
rotated; as long as the colors exist in the same order it's a match.

# Implementation Notes
## Documentation
At the time, as a 16-year-old with relatively little programming experience this
proved to be a pretty reasonable challenge. The other aspect of the project was
documentation (50% of our grade. Our teacher asking us to comment our code. The
nerve of some people...). As the functions are relatively straightforward, my 
documentation will not be nearly as extensive as it was for this project. Sorry,
Mr. Behnke. ¯\\_(ツ)_/¯

## Code Efficiency
This implementation of the problem is not necessarily the shortest possible
amount of code, nor is it the most programatically efficient version of the 
solution. However, I used this implementation to teach myself certain Swift
principles like focusing on Struct usage, conforming to protocols like 
`Equatable`, and properly using `let` and `var`. The one concept I didn't cover
that I would have liked is optional values and safe vs. forced unwrapping.
Hopefully I'll get to that in a later project.
