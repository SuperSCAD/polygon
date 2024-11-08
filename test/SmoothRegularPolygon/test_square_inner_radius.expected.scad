// Unit of length: Unit.MM
$fa = 1.0;
$fs = 0.1;

difference()
{
   difference()
   {
      difference()
      {
         difference()
         {
            difference()
            {
               difference()
               {
                  difference()
                  {
                     polygon(points = [[0.0, 11.5238], [9.0097, 7.185], [11.2349, -2.5643], [5.0, -10.3826], [-5.0, -10.3826], [-11.2349, -2.5643], [-9.0097, 7.185]]);
                     translate(v = [0.0, 11.5238])
                     {
                        difference()
                        {
                           polygon(points = [[0.0, 0.01], [0.4439, -0.2089], [-0.4439, -0.2089]], convexity = 2);
                           translate(v = [0.0, -1.1099])
                           {
                              circle(d = 2.0, $fn = 64);
                           }
                        }
                     }
                  }
                  translate(v = [9.0097, 7.185])
                  {
                     rotate(a = 308.5714)
                     {
                        difference()
                        {
                           polygon(points = [[0.0, 0.01], [0.4439, -0.2089], [-0.4439, -0.2089]], convexity = 2);
                           translate(v = [0.0, -1.1099])
                           {
                              circle(d = 2.0, $fn = 64);
                           }
                        }
                     }
                  }
               }
               translate(v = [11.2349, -2.5643])
               {
                  rotate(a = 257.1429)
                  {
                     difference()
                     {
                        polygon(points = [[0.0, 0.01], [0.4439, -0.2089], [-0.4439, -0.2089]], convexity = 2);
                        translate(v = [0.0, -1.1099])
                        {
                           circle(d = 2.0, $fn = 64);
                        }
                     }
                  }
               }
            }
            translate(v = [5.0, -10.3826])
            {
               rotate(a = 205.7143)
               {
                  difference()
                  {
                     polygon(points = [[0.0, 0.01], [0.4439, -0.2089], [-0.4439, -0.2089]], convexity = 2);
                     translate(v = [0.0, -1.1099])
                     {
                        circle(d = 2.0, $fn = 64);
                     }
                  }
               }
            }
         }
         translate(v = [-5.0, -10.3826])
         {
            rotate(a = 154.2857)
            {
               difference()
               {
                  polygon(points = [[0.0, 0.01], [0.4439, -0.2089], [-0.4439, -0.2089]], convexity = 2);
                  translate(v = [0.0, -1.1099])
                  {
                     circle(d = 2.0, $fn = 64);
                  }
               }
            }
         }
      }
      translate(v = [-11.2349, -2.5643])
      {
         rotate(a = 102.8571)
         {
            difference()
            {
               polygon(points = [[0.0, 0.01], [0.4439, -0.2089], [-0.4439, -0.2089]], convexity = 2);
               translate(v = [0.0, -1.1099])
               {
                  circle(d = 2.0, $fn = 64);
               }
            }
         }
      }
   }
   translate(v = [-9.0097, 7.185])
   {
      rotate(a = 51.4286)
      {
         difference()
         {
            polygon(points = [[0.0, 0.01], [0.4439, -0.2089], [-0.4439, -0.2089]], convexity = 2);
            translate(v = [0.0, -1.1099])
            {
               circle(d = 2.0, $fn = 64);
            }
         }
      }
   }
}
