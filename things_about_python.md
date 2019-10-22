1. `list.sort()` modifies the list in-place (and returns None to avoid confusion). Usually it’s less convenient than `sorted()` - but if you don’t need the original list, it’s slightly more efficient. Another difference is that the list.sort() method is only defined for lists. In contrast, the sorted() function accepts any iterable.
2. ascii has 128 characters, 8-bits each.
3. `sum()` can take iterables. When used over a dict, it sums the key values.
