# flutter_mobx_futurebuilder
how to use mobx and futurebuilder in flutter
this is how you can get some json data over an api and show them in your app using mobx and future builder.
this an intermediate tutorial so you need to be familiar with dart and flutter

before you start i recommend to watch these videos :
https://www.youtube.com/watch?v=EwHMSxSWIvQ
https://www.youtube.com/watch?v=p-MUBLOEkCs&t=424s

# step 1
# install dependencies

![alt text](https://raw.githubusercontent.com/amirbayat98/flutter_mobx_futurebuilder/code/PicsTutorial/pubsec.yaml)

# step 2
# create mobx store

i created a class named "Model". i'm gonna use this to keep data of my users that i get from api.
then i create _MyState abstract class. this is to keep a list of my user model and define actions. the you can run this command 
flutter packages pub run build_runner watch so mobx will create a file for you. add this file using "part". create MyState class and then define an object of your class names myState.
this object i accessible by importing this file to any widget so you can access your state anywhere in your program.
notice that i use http to get json over api and then i update my state and that is the "users" which is a list and i return that list in my action.

![alt text](https://raw.githubusercontent.com/amirbayat98/flutter_mobx_futurebuilder/code/PicsTutorial/myState.PNG)

# step 3
# create your widget(screen)
now we have our data and we want to show them on screen. the way we can do this is by using FutureBuilder widget. 
# the main point 
when you get data from web your screen won't update. so how do we fix this? 
we create an statefulwidget and define a state that is the type of Future. then we use that state in FutureBuilder Widget like shown below.

![alt text](https://raw.githubusercontent.com/amirbayat98/flutter_mobx_futurebuilder/code/PicsTutorial/app.PNG)

# step 4
# done!
modify your main.dart use app.dart as your home in material app. 
you can find this code on branch named code.

![alt text](https://raw.githubusercontent.com/amirbayat98/flutter_mobx_futurebuilder/code/PicsTutorial/main.PNG)
