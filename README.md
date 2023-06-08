<a name="readme-top"></a>

[![GPL License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



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
    <a href="https://github.com/patrikmitterpach/F1DB"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/patrikmitterpach/F1DB">About</a>
    ·
    <a href="https://github.com/patrikmitterpach/F1DB/issues">Installation</a>
    ·
    <a href="https://github.com/patrikmitterpach/F1DB/issues">License</a>
  </p>
</div>


<!-- ABOUT THE PROJECT -->
## About The Project

[![Insert Script Screenshot][product-screenshot]](https://github.com/patrikmitterpach/F1DB)

This PostgreSQL database was created as a semestral work for the class BI-DBS for the FIT ČVUT bachelor's programme. The project achieved full basic and bonus points and was within the top 1% of all submitted student projects.
<p align="right">(<a href="#readme-top">back to top</a>)</p>


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

The database consists of 20+ objects, 200+ entities and 28 different queries to interact with the given data. The queries were chosen to represent a various range of options the PostgreSQL system offeres.


<!-- LICENSE -->
## License

Distributed under the GPL3 License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[license-shield]: https://img.shields.io/badge/LICENSE-GPL3-green?style=for-the-badge
[license-url]: https://github.com/patrikmitterpach/F1DB/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/patrikmitterpach
[product-screenshot]: /images/screenshots/insert_script.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
