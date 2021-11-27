import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

// This widget is the root of your application.
@override
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Societies of MSCW",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: !isSearching
                  ? Text(
                      "Central Societies",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ))),
              actions: <Widget>[
                isSearching
                    ? IconButton(
                        icon: Icon(Icons.cancel),
                        onPressed: () {
                          setState(() {
                            this.isSearching = false;
                          });
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          setState(() {
                            this.isSearching = true;
                          });
                        },
                      )
              ],
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('images/chatbot.png'), fit: BoxFit.fill),
                ),
              ),
            ),
            body: SingleChildScrollView(
                child: SafeArea(
                    child: Column(children: <Widget>[
              InkWell(
                child: Container(
                  height: 165.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://www.edufever.com/wp-content/uploads/2018/06/Mata-Sundri-College-For-Women-Delhi-696x398.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("UDDHAM: THE Entrepreneurship Cell",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("Uddham, The Entrepreneurship Cell of Mata Sundri College for Women was formed in January 2021 by Internal Quality Assurance Cell (IQAC) in collaboration with the Department of Commerce.",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 160.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/Placement/cp7.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("The Placement and Internship Cell",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("You can use this trick. Text Just wrap a text around three single quotes and flutter will format a text as per its length . No need to use max lines and text field.",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 160.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://media-exp1.licdn.com/dms/image/C560BAQHyLbEngmbVIw/company-logo_200_200/0/1596546180778?e=2159024400&v=beta&t=ZBUW9aSGDzgNCpqX2H-O0CKiKJOW81gKnMqM3EZt3Zg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("Women Development Cell",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("With the objective of promoting personal and professional development of women our college has created a Women Development Cell to assist the female students in their efforts to bring about overall improvement in their socio economic condition.",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 155.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/resources/img/NorthEast.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("North East Welfare Cell",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("North East Welfare Cell has been established in the college. With the rise of racial abuse against the people from North East region, the North East Welfare Cell ensures that any kind of discrimination and harassment is prevented.",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 195.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/resources/img/NorthEast.jpg"),
                        //NetworkImage("data:image/jpeg;base64,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"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("Equal Opportunity\nCell (EOC)",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("The college has an Equal Opportunity Cell (EOC) in accordance with the UGC Guidelines for Scheme of Equal Opportunity centre for colleges. It is fully functional body to ensure that all students and employees are treated as equal and attempts to address deep-seated inequalities in our system.",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 150.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/images/divinity/guru.JPG"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("Divinity society",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("The Divinity Society is integral to the dissemination of the ideals which form the foundation of this institution. It imparts the message of humanity, love, truth, honesty and courage to our students and staff. ",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                  //sucess is the file of the name
                },
              ),
              InkWell(
                child: Container(
                  height: 150.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/resources/img/cul1.JPG"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("Cultural Society",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("Mata Sundri College has a vibrant cultural life. The college has a Cultural Society which promotes a variety of western, folk and classical dances. It is one of the most active societies of the College. ",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 175.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/resources/img/NorthEast.jpg"),
                        // NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxESEhUSEhIWFRUVFhgVFxgYFxUSGhcYFxgXFhgXFxgYHSggGBolIBUVITEhMSorLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy8lICUtLjUtNS0tLS0tLS0tLS0tLS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4AMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYBAwQHAgj/xABBEAABAwIDBAcFBgQGAgMAAAABAAIDBBEFEiEGMUFREyIyYXGRoUJygbHBByNSYtHhFDOCslOSosLw8UTSFSRD/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAIDBAEFBv/EADURAAIBAgMECQQBBAMBAAAAAAABAgMRBCExEkFRcQUTYYGRobHR8CIyweEUI1KS8RUzYkL/2gAMAwEAAhEDEQA/APcUREAREQBERAEREAREQBERAFD41iphcwBoOYm9+Qtu79VMKq7Y9tnun5rF0hVlSw8pwdnl6mrB041KyjLTP0LSFlaaY3Y33R8luWxO5lCIi6AiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAKsbXx3MVuOYf2/qrNdcdbSCR0ZO5js3jpp62WXGUXWouC329UX4aqqVVTe6/ozpibYAcgAtiwFlaigIiIAiLBQGUXBTYi18jo2AnKNXeze9rX4n9F3qMJxmrxdyUouLs0ERFIiEREAREQBERAEREBGVmLNilbG8EBwvm4byPp6qSCjsZw8TMtucNWnv5HuKj9m68gmCTRzezffpvb8Fi66dOv1dT7Zfa+3g/waeqjOjtw1X3L8r0LEiLBW0zGVrlkDRdxAA4k2ChMT2hYy7Yuu7n7I/VVueplmd1iXngP0aF5mJ6UpUnsw+p9mnibqGAqVFtS+lefgWmq2jhbo27z3aDzKiptpZT2Wtb5uP6eixRbOSv1eQwct7vLcFN0uBQM9nMebtfTcqF/yFfO+wvD3Zc/4VHK20/nJFadi9S7c8+DQB8gtjXVp3Gb/UrlHGGiwAA7gAtisXRk399aXd/sh/PgvtpLy9kU5j68f4vxGb5hbRjFWztsuPzMLfUWVsRWLATj9taXqQeMhL7qUfQgKXaaM6PaW946w/VTFPUskF2ODh3H58l8VFFE/tsa7xAv571HSYA0HNC90bvG4/VWx/lU9bTX+L9mVP8Ajz0vF/5L3JtRuIxSyfdsORp7T+NvwtH1WiKuli0qG6f4jdR/UOClWSBwuDcHcRqrVONaLjmuK0fx8V3MrcZUmpZPhvXzn4GqipGRNDGCw9SeZ710oivjFRVoqyK223dhERdOBERAEREAREQBERAFEYphxc5s0Y+8YQfeA4eNlLr5e4AXO5V1aUakdmXztJwqOD2kfEkoa0ucbAC5JVRxjGnS3azqx+Rd493cvnHMVMrsrTaMbvzHmVswPBul68mjOA/F+y8XE4qpip9RQ03vjx5R9fX1KGHhh4ddW13L5v8AQ5sLwiSY3HVZ+I/QcVbaDDo4RZg14uOpPxXSyMAAAWA3AaL7K9HC4Gnh1fV8fbgYsRjJ1nnkuHvxMouGbEom6XueTdf2WBVyO7MLrc3ENWjroXsnd9mfpco6qdr2/Hqd6Lla+Xixv+c/+q2sLuLQPA3+gU1JMi0bURFI4EREBiyjxSGM5otAd8fsnvb+E+nzUiihKClqdUmjXFJmF/Q6EeK2LACypI4ERF0BERAEREAREQBERAFWtqMRt9y079X+HBqnK6qETHPPAeZ4BUSNj5pLb3Pd8958F5XSmJcYKlDWXp+9D0ej6ClJ1JaR9f1qduA4X0zru7Dd/efwq6MaALWsBuWmipmxMaxu4DzPErmxTEMnVb2j6fursNRhg6N5a7+fDu3FNerPE1cu73NlbiDY9N7uX6rhZTzTayEtbwG70+pWzDcO/wD0k1J1APzPephTjTlW+qpkuHuQc408oa8fY5qekYzst+O8+a6URa4pRVloUNtu7CIi6cCLRV1TImOkkcGsaC5zjoAAqvs7tl/G1LooYSImNLnSOdY77NAYBpc9+4FSUJNNpZIhKpGLUW82W9ERRJhERBYIiIAiIgCIiAIiIAiIgCIsFAVna6p7EQ94/IfVZ2Tou1KR+Vv1P081E4xKZJ3ka9bKPhp9Fc6Gn6ONrPwgD48fVeJhl/Ixk6r0jp6L8vmeriH1OFjTWstfV/hGK2pEbC479w7yovCqYyOMj9QD5n9ljGZS+QMHDT4n/gUxTQhjQ0cB68St3/dWz0j6mT/qpZay9DeiLBW0ymUVdxHbSgguH1DXOG8MvKb8jkBAUQ77TqEHRkx78jfq9WRo1JK6iyqVenF2cl4l5RVKj+0PD5DYyujP52OA8xcDzVlpaqOVofG9r2nc5pDh5hRlCUPuViUakZfa7nnf2v4uQI6Rp7Q6WTwBsweYcfgFL/ZXhvRUfSkdadxf/S3qtHhoT/UvONvqzpK+odfRrujHhGA0+od5r23BaXoqeGIexGxvk0Ba6y2KEYcc/wAmOj/UxEpcMvx+DvUZjOMRUzM0h1PZaNXOPcPqvvGMSZTxOkfw0A4ucdwC8mxGuknkMkhuT5AcABwAXMJhXWd3lH1KukukVhVsxzk/LtfsTOJbY1MpIYeibwA3/Fx18rKHdiUx1MryfeP6rkRe5CjTgrRij5Opiq1R3nNvv+IlaXaCqj7M7vAnOP8AVdWTC9vOFRHb8zPq0n6qjIq6mEpVNY+GT8i6j0hiKL+mT5PNef4sz1em2qo37pgPEOb6kWUlBWxSdiRrvdcD8ivFl34ThMtS/JG29t7j2R3k/TesVTo6nFOW3ZdvxHqUOnK05KPVqTfC69/nA9jWVGYJhbaaIRhznHeSSTc9w4DuUmvJla+R9JBycU5Kz4a27wiIuEjTUNcWkNdlJGhtex524qH/AIWuG6ZrvEAf7VPIqatBVM22uTa/RZTquGiT5pMjaN1QDaVrCPxNdYj4cV3Sus0nkL+S2Lmr/wCXJ7jvkVJLYi82+ZxvblolyKZg0fSTsv8AizH4dZXp7rC6qGyTLzE8mH1ICtNc60bz+U/Jeb0QrYZz4tvwN3STvXUOCXmQuFtzzZjwu79PmrCq/hM7I2ySSODGtAu5xAAGu8lUvav7R3PvFRXa3cZSLOPuA9nxOvcN639G0ZVKf079TF0hXhTqfVusW7anbCnogWn7yW2kbTqORefYHryC8nx/amrrCelkIZwjZdrLd49r43UK9xJJJJJ1JJuSeZJ3lYX0FHDQp56vj7HgVsTOrlouHzUIiLQZwurDsUmpndJBI5jhrodD3OG5w8VyrD9xS18mL2zRd9tNiZog6qjJlY+8kot1mF3WcbDtNuT4eq9hZuFuS10zw5jXcHNB8wFwbRV/8PTvkGhADW+87QeW/wCC8SVSdVRg9fex7ahToKVTda77ijbb4v00xY09SIlo7z7R+nw71W0KL6KlTVOChHcfDYivKtUdSWr+W7gi+mNJNgLk8BqfJTNBsrVy2tFkHN3U9O16Ls6kYK8mkRpUalV2pxb5IhFupqZ8jssbS93JoJP7K94dsJE3WZ5kPJvUHnvPorTR0UUTcsbGsHIAC/jzWCr0lBZQV/Je57GH6DqzzqvZXi/YpeDbDE2dUu0/ADr/AFO4fDzV0pKWOJoYxoa0bgBb/srpReXVr1KrvN+x9DhsHRw6tTXfvfeERFSagiIgCIiALnrReN45sd8iuhcldVsjbd9zyDWue49zWtBJXGrqwvbMr2yH8x/ufUJtdtdTUrHRk9JKRYRt3i/F53NHr3KqM/8AkZXvhpWdBcFpc9wY+wOu65Z8NUo/srnOs1Sxt9Tka6Q+bsvyVPROGhDDKNaS33Sd/Fq9uV78iXSeJqTrt0Yvdm1bwTt4+BTsXxqapP3juqDcMGjR324nvKjV6bhGwFKZCyV0jrX4hguD3C/qrPT7C4cz/wAZrvfc9/8AcbL1qOOw6haknZdljy6uBxDneo1d9tzwolA4HcV+iafA6SPsU0LfCNg+i7mRgbgB4Cyk8ev7fP8ARxdHv+7y/Z+bm07zuY4+DXH6L5fE5vaaR4gj5r9Loufz/wDz5/ol/wAev7vL9n5kDhzWSv0VW4NTTC0sEb/eY0+trqmbRfZpC9pfSExvGoYSXMd3AnVp8x3KynjoN/UreZTPAzS+l3Lfs3LnpKd3OGM/6Aqx9pFZ/KhB5vd/a3/cp3YjMKGBrgQ5jTG4HeDG5zCD4ZVFRYYKqumleLxRODQODi0DTwBuT4hZsO4wrOctI3f4Rbj1Orh1ShrOy7tX5Ir2C7KT1ADz93GdziLkjm1vLv0Vtoti6Vmrg6Q95sPJtvqrMFlKuNqzetl2DD9FYais47T4vPy0Ry01FHELRxtYPygD5Lpssosh6KSSsgiIh0IiIAiIgCIiAIiIAsFZRAVeRvRVwO4PN/8AMMvzVoUDtRTEsbK3tRn0J3/AgKXpJxIxrx7QBWHCrq6tSn27S5PXzXmaq726cJ9lnzWnkQ9YOinD+BN/o7/nep4G648SpekYQN41H6LRg1TduQ9pvy/ZTp/0qrhulmue9EZ/1KalvWT5biUREWszhERAFEbQ43HRxiWUHIXtYbakZr6242tdS683+2Sr+7p4b73ukP8ASMo/vPkraMNuoosprzcKbki/Uk8b4xJEQ5jruBbqDfW4stOEUvRxNaR1jdzveeczvU+i86+x+acyysDj0DWZi06gSOPVy8rgOv4BeqpVh1cnC5yjLrUp24/PIIiKovCIiAIiIAiIgCIiAIiIAiIgCItcsgaC5xAA1JKASxhwLSLgix8CorBLxOfTuPZ6zDzYf3+a7qOq6QFwaQ32SdC7vtwC1YjSk5ZGfzIzcfmHFh8Vln9WzWhnbzT191y7S6DtenLf5Naez5kgorEKVzXdNH2hvHPvXdTTB7Q4bj6cwe8blvV04Rqx9GvwQhNwkc1HVNkbcfEcl0qPnoiHZ4jldxHB3itkNXc5XDI7kePuniowm19M9eO5/OB2UVrHTzXzidiIuHE8QbAzO7Uk2a0alzjuaFbKSim2QUXJ2R3Lwz7RMS/iK6TLq2O0Tba3LSc1v6i4fAL0ravaI0tH0jm5JpBlYy97OI1Pg0a+Q4qr/ZtsgS5tZUNNu1C128n/ABXX9PPktmFahF1pd3aYsVtTkqMe/sLZsLgX8HSta4fePPSSdziBZvwFh43VlRFmlJybk95qhBQiorRGqaTK0mxNgTYC5NuAHEriwnExUNc5rS0Ndl61rnQH4b9y75dx8Cq9sP8AyHniZDf/ACtWac2qsYrRp+Vvc0RgnSlJ6przv7FkREV5SEREAREQBERAEREAREQBc1VSskADxcA3tfQkbr810ouSipKzR1Np3Ry1dbFEB0jw0E2F1xS7RUrTYyg+Ac71AUbttED0Bt7Zbfxtpf4FT4oIQMoiZbllbb5LPt1ZVJRjZWtxevejR1dKNOM5Xd76WWnczRQVEchL4XhwPaA0sedjqD8101VXHGLveGjvIHlzVYqaQU9ZD0WgkOrBuA3H4WN/gVL4waYOYZWZ3+w0AvcfBo3jx0UYVZbMr2TT7vfu48zs6UdqNrtSV9196s92q14ZmWbQ0pOXpLcrtc0eZFlITFhaS6xaBck2Itvuq9jNRM+F4NJZmUnM57LtsO1lHEcl1YE/NQi+vUe34AuA9LJCs3NweeV9Gt/bqKlFKCqLLO2qe7sMtx2ma3MJTa5AaQXHTkD1gO/cvobQ0xYX5tGkCxab3I0AHE2uuTYynjMGbKC7MQSRrpawv4FNsqdracZWgWkB0AA1DgSfNVqrVVDrcvtvaz9y10aTr9Tn91r3Wnh53PrGcJpJJGVlQS4RsAYx3YBJLs2S13OOmmvZGmi7ZtoKZtryakA2Ac46i4vYaeC0bVt/+m7uyf3NH1XbhVNGIYi1o7DXA5QDcgEnuJWiVWpKp1aayS1u9WzNClSjT6xp5yellok9bM2UGJRTAmN2a28agjxBW+adjBme4NHMkAeZVewWIMrZ2gWGW4AtaxLTuG7eUiDaqqkEhvHAbNYdzjq0uPOxHqFXGvJwV19TbXBZb/BXLJUI7Ts3spJ9udsvO247DtNTXIzm26+V1ie42/5dadiyOgdYWHSu434N48VMS00ZYWljS3flsLadygtkJQKaQgaNe8gb9MrTZPrVaO208norcO1kvodCewnrHVp8exE1X4jFCLyPDb7uJPgBqVy0WOQSuyNJDuAcC0nwv/2oLBqN9TmqDOWvLi05Wglo0IAJ3Ddu4fFSFRs0XkOdUSFzdxIBI46fFRVatNKUI5btM1zvk+79dlRoQbhOWa7Hk+VtL5aonaidrGlzyGtG8k2C+KOqZKwPYbtN7GxG4kHf4KI2wfamN9SXNA3c7k+QKk8KhEcEbOTBfhra59bq9VG6rhuST8f9Gd00qKnvba7kr/kzSV8cubo3ZspsSAbX13Hcdy7FV9lJR01SG2sX5gRxGZ/p+qtCUKjqQ2n2+p3EU1TqOK7PNJhERXFIREQBERAEREBWduAckVvx+ttF0RHEAbObC4c7uHy/Ratr35WwuzWLZQR5HU+Flp2h2ekmkkfGGDPSzxgl7mnp39F0T+q02DRGRm3i+gNyskaalXm7tfbo+w1yqbOHgtlPOWq5ErR4dlcZZHZ5SLZtwaPwsHAevmo+sw6dlSaiENkuLFrjlI0AsD8Lr6wmmr2vIqHxPiAeGtadTd78me8Y1ydGCRpfNod6isK2fr4GwBksbS2GGGaz3OEhjD88nXjIDiS0ZrXIvc6AK+WHhJKN9HfLjxKY15pt63Vuy3Ds7iYxCOsmjczJFGHAgjMXuI5XsAL7luwugkipjEcpfZ9rbruuQCT4qJFLjNtZae+ttdN82W/3XI04NrbpO5ZloMVccxlh0ddrczi0DMxwzARtLyLPHC4tzKLDxUtpyu7W1OOvJw2ErK99CW2cw59PFkeQSXF2lyBcAW9FjaWgfPG1jLDrgkk2sLOF+/euOOir3MlZM+Nwc1uQB9i11wXXcIgCN/skaAEG5WiPD8SjAbHLDkBOh0OUyZiL9GQH5SdbZb6Bg3h1EOq6rdaw6+fW9b/9Xv38iVxqifLTmJli45Bcmw0IJPouyhiLImMcblrGtJHEgAKuR0GJjR00bWCTP1HEuLOnL3A3iJLujsLDS5ItbU9cUOIGCK0rOlzEyFzQy7bENs0N0vZri3Q9YjMLKXVJT2r52sR6yThsbr3N9Fhbm1Us5LcrhYAXv7Op5dlaKrCJmTmop3Nu7tMdcA33699r+K4WbPVTYqZrXMEkccjZndI77wyAB2oZc3N3ZjYggaG5XxBhmKsbExssLWRMjGUPPWLaeVj7uMJ0MroXag6NJ7lB4ana197eud+wmsTUUr9ltMrL5qTJdWuBBZCy+lyXPI8AOK+sBwc0zXNL84cQezltpY8Tfh5LgqMKrJBC5z4+lY1mdwPVL2va5zmtLOQNrFutgQRotZpsXy6TU+bLxuW5sjRcgRgkB2Y7xpZdVCO0pN3avq+PkcdaWy4pJJ8FwNkWDTQSF1M9pY7ex9x4C4324H5rrqIKyUFjnRRsOhLM73W7ibAKNw/CMQZIM0sZiEvSZcxLjnmme+56Mew6IBosLh3Cy3R4PVxteWOjMxmleJnPdmMckmcMILSAWtIYO0AIxa19IrDQitlN24Xy/XIk8TOTUmlfi1n7Pm0zt2gwl00LY4yLsIIzcQAW2vz1WtlJVzAMnc1jPaEfaf3E36o8FXsNocQjnnLJoS7QyNDnuP8AMqpuo1zLC4mibYH2bZhYXk8LqK6O81XK3oQ3VpaInZ7HQDL1h2QD1TcP0tlSVCnd1NrLfZ5ZceQVaooqnbPdlmr205n3srEG1FSG7muyjwzPsPT0VrUFstRuZG58gs6V2e3EDhfv1J+KnVHCx2aS734tsni5qVZtO+i8EkERFoMwREQBERAEREBBbUYe+ZjGsbd2beSAGixuTzU4FlFBU0pOW928ibm3FQ3K/mERFMgEREAREQBERAEREAREQBERARVbhDXv6Vj3xSbi5htcfmG47h5BfMWDNJD5Xvmc3UZz1QeYYNPmpdFV1NO97fOWhZ11S1r/ADnqYAWURWlYREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREB//2Q=="),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("Parindey:\nThe Dramatics Society",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("The college has a very active Dramatics society ‘PARINDEY’. The Dramatic society of the college organizes cultural shows and street plays on socially relevant themes. This gives the students a platform to showcase their talents. ",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 170.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/Societies/quiz.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("Quiz Up: Quiz Society",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("Quizz Up society holds a GK test, annually. The test comprises two rounds. The first round consists of multiple choice questions and the students who clear this test qualify for the second round Two students with the highest score represent the college in various inter college quiz competitions.",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 160.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/resources/img/NorthEast.jpg"),
                        // NetworkImage("data:image/jpeg;base64,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"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("Pratimimb: Film Society",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("You can use this trick. Text Just wrap a text around three single quotes and flutter will format a text as per its length . No need to use max lines and text field.",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 180.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://www.mscw.ac.in/resources/img/debating_society.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("Verbattle: Debatting Society",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("Oratory skills, Logical reasoning and factual Knowledge are the fundamental leadership qualities. The Debating Society of the College provides a forum through which students can hone their oratory and analytical skills while learning to work as a team.",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 160.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/resources/img/NorthEast.jpg"),
                        // NetworkImage("data:image/jpeg;base64,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"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("Kala: Fine Arts Society",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("You can use this trick. Text Just wrap a text around three single quotes and flutter will format a text as per its length . No need to use max lines and text field.",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 160.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/resources/img/NorthEast.jpg"),
                        //NetworkImage("https://scontent.fdel4-1.fna.fbcdn.net/v/t1.6435-9/119471772_117784283396588_2053148811598038231_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=973b4a&_nc_ohc=yKo7tw6LqGcAX8bCjdq&_nc_oc=AQnr3ciKvFeN-aagDsjU2vJVc0YLb3WC4Px0Fz_C1D1gsrRedcOeicuisSLDoB88B34&_nc_ht=scontent.fdel4-1.fna&oh=2519078f723d2406b1f0dfbb598e5212&oe=61C9411F"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("Gandhi Study Circle",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("You can use this trick. Text Just wrap a text around three single quotes and flutter will format a text as per its length . No need to use max lines and text field.",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 210.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/resources/img/ncc.png"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("National Cadet Corps(NCC)",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("The NCC wing of the College is a part of the Indian Military Cadet Corps with its headquarters in New Delhi. Our Collage is associated with 2 DGB (Delhi Girts Batallion), Kashmere Gate, Delhi which directs the college in the training schedule and selection of cadets at different levels of competition at National and State Levels. ",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              InkWell(
                child: Container(
                  height: 200.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      image: DecorationImage(
                        image: NetworkImage("https://mscw.ac.in/resources/img/NSS/nss203.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text("National Service Sheme(NSS)",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("The College has an active wing of National Service Scheme.lt provides ample opportunities for students to serve society and also helps in their personal development .The motto of N.S.S. is “Not me but you” an important principle in inculcating a sense of social and civic responsibility among students.",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
                },
              ),
              Container(
                margin: EdgeInsets.fromLTRB(13, 10, 13, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 10, 20),
                    child: Text("Event Glimpsese By Societies",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF720972),
                        ))),
                  ),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                    addEvent("https://pbs.twimg.com/media/ERnWaDhVUAAU4r2?format=jpg&name=large"),
                    addEvent("https://mscw.ac.in/resources/img/NorthEast.jpg"),
                    addEvent("https://mscw.ac.in/resources/img/NorthEast.jpg"),
                    addEvent("https://mscw.ac.in/resources/img/slider/alumnii1.jpg"),
                    addEvent("https://mscw.ac.in/resources/img/NorthEast.jpg"),
                    addEvent("https://www.mscw.ac.in/resources/img/event/comm/ev23.jpg"),
                  ]))
            ])))));
  }
}

/*class addSociety extends StatelessWidget {
  String Url;
  String heading;
  String description;
  addSociety(this.heading, this.Url, this.description);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 130.0,
        width: 400.0,
        margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(13.0)),
            image: DecorationImage(
              image: NetworkImage(Url),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(heading,
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ))),
                ),
              ),
            ),
            Container(
              child: Text(description,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ))),
              padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
            )
          ],
        ),
      ),
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder:(context)->sucess()));
      },
    );
  }
}*/

class addEvent extends StatelessWidget {
  String Url;
  addEvent(this.Url);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13.0)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          Url,
          width: 150.0,
          height: 130.0,
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.fromLTRB(10, 5, 10, 25),
    );
  }
}
