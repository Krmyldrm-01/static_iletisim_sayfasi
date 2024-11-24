import 'package:flutter/material.dart';

void main() {
  runApp(
    Benimuyg(), //Benimuyg ile ilgili farklı özelllikler vb şeyler alt tarafta da vardır
  );
}

class Benimuyg extends StatelessWidget {
  const Benimuyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.lime,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //içerisine atılan resmi çerveçe olarak yuvarlak şekildiei göstermeye yaramaktadır

              CircleAvatar(
                radius: 70, //dairenin genişliği
                backgroundColor: Colors.lime,
                backgroundImage: AssetImage("Image/yildirm.jpg"),
              ),
              Text(
                "Yıldırım Yazılım",
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontFamily: "LilitaOne",
                ),
              ),
              Text(
                "Bir tuş uzağınızda ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 200,
                child: Divider(
                  //bunula boşluğu ayarlayabiliyoruz
                  height: 10,
                  //renk ayarı
                  color: Colors.black54,
                ),
              ),
              Card(
                //color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 45),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    "ykerem379@gmail.com",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                //color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 45),
                //listtitle da pading kullanılmaz çünkü kendi içerisinde  padding vardır
                child: ListTile(
                  //bu leading sol başa gelicek şey için kullanılabilir icon vb olabilir

                  leading: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                  //title kısmına ise text yani yazılacak şey gelir
                  title: Text(
                    "+90 5442205365",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
