import 'package:flutter/material.dart';
import 'package:test_one/constant.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/unsplash_1.jpg'),
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom : 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SIGN IN', style: Theme.of(context).textTheme.headline4,),
                        Text('SIGN UP', style: Theme.of(context).textTheme.button?.copyWith(color : kPrimaryColor),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom : 20.0),
                    child: Row(
                      children: const <Widget>[
                         Padding(
                           padding: EdgeInsets.only(right : 16.0),
                           child: Icon(
                            Icons.alternate_email,
                             color: kPrimaryColor,
                        ),
                         ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email Address',
                              hintStyle: TextStyle(color: kPrimaryColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom : 20.0),
                    child: Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right : 16.0),
                          child: Icon(
                            Icons.lock,
                            color: kPrimaryColor,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: kPrimaryColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom : 30.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            //shape: BoxShape.circle,
                            borderRadius: const BorderRadius.all(Radius.circular(40))
                          ),
                          child: Icon(
                            Icons.android_rounded,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              //shape: BoxShape.circle,
                              borderRadius: const BorderRadius.all(Radius.circular(40))
                          ),
                          child: Icon(
                            Icons.chat,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                              color: kPrimaryColor,
                              //shape: BoxShape.circle,
                              borderRadius: BorderRadius.all(Radius.circular(40))
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: kBackgroundColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
