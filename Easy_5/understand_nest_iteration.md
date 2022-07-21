https://ryandej.medium.com/understanding-nested-iteration-a-key-to-success-in-rb101-b2dd2efe6807

# Understanding Nested Iteration: a Key to Success in RB101

In my judgement being able to understand nested iteration on a conceptural and practical level is a key to success in RB101. This is not a surprise since this complex topic presents itself in both curriculum content and practice problems. This article is written for the student who is new to programming and is overwhelmed by the `palindrome_substrings` problem that features nested iteration in the "Introduction to PEDAC process" Assignment from Lesson 4.

```Ruby
def where_am_i
  "whereabouts within nested iteration unknown"
end
```
Nested iteration stretches a beginning programmer's ability to its maximum boundaries because of the complexity needed to perform such a task.  There are many things that can go wrong.  Even a small error in syntax or implementation is exacerbated by the multiple moving pars and actions taking place.  When an unexpected value is returned it can be very difficult to pinpoint where exactly the wrror has occurred.  In other words, it's easy to get lost in the code.

## Understanding With an Example

Understanding a difficult topic can be made easier through a comparison to a simple to understand real life example. This can help solifify a mental model that can then be applied with more confidence to novel examples of the topic. Thus, when a mental model is firmly established the abstarct becomes more comprehensible.  

A simple example that I drafted to undertand nested iteration better is the task of collecting coins from parking meters (imagine that parking meters still accept coins). Let's examine the tasks to see how this can be applied to nested iteration.

- Walk to every parking meter and access it (open it)
- Go over all the coins (physically collect them)
- Perform an action on every coin (count it)

This is a relatively simple and easy to understand process.  For this example there will be an outer iteration and an inner, nested, iteration. Within the inner iteration an action will take place.

- Walking to every parking meter and accessing it is the outer iteration
- Going over all the coins is the inner iteration
- The action performed within the inner iteration is the counting of the coins

This is a helpful example because it represents each iteration as movement.  The outer iteration is walking. The inner iteration is going over the coins. Mentally, this can be a useful approximation of what happens during iteration over data structures since they can be thought of as being traversed.

## Modeling the example in code

Given the following array where each subarray represents a parking meter and each element in the array represents a coin type.

```Ruby
parking_meters = [
  [4, 2, 5], # meter 1 - quarters, dimes, nickels
  [0, 6, 3], # meter 2 - quarters, dimes, nickels
  [3, 8, 0], # meter 3 - quarters, dimes, nickels
  [7, 0, 2]  # meter 4 - quarters, dimes, nickels
]
```
The task is to calculate the total quarters, dimes and nickels by returning a hash.  The hash will have the coin type as a key and an integer count as a value.  The expected output will be this:
```Ruby
{ :quarters => 14, :dimes => 16, :nickels => 10 }
```
Given that data structure that will be traversed as well as the expected output a higher level algorithm can be composed within the context of this example.

ALGORITHM
- set a results hash to track coin type counts
- iterate over the parking meter array (outer iteration)
  - this is the equivalent to walking up to each meter and accessing it
- iterate over the subarray of integers (nested iteration)
  - this is the equivalent of going over all the coins and collecting them
- for each subarray element tally it to the results hash
  - this is the equivalent of counting every coin (perform action)
- after outer and nested iterations are complete return results

## Coding Strategy: Outsource to helper methods

For problems of nested iteration like this there seem to be two main coding strategies:

### 1) To code it all in once place within a single method

Although there is a certain sense of security that comes from solving a problem within a single method this approach can be problematic with nested iteration since it is difficult to test the different parts of the method as it is being built. Additionally, if an error occurs it is difficult to pinpoint where the error occurred to troubleshoot and remedy it.

### 2) To outsource functionaly to helper methods

Using multiple methods increases the conceptual burden to a certain extent since helper methods must be constructing independently and plugged in. However, for difficult problems with nested iteration the trade off is worth it since it allows for testing on the go as well as simpler troubleshooting. This is the strategy I have elected to demonstrate with this example.  This strategy will break down a complex problem into smaller, simpler problems.

### Building the main method

A framework for the main method is illustrated in the code snippet below.  Within the context of this problem initializing the hash to track the coins and returning it is straightforward (lines `2` and `11`). Likewise, the outer iteration on line `4` is fairly simple to implement. It's the nested iteration and subsequent actions within this that are difficule to represent in code.  The commented out notes will help bridge the gap between concept and code.  It's apparent that we need a method to tally the coins and that this helper method will interact with bot the block parameter `parking_meter` and the `meter_count` hash.  Simply put those will be the arguments supplied to the helper method.

```Ruby
def meter_tally(parking_meters)
  meter_count = { quarters: 0, dimes: 0, nickels: 0 }

  parking_meters.each do |parking_meter|
    # helper method here to tally the coins
    # it needs to check each parking_meter
    # it needs to increment meter_count
    # arguments are: parking_meter, meter_count
  end

  meter_count
end
```

### Building the helper method

This is the substantial part of the problem.  It's a good idea to revisit the algorithm and add additional details:

