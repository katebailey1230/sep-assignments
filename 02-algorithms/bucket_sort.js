function insertionSort(array) {
  var length = array.length;

  for(var i = 1; i < length; i++) {
    var temp = array[i]
    for(var j = i - 1; j >= 0 && array[j] > temp; j--) {
      array[j + 1] = array[j];
    }
    array[j + 1] = temp;
}
return array;
}


function bucketSort(array, bucketSize) {

  array.forEach(function(currentValue) {
    if (currentValue < minValue) {
      minValue = currentValue;
    } else if (currentValue > maxValue) {
      maxValue = currentValue;
    }
  })

  var bucketCount = Math.floor((maxValue - minValue) / bucketSize) + 1;
  var buckets = new Array(bucketCount);

  for (var i = 0; i < buckets.length; i++) {
    buckets[i] = [];
  }
  array.forEach(function(currentValue) {
    buckets[Math.floor((currentValue - minValue) / bucketSize)].push(currentValue);
  });

  array.length = 0;

  buckets.forEach(function(bucket) {
    insertionSort(bucket);
    bucket.forEach(function(element) {
      array.push(element)
    });
  });
return array;
}
