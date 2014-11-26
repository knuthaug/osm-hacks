 #mtb {
    [zoom >= 12] {
    [mtb_scale = '0'] {
       line-color: #00ff22;
       line-width: 2.0;
       line-opacity: 0.5;
  	}
    [mtb_scale = '1'] {
       line-color: #0033ff;
       line-width: 2.0;
       line-opacity: 0.5;
  	}
    [mtb_scale = '2'] {
       line-color: #ff0000;
       line-width: 2.0;
       line-opacity: 0.5;
  	}
    [mtb_scale = '3'] {
       line-color: #666;
       line-width: 2.0;
       line-opacity: 0.5;
  	}
    [mtb_scale = '4'] {
       line-width: 2.0;
       line-color: #333;
  	}
    [mtb_scale = '5'] {
       line-width: 2.0;
       line-color: #222;
  	}
    [mtb_scale = '6'] {
       line-width: 2.0;
       line-color: #111;
  	}
  }

  [zoom >= 16] {
   [mtb_scale = '0'], 
   [mtb_scale = '1'],
   [mtb_scale = '2'], 
   [mtb_scale = '3'], 
   [mtb_scale = '4'], 
   [mtb_scale = '5'], 
   [mtb_scale = '6'] {
    line-width: 6.0;
   }
  }
  [zoom >= 15] {
   [mtb_scale = '0'], 
   [mtb_scale = '1'],
   [mtb_scale = '2'], 
   [mtb_scale = '3'], 
   [mtb_scale = '4'], 
   [mtb_scale = '5'], 
   [mtb_scale = '6'] {
    line-width: 5.0;
   }
  }
  [zoom >= 14] {
   [mtb_scale = '0'], 
   [mtb_scale = '1'],
   [mtb_scale = '2'], 
   [mtb_scale = '3'], 
   [mtb_scale = '4'], 
   [mtb_scale = '5'], 
   [mtb_scale = '6'] {
    line-width: 4.5;
   }
  } 
  [zoom >= 13] {
   [mtb_scale = '0'], 
   [mtb_scale = '1'],
   [mtb_scale = '2'], 
   [mtb_scale = '3'], 
   [mtb_scale = '4'], 
   [mtb_scale = '5'], 
   [mtb_scale = '6'] {
    line-width: 3.5;
   }
  } 

/* mtb name labels */
  [feature = 'highway_path'] {
    [zoom >= 14] {
      text-name: "[mtb_name]";
      text-size: 9;
      text-fill: black;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-halo-fill: white;
      text-wrap-width: 50;
      text-min-distance: 10;
    }
    [zoom >=15] {
          text-size:11.5;
    }
    [zoom >=16] {
          text-size:13;
    }
  }

}      

