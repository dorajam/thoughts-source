+++
date = "2016-07-28T16:51:25-04:00"
title = "lasy day at RC"

+++

Hugo-defined: automatic summary split

By default, Hugo automatically takes the first 70 words of your content as its summary and stores it into the .Summary variable, which you may use in your templates.

Pros: Automatic, no additional work on your part.<!--more-->
Cons: All HTML tags are stripped from the summary, and the first 70 words, whether they belong to a heading or to different paragraphs, are all lumped into one paragraph. Some people like it, but some people don’t.
User-defined: manual summary split:

Alternatively, you may add the <!--more--> summary divider1 where you want to split the article. Content prior to the summary divider will be used as that content’s summary, and stored into the .Summary variable with all HTML formatting intact.

Pros: Freedom, precision, and improved rendering. All formatting is preserved.

