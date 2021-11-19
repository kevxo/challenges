var nums = [3, 3]
var target = 6

var twoSum = function(nums, target) {
  for (var i = 0; i < nums.length; i++) {
    var nextIndex = nums[i + 1]

    if (nextIndex && nums[i] + nextIndex === target) {
      return [i, nums.indexOf(nextIndex)]
    }
  }
};

console.log(twoSum(nums, target));