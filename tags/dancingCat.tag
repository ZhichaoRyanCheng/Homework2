<dancingCat>
  <img src="img/{motion}.gif">
    <h1>I'm a cat</h1>

  <div>
    <div class="bar hunger">
      <div style="width:{ hunger }%;">&nbsp;</div>
    </div>
    <p>Mood: { hunger }</p>
  </div>


  <button onclick={ feed }>Touch</button>
  <button onclick={ unfeed }>Pounch</button>


  <script>
    //make a copy of my pet object and call it that
    var that  = this;

    //initial state
    this.hunger = 50;
    this.motion = "dance";

    //tell DOM window to increase hunger every three second
    //console.log(that);
    window.setInterval(function(){
      that.incHunger();
      console.log("wait");
      that.update();
      that.checkStatus();
      <!-- console.log(this); -->
    }, 3000);


    decHunger() {

      this.hunger = this.hunger - 10 < 0 ? 0 : this.hunger - 10;
    }

    incHunger() {
      console.log(this.hunger);
      this.hunger = this.hunger + 10 > 100 ? 100 : this.hunger + 10;
    }

    checkStatus() {
      if (this.hunger >= 70){
        this.motion = "slowDance";
      } else if (this.hunger <= 40){
        this.motion = "slowestDance";
      }


      else{
        this.motion = "dance";
      }
    }

// functions that respond to events
    feed(e) {
      this.decHunger();
      this.checkStatus();
    }

    unfeed(e) {
      this.incHunger();
      this.checkStatus();
    }
  </script>

  <style>
  :scope{
    margin:auto;
  }

  img{
    weight:auto;
    height:500px;
    position: center;
  }

  </style>
</dancingCat>
