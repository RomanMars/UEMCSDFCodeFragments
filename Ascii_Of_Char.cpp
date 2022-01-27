// Roman Mars

//========================================================================================
/*                                                                                      *
 * Create askii chars Font, from sdf texture atlas                                      *
 *                                                                                      */
//========================================================================================


#include <iostream>

#include <sstream>
#include <string>
#include <fstream>

#include <vector>
#include <map>

struct AsciiChar
{

   int CharId;
   char AsciiCharacter;
   int width;
   int height;

   int xoffset;
   int yoffset;
   int xadvance;

   int x;
   int y;
};

int main()
{

   std::ifstream infile("Roboto-MediumMcSdfAtlas.txt");

   std::string line;

   std::cout << "String find"
             << "\n";

   std::string str;

   std::vector<std::string> strargs{"char id", "char", "width", "height", "xoffset=", "yoffset=", "xadvance=", "x=", "y="};

   std::vector<AsciiChar> ArrAsciiCharsSruct;
   AsciiChar AsciiCharsSruct;
   int LineNum = 0;

   while (std::getline(infile, line))
   {

      std::size_t found = 0;
      ArrAsciiCharsSruct.push_back(AsciiCharsSruct);

      for (size_t i = 0; i < strargs.size(); i++)
      {

         if (found != std::string::npos)
         {

            found = line.find(strargs[i], found + 1);
            std::size_t found1 = line.find("\"", found);
            std::size_t found2 = line.find("\"", found1 + 1);

            str = line.substr(found1 + 1, found2 - found1 - 1);

            if (strargs[i] != "char")
            {

               int charid = std::stoi(str);
               std::cout << strargs[i] << " = " << charid << "\n";

               if (strargs[i] == "char id")
                  ArrAsciiCharsSruct.back().CharId = charid;

               if (strargs[i] == "width")
                  ArrAsciiCharsSruct.back().width = charid;

               if (strargs[i] == "height")
                  ArrAsciiCharsSruct.back().height = charid;

               if (strargs[i] == "xoffset=")
                  ArrAsciiCharsSruct.back().xoffset = charid;

               if (strargs[i] == "yoffset=")
                  ArrAsciiCharsSruct.back().yoffset = charid;

               if (strargs[i] == "xadvance=")
                  ArrAsciiCharsSruct.back().xadvance = charid;

               if (strargs[i] == "x=")
                  ArrAsciiCharsSruct.back().x = charid;

               if (strargs[i] == "y=")
                  ArrAsciiCharsSruct.back().y = charid;
            }
            else
            {

               std::cout << strargs[i] << " = " << str << "\n";

               ArrAsciiCharsSruct.back().AsciiCharacter = *str.c_str();
            }
         }
      }

      LineNum++;

      std::cout << "AsciiCharsSruct: "
                << "charid " << ArrAsciiCharsSruct.back().CharId << "char " << ArrAsciiCharsSruct.back().AsciiCharacter << "x " << ArrAsciiCharsSruct.back().x << "\n";
   }

   std::cin.get();

   return 0;
}
