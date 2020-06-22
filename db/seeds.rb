# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# task 2 
# insert into student values (1, 'Ivan', '0503365273', 'ivan_petrov@ukr.net', 10, 'Kiev');

Student.create(name: 'Ivan', phone_number: '0503365273', email: 'ivan_petrov@ukr.net', rating: 10, city: 'Kiev')
Student.create(name: 'Vladimir', phone_number: '0986304862', email: 'vlad_peskov@gmail.com', rating: 40, city: 'Poltava')
Student.create(name: 'Anton', phone_number: '0638873397', email: 'anton_shevchenko@i.ua', rating: 37, city: 'Kiev')
Student.create(name: 'Irina', phone_number: '0956674423', email: 'irinka@gmail.com', rating: 80, city: 'Kharkov')
Student.create(name: 'Yuliya', phone_number: '0986578493', email: 'yuliya_kotova@gmail.com', rating: 75, city: 'Odessa')
Student.create(name: 'Maksim', phone_number: '0936938564', email: 'max_ivanov@yahoo.com', rating: 4, city: 'Kiev')
Student.create(name: 'Maria', phone_number: '0685546738', email: 'maria_goncharuk@rambler.ru', rating: 33, city: 'Zhytomir')
Student.create(name: 'Vladimir', phone_number: '0959984637', email: 'vladimir_kravtsov@yahoo.com', rating: 62, city: 'Kiev')
Student.create(name: 'Elena', phone_number: '0957738465', email: 'elena_maltseva@gmail.com', rating: 77, city: 'Irpen')
Student.create(name: 'Yuliya', phone_number: '0936554393', email: 'yuliya_bedronka@gmail.com', rating: 54, city: 'Lvov')
Student.create(name: 'Olga', phone_number: '0966624353', email: 'olga@yahoo.com', rating: 57, city: 'Lvov')

# task 3
# update student set phone_number = '0686578493' where phone_number like '0986578493';
# update student set phone_number = '0686304862' where phone_number like '0986304862';

student = Student.find_by(phone_number: '0986578493')
student.update(phone_number: '0686578493')
student = Student.find_by(phone_number: '0986304862')
student.update(phone_number: '0686304862')


# task 4
# DELETE FROM student
# WHERE rating < 10;

student = Student.where("rating < 10")
student.destroy_all

# task 5
# SELECT * FROM student;

Student.all

# task 6
# SELECT DISTINCT name FROM student;
Student.select(:name).distinct

# task 7
# SELECT * FROM student WHERE email LIKE '%gmail%' AND rating>50;

Student.where("email LIKE ?", "%gmail%").where("rating > 50")

# task 8
# SELECT AVG(rating) FROM student WHERE rating > 30;
# Student.average('rating').where('rating > 30')


# task 9
# SELECT * FROM student ORDER BY rating DESC;
Student.order('rating DESC')

# task 10
# SELECT MAX(rating)
# FROM student
# WHERE email LIKE '%yahoo%' OR phone_number LIKE '050%';
 Student.where('email LIKE?', '%yahoo%').or(Student.where('phone_number LIKE?', '50%')).maximum('rating')

 # task 11
 # SELECT COUNT(*), city
 #  FROM student
 #  GROUP BY city;
 Student.group('city').count

 # task 12
 # SELECT MIN(rating)
 # FROM student
 # WHERE city='Kiev';

 Student.where(city: 'Kiev').minimum('rating')