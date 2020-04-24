10.times do | blog |
  Blog.create!(
    title: "My blog post #{blog}",
    body: "#{blog} Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  )
end
 5.times do | skill |
   Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 7 * skill.to_i
   )
end
 9.times do | portfolio_item |
   Portfolio.create!(
     title: "Portfolio title #{portfolio_item}" ,
     subtitle: "My advice",
     body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
     main_image: "http://placehold.it/600x400",
     thumb_image: "http://placehold.it/300x200"
   )
 end
