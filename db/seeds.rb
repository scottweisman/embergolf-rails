puts 'Seeding...'

Course.destroy_all
Review.destroy_all

pebble = Course.create(name: 'Pebble Beach')
augusta = Course.create(name: 'Augusta National')
torry = Course.create(name: 'Torry Pines')

pebble.reviews.create(content: "I was very lucky to visit here in 2011 as part of a trip from Classic & Sports Car, pebble beach concours d'elegance. WOW the view from the 18th hole is spectacular. the people that attend this event are so nice and polite. if you are on your own someone will come up to you and befriend you straight away. they will then introduce you to all of their friends and you end up having a few drinks and sharing a few laughs.")
pebble.reviews.create(content: "Pebble Beach is undeniably one of the most scenic courses in the country. I am so glad we got to play it two times prior because they rushed us to play in under normal time. It seems they are packing the course with as many tee times as they can. Our group handicaps were 9, 7, 11 and 14 and we are not slow. We never lost the group ahead but they keep coming by and telling you to keep up. Oh well. We did have slow rounds there in the past and complained. So, I guess there is no happy medium. All in all a golf course you HAVE to play, at least once.")

augusta.reviews.create(content: "Having never played the course, I can't speak with first hand knowledge of what it is like to tee it up on this holy ground. However, in 2012 I had the opportunity to attend a day of the Masters and regard it as one of the most enjoyable days of my life. Augusta National is a club like no other in the world and upholds the honors and traditions of the game with strict importance. Respect for members, club personnel, and the course is expected at all times; no exceptions. The course closes after Memorial Day and reopens in the fall upon the completion of any projects deemed necessary for the upcoming Masters. From what I hear, the experience at Augusta is unmatched.")
augusta.reviews.create(content: "Arguably the world's most familiar golf course, the hallowed grounds at Augusta National have been the site of the year's first major tournament since 1934. Founded by Bobby Jones and Clifford Roberts, the Alister MacKenzie masterpiece is known for its impeccable conditioning and contrasts of deep green fairways and greens, white bunkering and splashes of colorful azaleas and dogwood against the backdrop of Georgia pines. Its landmarks such as Amen Corner and Rae's Creek are as famous as the golf course and its holes.")
augusta.reviews.create(content: "The 18-hole Augusta National course at the Augusta National Golf Club facility in Augusta, Georgia features 7,270 yards of golf from the longest tees for a par of 72 . The course rating is 74.0 and it has a slope rating of 135.  Designed by Alister MacKenzie/Robert Trent Jones, Jr., ASGCA, the Augusta National golf course opened in 1933. James Armstrong manages the course as the Executive Director.")

torry.reviews.create(content: "You will not find a more economical course where you can play the same course as the pros. Booked about a month in advance, paid the $43 booking fee (per person) to guarantee a time. Played the north course with only $100 green fees. Even though the south course is more famous as it hosted a US Open in 2008 (and will again in 2021), it is more expensive to play and all the locals I talked to preferred the north course (more scenic and it is the easier of the two).")
torry.reviews.create(content: "Played the South course. Pay the extra money to get a tee time in advance to be sure you get on the course. Easy to walk, fantastic views and a real challenge. Great experience!")


puts 'Datebase seeded.'