<a name="readme-top"></a>

<div align="center">
  
  [![LinkedIn][linkedin-shield]][linkedin-url]
  [![GPL License][license-shield]][license-url]
  ![Size](https://img.shields.io/github/languages/code-size/patrikmitterpach/F1DB?color=green&style=for-the-badge)
  ![Last Commit](https://img.shields.io/github/last-commit/patrikmitterpach/F1DB?color=green&style=for-the-badge)

  </div>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/patrikmitterpach/F1DB">
    <img src="https://em-content.zobj.net/source/microsoft-teams/363/racing-car_1f3ce-fe0f.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">F1DB</h3>

  <p align="center">
    PostgreSQL database based on Formula 1,<br />detailing relations between drivers,<br> teams, races, seasons and more.
    <br />
    <a href="https://github.com/patrikmitterpach/F1DB/archive/refs/heads/main.zip"><strong>Explore the code »</strong></a>
    <br />
    <br />
    <a href="https://github.com/patrikmitterpach/F1DB#about-the-project">About</a>
    ·
    <a href="https://github.com/patrikmitterpach/F1DB#installation">Installation</a>
    ·
    <a href="https://github.com/patrikmitterpach/F1DB/blob/main/LICENSE.txt">License</a>
  </p>
</div>


<!-- ABOUT THE PROJECT -->
## About The Project

[![Insert Script Screenshot][product-screenshot]](https://github.com/patrikmitterpach/F1DB)

This PostgreSQL database was created as a semestral work for the class BI-DBS for the FIT ČVUT bachelor's programme. The project achieved full basic and bonus points and was within the top 1% of all submitted student projects.
<p align="right">(<a href="#readme-top">back to top</a>)</p>


## About the Database

In the world of Formula 1, individual **drivers** take center stage, and we meticulously track essential statistics such as their *name*, *age*, and *country of origin*. Each driver is assigned *a unique three-letter abbreviation*, often derived from the first three letters of their last name, serving as an identifier displayed in the race's live position table.

Drivers are contracted by **teams**, and these contracts include information on *start and end dates*, along with annual *salaries*. Given the rarity of mid-season contract changes, the dates are recorded in years.

While a driver can belong to a maximum of one team, teams can have multiple drivers, including two primary drivers as well as backup or test drivers. Alongside drivers, we track valuable information about teams, including **team principals** (bosses), *founding dates*, the *number of constructors' championship wins*, **country of origin**, and the associated **driver**.

Each team is responsible for constructing a single **car design** utilized by both drivers. The database maintains engine information, which can be sourced from various **manufacturers**, including the possibility of teams supplying engines to themselves and other teams.

Teams and drivers participate in an annual **championship season**, wherein the Constructors' Cup and the Drivers' Cup each designate **winners**. It's important to note that these wins do not have to align; in other words, the winning driver is not required to be from the winning team, as team wins are based on the combined points earned by both drivers.

A championship season comprises approximately twenty **Grand Prix races**, with each race recording the *event date*, *winner*, and *whether a safety car was deployed*, often in response to an accident. A dedicated **race director** is responsible for overseeing each race.

Each race takes place on a single **circuit**, with the potential for multiple races to occur on the same circuit, optimizing cost efficiency. We maintain information regarding *track names*, *locations*, *lengths*, *year of construction*, and details about the associated **country** and *continent*.

During a Grand Prix, drivers may incur **penalties** for rule violations. We track penalty-related information, including the *recipient of the penalty*, the *race* in which it was given, and the *specific penalty imposed*. Four categories of penalties exist: time penalties during a race, positional penalties, monetary penalties, and the allocation of penalty points. Accumulation of 12 penalty points results in disqualification from the next race. It's worth noting that a non-penalty penalty serves as a warning without further consequences.

## Structure
![Conceptual Model](/images/conceptual_scheme.png)

The database consists of **20+ objects**, **200+ entities** and **28 different queries** to interact with the data. The queries were chosen to represent a various range of options the PostgreSQL system offers.

## Installation

[![Query Script Screenshot][query-screenshot]](https://github.com/patrikmitterpach/F1DB)

To install, clone the repository by running the following command:

```cmd
git clone https://github.com/patrikmitterpach/F1DB
```

and launch the files within the `source/` folder in the following order:

1. `create.sql`
2. `insert.sql`
3. `query .sql`

<!-- LICENSE -->
## License

Distributed under the GPL3 License. See `LICENSE.txt` for [more information](https://github.com/patrikmitterpach/F1DB/blob/master/LICENSE.txt).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[license-shield]: https://img.shields.io/badge/LICENSE-GPL3-green?style=for-the-badge
[license-url]: https://github.com/patrikmitterpach/F1DB/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/patrikmitterpach
[product-screenshot]: /images/screenshots/insert_script.png
[query-screenshot]: /images/screenshots/query_script.png

