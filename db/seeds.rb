puts "🌱 Seeding spices..."

# Seed your database here
Comment.create([
    {
      food:"Hot Pizza",
      feedback: "I just want to get alittle bit of this, alittle bit of that and alittle more.",
      author: "Troy"
    },
    {
      food:"Spicy chicken",
      feedback: "So affordable and sweet.",
      author: "Duane"
    },
    {
      food:"Spicy Noodles",
      feedback: "Wow just wow!",
      author: "Liza"
    },
    {
      food:"Burger",
      feedback: "I havent tasted anything like this.",
      author: "Denzel"
    }
  ])

puts "✅ Done seeding!"
