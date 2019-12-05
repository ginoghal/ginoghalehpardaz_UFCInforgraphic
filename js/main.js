(() => {
   
    console.log("fired");
    
    const statsButtons = document.querySelectorAll('.stats'),
    popOver = document.querySelector(".popoverufc"),
    country = document.querySelector("#UFC_Titles");

  // waypoints are for things you can scroll to - content further down the page

    function fetchData() {
        let targetElement = this,
            url = `./includes/connect.php?id=${this.dataset.target}`;

        fetch(url)
        .then(res => res.json())
        .then(data => {
            console.log(data);
            buildPopover(data, targetElement);
        })
        .catch((err) => console.log(err));
    }

    function buildPopover(db_ufctitles, el)  {
        popOver.querySelector(".UFC_Titles").textContent = `country: ${db_ufctitles.Country}`;
        popOver.querySelector(".stats").textContent = `stats: ${db_ufctitles.Titles}`;


       popOver.classList.add('show-popover');

       el.appendChild(popOver);
    }

    statsButtons.forEach(el => el.addEventListener("click", fetchData)); 
})();