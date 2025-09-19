// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
  
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kShrineLoginBackground,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          children: <Widget>[
            const SizedBox(height: 5.0),
          Column(
            children: <Widget>[
              Image.asset(
                'assets/logo.png',
                width: 120, // atur lebar logo di sini
                // height: 120, // opsional, jika ingin atur tinggi juga
              ),
              const SizedBox(height: 5.0),
              Text(
                '',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
            // TODO: Remove filled: true values (103)

            // TODO: Add TextField widgets (101)
            // TODO: Add TextField widgets (101)
              // [Name]
              TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                // Removed filled: true
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                // Removed filled: true
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            
              // TODO: Add button bar (101)
              const OverflowBar(
                alignment: MainAxisAlignment.end,
                // TODO: Add a beveled rectangular border to CANCEL (103)
                children: <Widget>[
                  // TODO: Add buttons (101)
                ],
              ),

            // TODO: Add button bar (101)
            // TODO: Add button bar (101)
            const OverflowBar(
              alignment: MainAxisAlignment.end,
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: <Widget>[
                // TODO: Add buttons (101)
              ],
            ),

            // Spacer
            const SizedBox(height: 24.0),

            // Tombol CANCEL dan NEXT berdampingan
            Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                _usernameController.clear();
                _passwordController.clear();
              },
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.secondary,
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                ),
              ),
            ),
              const SizedBox(width: 16.0),
              ElevatedButton(
              child: const Text('NEXT'),
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                elevation: 8.0,
                shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7.0)),
                )
              ),
            ),
            ],
          ),

          ],
        ),
      ),
    );
  }
}
