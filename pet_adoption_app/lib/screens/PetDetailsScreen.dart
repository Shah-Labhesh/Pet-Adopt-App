import 'package:flutter/material.dart';

class PetDetails extends StatefulWidget {
  const PetDetails({super.key});

  @override
  State<PetDetails> createState() => _PetDetailsState();
}

class _PetDetailsState extends State<PetDetails> {

  bool isFav=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Buddy'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
          margin: EdgeInsets.only(left: 45.0),
          width: 300.0,
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  "assets/images/D1.png",
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Breed',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Age',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Location',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Gender',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Poodie',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '2 years',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'New york',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                height: 200.0,
                child: Text(
                  'Buddy is a playful and friendly dog who loves to run and play fetch. ',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Container(
                
                  child: Row(
                children: [
                  SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Adopt',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(15),
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      isFav ? isFav=false : isFav=true;
                      setState(() {
                        
                      });
                    },
                    icon: Icon(
                      isFav ? Icons.favorite : Icons.favorite_border,
                      
                      size: 40.0,
                      color: Colors.blue,
                    ),
                  )
                ],
              ))
              
            ],
          ),
        ),
      ),
    );
  }
}
