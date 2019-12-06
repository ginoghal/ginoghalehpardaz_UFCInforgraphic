(() => {
   
    console.log("fired");
    
    const seeMoreButtons = document.querySelectorAll('.see-more'),
        popOver = document.querySelector(".popover"); 

    // waypoints are for things you can scroll to - content further down the page
    const waypoint1 = new Waypoint({
        element: document.getElementById('ufc2').querySelector('.svg-graphic'),
        handler: function(direction) {
        console.log('look at the champions!');
        },
        offset: 100
    });

    const waypoint2 = new Waypoint({
        element: document.getElementById('ufc3').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('UFC is a true worldwide sport as there are champions from all over the world!');
        },

        offset: 150
    });

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

    function buildPopover(titles, el) {
        popOver.querySelector(".country").textContent = `Country: ${titles.country}`;
        popOver.querySelector(".titles").textContent = `Titles: ${titles.titles}`;
        popOver.querySelector(".fun_fact").textContent = `Fun Fact: ${titles.fun_fact}`;


       popOver.classList.add('show-popover');

       el.appendChild(popOver);
    }

    seeMoreButtons.forEach(el => el.addEventListener("click", fetchData));
})();