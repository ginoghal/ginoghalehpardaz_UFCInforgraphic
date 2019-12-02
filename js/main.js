(() => {
   
    console.log("fired");
    
    const statsButtons = document.querySelectorAll('.stats'),
        popOver = document.querySelector(".popoverufc");

    // waypoints are for things you can scroll to - content further down the page
    const waypoint = new Waypoint({
        element: document.getElementById('usa').querySelector('.svg-graphic'),
        handler: function(direction) {
        console.log('usa has the most champions!');
        },
        offset: 100
    });

    const waypoint1 = new Waypoint({
        element: document.getElementById('brazil').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('brazil has the second most champions!');
        },

        offset: 150
    });

    const waypoint2 = new Waypoint({
        element: document.getElementById('canada').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('canada champions have both been at Welterweight!');
        },

        offset: 200
    });

    const waypoint3 = new Waypoint({
        element: document.getElementById('netherlands').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('netherlands had the first female Featherweight champion!');
        },

        offset: 250
    });

    const waypoint4 = new Waypoint({
        element: document.getElementById('nigeria').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('nigeria champions both won titles within 30 days!');
        },

        offset: 300
    });

    const waypoint5 = new Waypoint({
        element: document.getElementById('ireland').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('both titles came from the same person (Conor Mcgregor) !');
        },

        offset: 350
    });

    const waypoint6 = new Waypoint({
        element: document.getElementById('russia').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('The russian champion is undefeated in his whole career !');
        },

        offset: 400
    });

    const waypoint7 = new Waypoint({
        element: document.getElementById('belarus').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('The Belarus champion was a heavyweight !');
        },

        offset: 450
    });

    const waypoint8 = new Waypoint({
        element: document.getElementById('england').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('The english champion won the title on short notice and while being partially blind in one eye!');
        },

        offset: 500
    });

    const waypoint9 = new Waypoint({
        element: document.getElementById('australia').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('The australian champion won the TUF reality show at a lower weight class!');
        },

        offset: 550
    });

    const waypoint10 = new Waypoint({
        element: document.getElementById('kyrgystan').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('The Kyrgtstan champion is a female and a multiple time muay thai champion!');
        },

        offset: 600
    });

    const waypoint11 = new Waypoint({
        element: document.getElementById('poland').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('The Polish Champion had multiple title defences!');
        },

        offset: 650
    });

    const waypoint12 = new Waypoint({
        element: document.getElementById('china').querySelector('.svg-graphic'),
        handler: function(direction) {
            console.log('The chinese champion won the belt in china in under 1 minute!');
        },

        offset: 700
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

    function buildPopover(ufctitlesstats, el)  {
        popOver.querySelector(".countryname").textContent = `Country: ${ufc_titles.Country}`;
        popOver.querySelector(".ratings").textContent = `Titles: ${ufc_titles.Titles}`;


       popOver.classList.add('show-popover');

       el.appendChild(popOver);
    }

    seeMoreButtons.forEach(el => el.addEventListener("click", fetchData)); 
})();