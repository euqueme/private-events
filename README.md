<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
![Hireable](https://cdn.rawgit.com/hiendv/hireable/master/styles/default/yes.svg)

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/euqueme/private-events">
    <img src="https://raw.githubusercontent.com/euqueme/toy-app/master/app/assets/images/mLogo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Associations</h3>

  <p align="center">
    This project is part of the Microverse Ruby on Rails curriculum!
    <br />
    <a href="https://github.com/euqueme/private-events"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/euqueme/private-events/issues">Report Bug</a>
    ·
    <a href="https://github.com/euqueme/private-events/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
  * [Usage](#usage)
  * [Automated Test](#automated-test)
* [Author](#author)
* [Contributing](#contributing)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->
## About The Project

This project is about using active record querying methods and advanced associations and testing, in building an application inspired by the eventbrite.com

![Product Name Screen Shot][product-screenshot]

This is the seventh Microverse project of the Ruby on Rails Curriculum

This is also part of the Odin project curriculum https://www.theodinproject.com/courses/ruby-on-rails/lessons/associations

### Built With
This project was built using these technologies.
* Ruby 2.6.3
* Rails 6.0.2.1
* Rspec
* Capybara
* Rubocop
* Ubuntu 18.4+
* Stickler
* VsCode

<!-- ABOUT THE PROJECT -->
### Usage

If you want to test it you need to have Ruby and Rails installed in your computer and clone or [download](https://github.com/euqueme/private-events/archive/master.zip) this repo as follows:
* `$ git clone "https://github.com/euqueme/private-events.git"`

after that you need to open a terminal inside the repo and run the bundler
* `$ bundle  install --without production`

then, run rails db:migrate. This creates the database with the corresponding tables, columns and associations.
* `$ rails db:migrate`

start the server
* `$ rails server`

finally you have to open it in the [browser](http://localhost:3000/) , Sign up, sign in, create new events and invite people.

### Automated Test

to run the test cases run the following commands

Model test cases:

```$ rspec spec/models/```

Integration test cases:

```$ rspec spec/integration/```

<!-- CONTACT -->
## Author

👤 **Audrey Emmanuella Odiaka** 
- Twitter: [@o___audrey_xo](https://twitter.com/o___audrey_xo) 
- Github: [@audrey-ella-xo](https://github.com/audrey-ella-xo) 
- Gmail: anitaudrey@gmail.com

👤 **María Eugenia Quemé** 

- Twitter: [@MaruKK](https://twitter.com/MaruKK) 
- Github: [@euqueme](https://github.com/euqueme) 
- Gmail: euqueme@gmail.com

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/euqueme/private-events/issues).

## Show your support

Give a ⭐️ if you like this project!

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [The Odin Project](https://www.theodinproject.com/)
* [Private-events](https://github.com/private-events/)
* [Event Brite](https://www.eventbrite.com/)
* [The Best readme Template](https://github.com/othneildrew/Best-README-Template)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/euqueme/private-events.svg?style=flat-square
[contributors-url]: https://github.com/euqueme/private-events/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/euqueme/private-events.svg?style=flat-square
[forks-url]: https://github.com/euqueme/private-events/network/members
[stars-shield]: https://img.shields.io/github/stars/euqueme/private-events.svg?style=flat-square
[stars-url]: https://github.com/euqueme/private-events/stargazers
[issues-shield]: https://img.shields.io/github/issues/euqueme/private-events.svg?style=flat-square
[issues-url]: https://github.com/euqueme/private-events/issues
[product-screenshot]: /app/assets/images/private-events.png
