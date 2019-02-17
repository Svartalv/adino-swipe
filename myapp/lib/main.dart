import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
	return Scaffold(
	  appBar: AppBar(
		  actions: <Widget>[
			  FlatButton(
				  child: Icon(Icons.access_alarm),
				  onPressed: (){},
			  ),
			  FlatButton(
				  child: Icon(Icons.access_alarm),
				  onPressed: (){},
			  ),
			  FlatButton(
				  child: Icon(Icons.access_alarm),
				  onPressed: (){},
			  )
		  ],
	)
	);
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

	List<String> links = ["https://picsum.photos/200/300/?random", "https://picsum.photos/200/300/?random", "https://picsum.photos/200/300/?random"];
  @override
  Widget build(BuildContext context) {
	return Column(
		children: <Widget>[
			Expanded(
			child: Swiper(
        itemBuilder: (BuildContext context,int index){
          return Image.network(links[index],
		  fit: BoxFit.fill,);
        },
        itemCount: 3,
        pagination: SwiperPagination(),
        control: SwiperControl(),
		autoplay: true,
      ),
		),
		Expanded(
			child: Container(
				color: Colors.red,
				height: 100.0,
				
			),
		)] 
		)
		;
		
  }
}