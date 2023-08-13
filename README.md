Setup:
1. Clone the repository
2. `bundle install`
3. Add this to envrc: 
`export DEVISE_JWT_SECRET_KEY=bbe55e38171b8d112465d839af73a929023e5ad1ee36169a06014b00ab4b400544d9dcd2d4597f3fe4c93b52be414d677c5a34d20ae5f2e2cbea4946fa7188c9` -> secret 🤫
4. `rails db:drop db:create db:migrate`
5. Start server.

Flow:
1. Create new account: 
call Post `http://localhost:3000/signup`
![Screenshot 2023-08-13 at 20 46 36](https://github.com/ClaudiuHiticas/VirtualPet/assets/36297462/696873be-9a99-4636-8080-f33436af1194)

2. Login and copy Authorization Bearer 
![Screenshot 2023-08-13 at 20 48 33](https://github.com/ClaudiuHiticas/VirtualPet/assets/36297462/dc2ee92f-706c-4a26-8e6a-7a50c2f986c5)

3. Add
   3.1 Pets `http://localhost:3000/pets`
   3.2 Food `http://localhost:3000/foods`
   3.3 Toys `http://localhost:3000/toys`

4. Adopt a pet and set the auth bearer
![Screenshot 2023-08-13 at 20 51 15](https://github.com/ClaudiuHiticas/VirtualPet/assets/36297462/414938b5-6088-4f46-83f6-a48e43ab3e58)

5. Fed and play with a pet (also set auth bearer)

6. Show dashboard of your adopted pets

7. Parade pets and breed pet of 2 parents
