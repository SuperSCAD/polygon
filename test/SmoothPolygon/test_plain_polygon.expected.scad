// Unit of length: Unit.MM
$fa = 1.0;
$fs = 0.1;

difference()
{
   union()
   {
      difference()
      {
         difference()
         {
            polygon(points = [[0.0, 20.0], [10.0, 0.0], [0.0, 10.0], [-10.0, 0.0]]);
            translate(v = [0.0, 20.0])
            {
               difference()
               {
                  polygon(points = [[-0.0089, 0.0045], [0.0, 0.01], [0.0089, 0.0045], [0.9034, -1.7844], [0.8944, -1.7889], [-0.8944, -1.7889], [-0.9034, -1.7844]], convexity = 2);
                  translate(v = [0.0, -2.2361])
                  {
                     circle(d = 2.0, $fn = 64);
                  }
               }
            }
         }
         translate(v = [10.0, 0.0])
         {
            rotate(a = 215.7825)
            {
               difference()
               {
                  polygon(points = [[-0.0099, 0.0016], [0.0, 0.01], [0.0099, 0.0016], [0.997, -6.0811], [0.9871, -6.0827], [-0.9871, -6.0827], [-0.997, -6.0811]], convexity = 2);
                  translate(v = [0.0, -6.2429])
                  {
                     circle(d = 2.0, $fn = 64);
                  }
               }
            }
         }
      }
      translate(v = [0.0, 10.0])
      {
         difference()
         {
            polygon(points = [[0.0, 0.0141], [0.7142, -0.7], [0.7071, -0.7071], [-0.7071, -0.7071], [-0.7142, -0.7]], convexity = 2);
            translate(v = [0.0, -1.4142])
            {
               circle(d = 2.0, $fn = 64);
            }
         }
      }
   }
   translate(v = [-10.0, 0.0])
   {
      rotate(a = 144.2175)
      {
         difference()
         {
            polygon(points = [[-0.0099, 0.0016], [0.0, 0.01], [0.0099, 0.0016], [0.997, -6.0811], [0.9871, -6.0827], [-0.9871, -6.0827], [-0.997, -6.0811]], convexity = 2);
            translate(v = [0.0, -6.2429])
            {
               circle(d = 2.0, $fn = 64);
            }
         }
      }
   }
}
