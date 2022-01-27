// Roman Mars

//========================================================================================
/*                                                                                      *
 * Import custom texture atlas for font to UE                                           *
 * Create askii chars Font, from sdf texture atlas                                      *
 * Chars and struct need -> to change default font atlas in UE font asset               *
 *                                                                                      */
//========================================================================================


#include "ToolsTestAsciiFont.h"

//#if WITH_EDITOR

#include <iostream>

#include <sstream>
#include <string>
#include <fstream>

#include <vector>
#include <map>
//#endif // WITH_EDITOR

int32 UToolsTestAsciiFont::AsciiOfChar(FString String)
{

    char c;

    c = String[0];

    ///cheak space
    //c = ' ';

    return (int)c;
}

TArray<int32> UToolsTestAsciiFont::ArrayAsciiOfChar(FString String, TArray<int32> &ArrayOut) //float &out /// for () { out = 100;}
{

    char c;

    c = String[0];

    ///cheak space
    //c = ' ';

    for (auto it : String.GetCharArray())
    {
        ArrayOut.Add((int32)it);
    }

    return ArrayOut;
}

//#if WITH_EDITOR

int AsciiCharsSruct(TArray<FAsciiChar> &StdAsciiCharsAtlas, bool UseCustomAtlas, FString PathToAtlas)
{

    //std::ifstream infile("Roboto-MediumMcSdfAtlas.txt");
    //std::ifstream infile.open("D://Users//VR//Downloads//Roboto//Roboto-MediumMcSdfAtlas.txt");;
    std::ifstream infile("D://Users//VR//Downloads//Roboto//Roboto-MediumMcSdfAtlas.txt");

    std::string line;

    std::cout << "String find"
              << "\n";

    std::string str;

    //<char id="40" index="12" char="(" width="36" height="133" xoffset="7" yoffset="-5" xadvance="45" chnl="15" x="0" y="0" page="0"/>
    std::vector<std::string> strargs{"char id", "char", "width", "height", "xoffset=", "yoffset=", "xadvance=", "x=", "y="};

    std::vector<AsciiChar> ArrAsciiCharsSruct;
    AsciiChar AsciiCharsSruct;
    int LineNum = 0;

    FAsciiChar QAsciiCharsSruct;

    while (std::getline(infile, line))
    {

        std::size_t found = 0;
        ArrAsciiCharsSruct.push_back(AsciiCharsSruct);
        StdAsciiCharsAtlas.Add(QAsciiCharsSruct);

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
                    {
                        ArrAsciiCharsSruct.back().CharId = charid;
                        StdAsciiCharsAtlas.Last().CharId = charid;
                    }

                    if (strargs[i] == "width")
                    {

                        ArrAsciiCharsSruct.back().width = charid;
                        StdAsciiCharsAtlas.Last().width = charid;
                    }

                    if (strargs[i] == "height")
                    {

                        ArrAsciiCharsSruct.back().height = charid;
                        StdAsciiCharsAtlas.Last().height = charid;
                    }

                    ///

                    if (strargs[i] == "xoffset=")
                    {

                        ArrAsciiCharsSruct.back().xoffset = charid;
                        StdAsciiCharsAtlas.Last().xoffset = charid;
                    }

                    if (strargs[i] == "yoffset=")
                    {

                        ArrAsciiCharsSruct.back().yoffset = charid;
                        StdAsciiCharsAtlas.Last().yoffset = charid;
                    }

                    if (strargs[i] == "xadvance=")
                    {

                        ArrAsciiCharsSruct.back().xadvance = charid;
                        StdAsciiCharsAtlas.Last().xadvance = charid;
                    }

                    ///

                    if (strargs[i] == "x=")
                    {

                        ArrAsciiCharsSruct.back().x = charid;
                        StdAsciiCharsAtlas.Last().x = charid;
                    }

                    if (strargs[i] == "y=")
                    {

                        ArrAsciiCharsSruct.back().y = charid;
                        StdAsciiCharsAtlas.Last().y = charid;
                    }
                }
                else
                {

                    std::cout << strargs[i] << " = " << str << "\n";

                    ArrAsciiCharsSruct.back().AsciiCharacter = *str.c_str();
                    StdAsciiCharsAtlas.Last().AsciiCharacter = str.c_str();
                }
            }
        }

        LineNum++;

        std::cout << "AsciiCharsSruct: "
                  << "charid " << ArrAsciiCharsSruct.back().CharId << "char " << ArrAsciiCharsSruct.back().AsciiCharacter << "x " << ArrAsciiCharsSruct.back().x << "\n";
    }

    //std::cin.get();

    return 0;
}

void UToolsTestAsciiFont::AsciiCharsAtlas(TArray<FAsciiChar> &AsciiCharsAtlas, bool UseCustomAtlas, FString PathToAtlas)
{

    AsciiCharsSruct(AsciiCharsAtlas, UseCustomAtlas, PathToAtlas);
}

void UToolsTestAsciiFont::UpdateDataTableAsciiCharsAtlas(UDataTable *TableData, TArray<FAsciiChar> AsciiCharsAtlas)
{

    if ((TableData == nullptr) || !TableData->RowStruct->IsChildOf(FAsciiCharForDT::StaticStruct()))
        return;

    for (auto it : AsciiCharsAtlas)
    {

        FAsciiCharForDT Row;

        Row.CharId = it.CharId;
        Row.AsciiCharacter = it.AsciiCharacter;
        Row.width = it.width;
        Row.height = it.height;

        ///

        Row.xoffset = it.xoffset;
        Row.yoffset = it.yoffset;
        Row.xadvance = it.xadvance;

        ///

        Row.x = it.x;
        Row.y = it.y;

        TableData->AddRow(FName(FString::FromInt(it.CharId)), Row); /// Row Name
    }
}

//#endif // WITH_EDITOR

void UToolsTestAsciiFont::GetFontCharacters(UFont *Font, TArray<FFontCharacterExp> &CharactersExp)
{

    FFontCharacterExp FFontCharacterExp1;
    FFontCharacterExp1.StartU = 0;
    FFontCharacterExp1.StartV = 0;
    FFontCharacterExp1.USize = 0;
    FFontCharacterExp1.VSize = 0;
    FFontCharacterExp1.TextureIndex = 0;
    FFontCharacterExp1.VerticalOffset = 0;

    if (Font != nullptr)
    {

        //UE_LOG(LogTemp, Warning, TEXT("The Font name is %s"), Font->GetName());
        UE_LOG(LogTemp, Warning, TEXT("Try Get Font Data"));

        for (int32 i = 0; i < Font->Characters.Num(); ++i)
        {

            CharactersExp.Add(FFontCharacterExp1);

            CharactersExp[i].StartU = Font->Characters[i].StartU;
            CharactersExp[i].StartV = Font->Characters[i].StartV;
            CharactersExp[i].USize = Font->Characters[i].USize;
            CharactersExp[i].VSize = Font->Characters[i].VSize;
            CharactersExp[i].TextureIndex = Font->Characters[i].TextureIndex;
            CharactersExp[i].VerticalOffset = Font->Characters[i].VerticalOffset;
        }
    }

    UE_LOG(LogTemp, Warning, TEXT("Font = nullptr"));
}
