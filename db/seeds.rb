
Tweet.destroy_all

tweets = Tweet.create([
    {handle: "Hotdog", content: "Meow, feed me."},
    {handle: "Mrs. Pickles", content: "Meow, pet me."}
])
