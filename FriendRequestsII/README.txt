Each row in RequestAccepted means two people became friends. One is the requester and the other is the accepter, and both gain one friend.

The idea is to turn both columns into one list of user ids. We use UNION ALL for this because it keeps duplicate values. Duplicates matter here since appearing multiple times means having multiple friends. Using UNION would remove duplicates and give the wrong count.

After combining the ids, we count how many times each user appears. That count is the number of friends. We then sort by this count and return the user with the highest value.

This approach is simple, avoids joins, and directly matches how friendships work in the problem.