// Roman Mars

//========================================================================================
/*                                                                                      *
 * CustomDistanceField Shader For Font                                                  *
 * Example of Material Node Networks                                                    *
 *                                                                                      */
//========================================================================================


/////

/////*CustomDistanceField Shader For Font*

    float d = (max(min(s.r,s.g), min(max(s.r,s.g),s.b))) - 0.5;
    

    // Weight between inside and outside (anti-aliasing)
    float w = clamp(d/fwidth(d) + 0.5, 0.0, 1.0);
    // Combining the background and foreground color
    return lerp(outsideColor, insideColor, w);

/////


  
///** Material Node Networks **///
/*
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_1"
   Begin Object Class=/Script/Engine.MaterialExpressionCustom Name="MaterialExpressionCustom_0"
   End Object
   Begin Object Name="MaterialExpressionCustom_0"
      Code="    float d = (max(min(s.r,s.g), min(max(s.r,s.g),s.b))) - 0.5;\r\n    \r\n\r\n    // Weight between inside and outside (anti-aliasing)\r\n    float w = clamp(d/fwidth(d) + 0.5, 0.0, 1.0);\r\n    // Combining the background and foreground color\r\n    return lerp(outsideColor, insideColor, w);"
      Inputs(0)=(InputName="outsideColor",Input=(Expression=MaterialExpressionConstant3Vector'"MaterialGraphNode_73.MaterialExpressionConstant3Vector_1"'))
      Inputs(1)=(InputName="insideColor",Input=(Expression=MaterialExpressionConstant3Vector'"MaterialGraphNode_74.MaterialExpressionConstant3Vector_2"'))
      Inputs(2)=(InputName="s",Input=(Expression=MaterialExpressionTextureSample'"MaterialExpressionTextureSample_3"',Mask=1,MaskR=1,MaskG=1,MaskB=1))
      MaterialExpressionEditorX=-287
      MaterialExpressionEditorY=-1445
      MaterialExpressionGuid=BD4C761C4F1F231BB8732993285C73CB
      Material=PreviewMaterial'"/Engine/Transient.msdfMaterial1"'
   End Object
   MaterialExpression=MaterialExpressionCustom'"MaterialExpressionCustom_0"'
   NodePosX=-287
   NodePosY=-1445
   NodeGuid=FE57AA57474F47B132CE05A02B6E69FE
   CustomProperties Pin (PinId=CBDB76AC45E6EC458FCF80AB922E51E6,PinName="outsideColor",PinType.PinCategory="required",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_73 C5E8F73A46E0B4F7B047688CBD48BC9B,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=FC8E33794377DB97EE425A9CF62CDBC3,PinName="insideColor",PinType.PinCategory="required",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_74 B87DD6D34DD7896ECEA6CFA17B63E225,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=9BE07170481FAFC07209A2ACEA744A74,PinName="s",PinType.PinCategory="required",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_72 093F50334A208A23C8989188CFE89F9A,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=28A587904323289A0873B3AEA0781914,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_Root_0 E90310CF4BB2C80863B7D3B2156E8C68,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_73"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant3Vector Name="MaterialExpressionConstant3Vector_1"
   End Object
   Begin Object Name="MaterialExpressionConstant3Vector_1"
      MaterialExpressionEditorX=-272
      MaterialExpressionEditorY=-1760
      MaterialExpressionGuid=882373B14662B3F5A087C6B1CB0CB670
      Material=PreviewMaterial'"/Engine/Transient.msdfMaterial1"'
   End Object
   MaterialExpression=MaterialExpressionConstant3Vector'"MaterialExpressionConstant3Vector_1"'
   NodePosX=-272
   NodePosY=-1760
   NodeGuid=F0A188D144F2B023B3F3B3BEE97BDF7F
   CustomProperties Pin (PinId=C5E8F73A46E0B4F7B047688CBD48BC9B,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_1 CBDB76AC45E6EC458FCF80AB922E51E6,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_74"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant3Vector Name="MaterialExpressionConstant3Vector_2"
   End Object
   Begin Object Name="MaterialExpressionConstant3Vector_2"
      Constant=(R=1.000000,G=1.000000,B=1.000000,A=0.000000)
      MaterialExpressionEditorX=-272
      MaterialExpressionEditorY=-1616
      MaterialExpressionGuid=882373B14662B3F5A087C6B1CB0CB670
      Material=PreviewMaterial'"/Engine/Transient.msdfMaterial1"'
   End Object
   MaterialExpression=MaterialExpressionConstant3Vector'"MaterialExpressionConstant3Vector_2"'
   NodePosX=-272
   NodePosY=-1616
   NodeGuid=32A90298415239BEFCBE02965CEAAF20
   CustomProperties Pin (PinId=B87DD6D34DD7896ECEA6CFA17B63E225,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_1 FC8E33794377DB97EE425A9CF62CDBC3,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object



/////

DistanceField


///


Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_1"
   Begin Object Class=/Script/Engine.MaterialExpressionCustom Name="MaterialExpressionCustom_1"
   End Object
   Begin Object Name="MaterialExpressionCustom_1"
      Code="return smoothstep(varMin,varMax,varA);"
      Inputs(0)=(InputName="varA",Input=(Expression=MaterialExpressionFunctionInput'"MaterialGraphNode_7.MaterialExpressionFunctionInput_2"'))
      Inputs(1)=(InputName="varMin",Input=(Expression=MaterialExpressionSubtract'"MaterialGraphNode_5.MaterialExpressionSubtract_0"'))
      Inputs(2)=(InputName="varMax",Input=(Expression=MaterialExpressionAdd'"MaterialGraphNode_6.MaterialExpressionAdd_1"'))
      MaterialExpressionEditorX=-1103
      MaterialExpressionEditorY=366
      MaterialExpressionGuid=517DA4BD47A6AD50968B1AB2E0E50C4D
      Material=Material'"/Engine/Transient.Material_0"'
   End Object
   MaterialExpression=MaterialExpressionCustom'"MaterialExpressionCustom_1"'
   NodePosX=-1103
   NodePosY=366
   NodeGuid=52AF44344A5F56A04481D2BA58DF9069
   CustomProperties Pin (PinId=F750C5DF405A387C04410EB45329490E,PinName="varA",PinType.PinCategory="required",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_7 769D6FD6484343A6A9F9F4BCFCF82BED,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=66C1D7F14EA129A2960E16984C6FE227,PinName="varMin",PinType.PinCategory="required",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_5 61B43F54405552D2F3D422B712E51C7E,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=491A8EC340D262D96AF51BAE6D32F4DB,PinName="varMax",PinType.PinCategory="required",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_6 C52CF3324A57F35F804807B44D8A89FD,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=E6B71DEC48599599D100258211DF3E7A,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_0 A94E207B4E2456E226A38D9B1ECD3FB4,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_2"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_9"
   End Object
   Begin Object Name="MaterialExpressionConstant_9"
      R=0.500000
      MaterialExpressionEditorX=-1463
      MaterialExpressionEditorY=325
      MaterialExpressionGuid=0E4802384141197D4FEAD797597C35F1
      Material=Material'"/Engine/Transient.Material_0"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_9"'
   NodePosX=-1463
   NodePosY=325
   NodeGuid=1E20FA9C46BCFB995A14ECA966071D03
   CustomProperties Pin (PinId=1750D98D48B426110DF686A79E0BA2E5,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_5 1D09B2934476D8B2669BF98225CAC1FA,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_3"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_10"
   End Object
   Begin Object Name="MaterialExpressionConstant_10"
      R=0.500000
      MaterialExpressionEditorX=-1461
      MaterialExpressionEditorY=641
      MaterialExpressionGuid=C00910FF42C083FD5A12498414067B70
      Material=Material'"/Engine/Transient.Material_0"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_10"'
   NodePosX=-1461
   NodePosY=641
   NodeGuid=6CD4F1D04E9E88792AEB31B3E2909EAA
   CustomProperties Pin (PinId=38C482B547C2529E9F994185D41E1EAE,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_6 504B7B4D4DA6E0BA2F61C798E48CB92C,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_4"
   Begin Object Class=/Script/Engine.MaterialExpressionFunctionInput Name="MaterialExpressionFunctionInput_0"
   End Object
   Begin Object Name="MaterialExpressionFunctionInput_0"
      InputName="EdgeSoftness"
      Id=BE925AC5499B6B6FCE16329ED2D5FDB1
      InputType=FunctionInput_Scalar
      bUsePreviewValueAsDefault=True
      MaterialExpressionEditorX=-1462
      MaterialExpressionEditorY=481
      MaterialExpressionGuid=E82491F040E62EC38D5989AFE40B8D21
      Material=Material'"/Engine/Transient.Material_0"'
   End Object
   MaterialExpression=MaterialExpressionFunctionInput'"MaterialExpressionFunctionInput_0"'
   NodePosX=-1462
   NodePosY=481
   NodeGuid=404609F841265EB845B444A8CBA16588
   CustomProperties Pin (PinId=F91CB2E44D87EC05C3144CB373F0D412,PinName="Preview",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=98F366404B33FDB2EC7D35B1F964AF0B,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_5 52482C1641D1F7AAEFDB4693EDB2CD19,MaterialGraphNode_6 A2789595444404232A5AC6BE2D53109B,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_5"
   Begin Object Class=/Script/Engine.MaterialExpressionSubtract Name="MaterialExpressionSubtract_0"
   End Object
   Begin Object Name="MaterialExpressionSubtract_0"
      A=(Expression=MaterialExpressionConstant'"MaterialGraphNode_2.MaterialExpressionConstant_9"')
      B=(Expression=MaterialExpressionFunctionInput'"MaterialGraphNode_4.MaterialExpressionFunctionInput_0"')
      MaterialExpressionEditorX=-1325
      MaterialExpressionEditorY=381
      MaterialExpressionGuid=D8008F5D4F98110DCA015D9FA0F0F2F2
      Material=Material'"/Engine/Transient.Material_0"'
   End Object
   MaterialExpression=MaterialExpressionSubtract'"MaterialExpressionSubtract_0"'
   NodePosX=-1325
   NodePosY=381
   NodeGuid=BAAE059347C0A84E382A26A367222F2F
   CustomProperties Pin (PinId=1D09B2934476D8B2669BF98225CAC1FA,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_2 1750D98D48B426110DF686A79E0BA2E5,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=52482C1641D1F7AAEFDB4693EDB2CD19,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_4 98F366404B33FDB2EC7D35B1F964AF0B,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=61B43F54405552D2F3D422B712E51C7E,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_1 66C1D7F14EA129A2960E16984C6FE227,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_6"
   Begin Object Class=/Script/Engine.MaterialExpressionAdd Name="MaterialExpressionAdd_1"
   End Object
   Begin Object Name="MaterialExpressionAdd_1"
      A=(Expression=MaterialExpressionFunctionInput'"MaterialGraphNode_4.MaterialExpressionFunctionInput_0"')
      B=(Expression=MaterialExpressionConstant'"MaterialGraphNode_3.MaterialExpressionConstant_10"')
      MaterialExpressionEditorX=-1327
      MaterialExpressionEditorY=547
      MaterialExpressionGuid=2996BACD4CD932F8A5A24494232D68F7
      Material=Material'"/Engine/Transient.Material_0"'
   End Object
   MaterialExpression=MaterialExpressionAdd'"MaterialExpressionAdd_1"'
   NodePosX=-1327
   NodePosY=547
   NodeGuid=7400BE3C4CB84ACAB14C85AFA0A5FD65
   CustomProperties Pin (PinId=A2789595444404232A5AC6BE2D53109B,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_4 98F366404B33FDB2EC7D35B1F964AF0B,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=504B7B4D4DA6E0BA2F61C798E48CB92C,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_3 38C482B547C2529E9F994185D41E1EAE,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=C52CF3324A57F35F804807B44D8A89FD,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_1 491A8EC340D262D96AF51BAE6D32F4DB,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_7"
   Begin Object Class=/Script/Engine.MaterialExpressionFunctionInput Name="MaterialExpressionFunctionInput_2"
   End Object
   Begin Object Name="MaterialExpressionFunctionInput_2"
      InputName="DistanceField"
      Id=1639960C494BC4F3C8D5EA9D31B74968
      InputType=FunctionInput_Scalar
      MaterialExpressionEditorX=-1335
      MaterialExpressionEditorY=160
      MaterialExpressionGuid=18C149EF48E35B0554C0F0B1E2F0C954
      Material=Material'"/Engine/Transient.Material_0"'
   End Object
   MaterialExpression=MaterialExpressionFunctionInput'"MaterialExpressionFunctionInput_2"'
   NodePosX=-1335
   NodePosY=160
   NodeGuid=872A2DFF4DE7010F346F7DA86E54D45E
   CustomProperties Pin (PinId=EF2BBDEC499D0652D878A2A5B5238557,PinName="Preview",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=769D6FD6484343A6A9F9F4BCFCF82BED,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_1 F750C5DF405A387C04410EB45329490E,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object

/////


Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_117"
   Begin Object Class=/Script/Engine.MaterialExpressionMaterialFunctionCall Name="MaterialExpressionMaterialFunctionCall_17"
   End Object
   Begin Object Name="MaterialExpressionMaterialFunctionCall_17"
      MaterialFunction=MaterialFunction'"/Game/VRParkour/Blueprints/Core/DistanceField1.DistanceField1"'
      FunctionInputs(0)=(ExpressionInputId=1639960C494BC4F3C8D5EA9D31B74968,Input=(Expression=MaterialExpressionTextureSample'"MaterialExpressionTextureSample_10"',InputName="DistanceField",Mask=1,MaskR=1,MaskG=1,MaskB=1))
      FunctionInputs(1)=(ExpressionInputId=BE925AC5499B6B6FCE16329ED2D5FDB1,Input=(Expression=MaterialExpressionConstant'"MaterialGraphNode_118.MaterialExpressionConstant_12"',InputName="EdgeSoftness"))
      FunctionOutputs(0)=(ExpressionOutputId=44F03132478C719C495DCD978FBDE979,Output=(OutputName="Result"))
      MaterialExpressionEditorX=1120
      MaterialExpressionEditorY=-2032
      MaterialExpressionGuid=B4D802054E4F826EB3EAF7A240DD8E64
      Material=PreviewMaterial'"/Engine/Transient.UI_HightQualityM_Test"'
      Outputs(0)=(OutputName="Result")
   End Object
   MaterialExpression=MaterialExpressionMaterialFunctionCall'"MaterialExpressionMaterialFunctionCall_17"'
   NodePosX=1120
   NodePosY=-2032
   NodeGuid=240D156E43D2F3756AC68E8AD6EA4CC5
   CustomProperties Pin (PinId=E2F8AD2E4AB6CD92D5097EA07CC10098,PinName="DistanceField (S)",PinType.PinCategory="required",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_115 E3A80CC44BE4C0DD4C63738250B37888,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=416CE6EE41977A9BA737E8B14843889D,PinName="EdgeSoftness (S)",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_118 60331D8D497B480C59D790B89320BA06,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=F718FE66493E2AB22616EFA5D46B2815,PinName="Result",Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_120 594C4D7C4434E797823B4BBF9BC84429,MaterialGraphNode_123 2F0807924D3A2782B000E98FF89CA9C8,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_118"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_12"
   End Object
   Begin Object Name="MaterialExpressionConstant_12"
      R=0.550000
      MaterialExpressionEditorX=976
      MaterialExpressionEditorY=-2000
      MaterialExpressionGuid=DD8085BE4EA025A740BD2E92D62D0E16
      Material=PreviewMaterial'"/Engine/Transient.UI_HightQualityM_Test"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_12"'
   NodePosX=976
   NodePosY=-2000
   NodeGuid=3E2748B9483AF5B093AD1D914E8B0F12
   CustomProperties Pin (PinId=60331D8D497B480C59D790B89320BA06,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_117 416CE6EE41977A9BA737E8B14843889D,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_122"
   Begin Object Class=/Script/Engine.MaterialExpressionMultiply Name="MaterialExpressionMultiply_8"
   End Object
   Begin Object Name="MaterialExpressionMultiply_8"
      A=(Expression=MaterialExpressionSubtract'"MaterialGraphNode_123.MaterialExpressionSubtract_11"')
      MaterialExpressionEditorX=1552
      MaterialExpressionEditorY=-1904
      MaterialExpressionGuid=0279122D45C41D2634ABD78D6CCE9C04
      Material=PreviewMaterial'"/Engine/Transient.UI_HightQualityM_Test"'
   End Object
   MaterialExpression=MaterialExpressionMultiply'"MaterialExpressionMultiply_8"'
   NodePosX=1552
   NodePosY=-1904
   NodeGuid=CB26E5A345142AD4D6839AA028B2F829
   CustomProperties Pin (PinId=A4DD0E6741A706CB0BFD5DA919F70238,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_123 05A04D734348C04E50411EB6E3D994B5,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=7DFCBD5C49F239194F4738A2E50F8CAA,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=709802B946A512813B6065BBE65AFAA1,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_123"
   Begin Object Class=/Script/Engine.MaterialExpressionSubtract Name="MaterialExpressionSubtract_11"
   End Object
   Begin Object Name="MaterialExpressionSubtract_11"
      A=(Expression=MaterialExpressionMaterialFunctionCall'"MaterialGraphNode_117.MaterialExpressionMaterialFunctionCall_17"')
      ConstB=0.075000
      MaterialExpressionEditorX=1568
      MaterialExpressionEditorY=-2016
      MaterialExpressionGuid=90C9464D45FE563758E4ECA72D8E5C71
      Material=PreviewMaterial'"/Engine/Transient.UI_HightQualityM_Test"'
   End Object
   MaterialExpression=MaterialExpressionSubtract'"MaterialExpressionSubtract_11"'
   NodePosX=1568
   NodePosY=-2016
   NodeGuid=BF0BE08C4478929B2964CD9DA8126025
   CustomProperties Pin (PinId=2F0807924D3A2782B000E98FF89CA9C8,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_117 F718FE66493E2AB22616EFA5D46B2815,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=209DE62F452C042D8CD773A1D3CD8D71,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=05A04D734348C04E50411EB6E3D994B5,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_122 A4DD0E6741A706CB0BFD5DA919F70238,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object


/////

Textrure From Atlas


Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_367"
   Begin Object Class=/Script/Engine.MaterialExpressionMaterialFunctionCall Name="MaterialExpressionMaterialFunctionCall_14"
   End Object
   Begin Object Name="MaterialExpressionMaterialFunctionCall_14"
      MaterialFunction=MaterialFunction'"/Engine/Functions/Engine_MaterialFunctions02/Utility/MakeFloat2.MakeFloat2"'
      FunctionInputs(0)=(ExpressionInputId=529C1D96441E07EB03A9E59B8A7F67B6,Input=(InputName="X"))
      FunctionInputs(1)=(ExpressionInputId=B5BD7D1B494F6928732CCDA1C63D8E15,Input=(InputName="Y"))
      FunctionOutputs(0)=(ExpressionOutputId=0DD6F9954C067C3E5DDBBBA0D6910DD2,Output=(OutputName="Result"))
      MaterialExpressionEditorX=-1184
      MaterialExpressionEditorY=-3824
      MaterialExpressionGuid=D2D09DD7461292749889D892945AB2A8
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
      Outputs(0)=(OutputName="Result")
   End Object
   MaterialExpression=MaterialExpressionMaterialFunctionCall'"MaterialExpressionMaterialFunctionCall_14"'
   NodePosX=-1184
   NodePosY=-3824
   NodeGuid=21D24D454336D68BD3A353A4DC590879
   CustomProperties Pin (PinId=5DB9D7B5417F5AC57981C5986293DEE8,PinName="X (S)",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=61311C4F498DA151837BED91C81A67FD,PinName="Y (S)",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=39F9E9814161F4415EF0D6B672D95FC4,PinName="Result",Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_368"
   Begin Object Class=/Script/Engine.MaterialExpressionTextureCoordinate Name="MaterialExpressionTextureCoordinate_16"
   End Object
   Begin Object Name="MaterialExpressionTextureCoordinate_16"
      MaterialExpressionEditorX=-784
      MaterialExpressionEditorY=-4160
      MaterialExpressionGuid=8977A8324999C6F265665FAA11C7CC67
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionTextureCoordinate'"MaterialExpressionTextureCoordinate_16"'
   NodePosX=-784
   NodePosY=-4160
   NodeGuid=14C519464566A99E2DD150BD10C0D578
   CustomProperties Pin (PinId=3B9C926148416BB6B20ADE92015F193A,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_369 AACE0976425F32E1CD0024B69AEEA53B,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_380"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_82"
   End Object
   Begin Object Name="MaterialExpressionConstant_82"
      R=1.000000
      MaterialExpressionEditorX=-672
      MaterialExpressionEditorY=-4960
      MaterialExpressionGuid=DD9DBD264B1944CBEF751193C53DD409
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_82"'
   NodePosX=-672
   NodePosY=-4960
   NodeGuid=5271E1844AE80A30E3BCAE9F4F3ADBE5
   CustomProperties Pin (PinId=17A0FE8A40727DF62F0509A48B76E368,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_379 4E079D7D4BF9F1F8AB7D228F899E3C96,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_381"
   Begin Object Class=/Script/Engine.MaterialExpressionMaterialFunctionCall Name="MaterialExpressionMaterialFunctionCall_15"
   End Object
   Begin Object Name="MaterialExpressionMaterialFunctionCall_15"
      MaterialFunction=MaterialFunction'"/Engine/Functions/Engine_MaterialFunctions02/Utility/MakeFloat2.MakeFloat2"'
      FunctionInputs(0)=(ExpressionInputId=529C1D96441E07EB03A9E59B8A7F67B6,Input=(Expression=MaterialExpressionScalarParameter'"MaterialGraphNode_428.MaterialExpressionScalarParameter_6"',InputName="X"))
      FunctionInputs(1)=(ExpressionInputId=B5BD7D1B494F6928732CCDA1C63D8E15,Input=(Expression=MaterialExpressionScalarParameter'"MaterialGraphNode_427.MaterialExpressionScalarParameter_5"',InputName="Y"))
      FunctionOutputs(0)=(ExpressionOutputId=0DD6F9954C067C3E5DDBBBA0D6910DD2,Output=(OutputName="Result"))
      MaterialExpressionEditorX=-720
      MaterialExpressionEditorY=-4768
      MaterialExpressionGuid=82CA792744DFB12D4A2B30B1C73DCA55
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
      Outputs(0)=(OutputName="Result")
   End Object
   MaterialExpression=MaterialExpressionMaterialFunctionCall'"MaterialExpressionMaterialFunctionCall_15"'
   NodePosX=-720
   NodePosY=-4768
   NodeGuid=9B10804443034D0AD169D58A3ABE14FB
   CustomProperties Pin (PinId=13015A524C80CB33BD1272BA65BDF3BB,PinName="X (S)",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_428 9574B55E442ED24D90DCA99B14A78D60,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=6D7E07C64119724D18B7F1BBE5EE1781,PinName="Y (S)",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_427 DF9E59B741F91E8B42E2029FDA9590FB,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=E5AF417841C439715F7E5BBF5A236746,PinName="Result",Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_379 EF63E6554ACB07C6D8BB0986DCDD40FD,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_389"
   Begin Object Class=/Script/Engine.MaterialExpressionDivide Name="MaterialExpressionDivide_29"
   End Object
   Begin Object Name="MaterialExpressionDivide_29"
      A=(Expression=MaterialExpressionScalarParameter'"MaterialGraphNode_425.MaterialExpressionScalarParameter_2"')
      B=(Expression=MaterialExpressionScalarParameter'"MaterialGraphNode_429.MaterialExpressionScalarParameter_7"')
      MaterialExpressionEditorX=-816
      MaterialExpressionEditorY=-3696
      MaterialExpressionGuid=87E5647C4B5C3B2678EFA78DA683FB16
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionDivide'"MaterialExpressionDivide_29"'
   NodePosX=-816
   NodePosY=-3696
   NodeGuid=692A737C477DD45816F932AA5C36C376
   CustomProperties Pin (PinId=9865173247AE59A9C24E829A14697410,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_425 994DF58F47AE6CB0A9CCA58C2E4B7B93,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=CEFD095D438FA2E0141515B3BBBE3D76,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_429 9484A6FD4010732B84A022A7811D4202,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=0A8BBE2E45B0CE5600BB86AE872F9793,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_391 9445BA2E49DE6707CAFFE9B579E019A3,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_390"
   Begin Object Class=/Script/Engine.MaterialExpressionDivide Name="MaterialExpressionDivide_30"
   End Object
   Begin Object Name="MaterialExpressionDivide_30"
      A=(Expression=MaterialExpressionScalarParameter'"MaterialGraphNode_426.MaterialExpressionScalarParameter_4"')
      B=(Expression=MaterialExpressionScalarParameter'"MaterialGraphNode_430.MaterialExpressionScalarParameter_8"')
      MaterialExpressionEditorX=-816
      MaterialExpressionEditorY=-3376
      MaterialExpressionGuid=87E5647C4B5C3B2678EFA78DA683FB16
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionDivide'"MaterialExpressionDivide_30"'
   NodePosX=-816
   NodePosY=-3376
   NodeGuid=548A04AF4A718E6010EEFAB417D4F5AB
   CustomProperties Pin (PinId=0E168AD044D5A817E1D298899897F5D7,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_426 004A5B27419248940AE4CCAE7ACB6686,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=1ED1BF674D6C99E50281E6B27AC7D849,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_430 909EF34A493605F035862A9BBFA02053,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=3FAEDB4641A336CAC7A2618129ABCE45,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_391 C74275C847A5E376FBA34E8631F821EC,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_391"
   Begin Object Class=/Script/Engine.MaterialExpressionMaterialFunctionCall Name="MaterialExpressionMaterialFunctionCall_83"
   End Object
   Begin Object Name="MaterialExpressionMaterialFunctionCall_83"
      MaterialFunction=MaterialFunction'"/Engine/Functions/Engine_MaterialFunctions02/Utility/MakeFloat2.MakeFloat2"'
      FunctionInputs(0)=(ExpressionInputId=529C1D96441E07EB03A9E59B8A7F67B6,Input=(Expression=MaterialExpressionDivide'"MaterialGraphNode_389.MaterialExpressionDivide_29"',InputName="X"))
      FunctionInputs(1)=(ExpressionInputId=B5BD7D1B494F6928732CCDA1C63D8E15,Input=(Expression=MaterialExpressionDivide'"MaterialGraphNode_390.MaterialExpressionDivide_30"',InputName="Y"))
      FunctionOutputs(0)=(ExpressionOutputId=0DD6F9954C067C3E5DDBBBA0D6910DD2,Output=(OutputName="Result"))
      MaterialExpressionEditorX=-656
      MaterialExpressionEditorY=-3744
      MaterialExpressionGuid=D2D09DD7461292749889D892945AB2A8
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
      Outputs(0)=(OutputName="Result")
   End Object
   MaterialExpression=MaterialExpressionMaterialFunctionCall'"MaterialExpressionMaterialFunctionCall_83"'
   NodePosX=-656
   NodePosY=-3744
   NodeGuid=EB9AB9464AD57DA3895B55AACE2D1AE5
   CustomProperties Pin (PinId=9445BA2E49DE6707CAFFE9B579E019A3,PinName="X (S)",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_389 0A8BBE2E45B0CE5600BB86AE872F9793,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=C74275C847A5E376FBA34E8631F821EC,PinName="Y (S)",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_390 3FAEDB4641A336CAC7A2618129ABCE45,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=A789C8834E78969C0BFA19AC9D12B630,PinName="Result",Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_369 2DE5FBE94184F51611A5209F44C62EBD,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_425"
   Begin Object Class=/Script/Engine.MaterialExpressionScalarParameter Name="MaterialExpressionScalarParameter_2"
   End Object
   Begin Object Name="MaterialExpressionScalarParameter_2"
      DefaultValue=1024.000000
      ParameterName="XTexRes"
      ExpressionGUID=729C13144AAD9A8D4C74738082AB5258
      MaterialExpressionEditorX=-816
      MaterialExpressionEditorY=-3776
      MaterialExpressionGuid=E658DADB4631E8495B5D21A0AF226387
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionScalarParameter'"MaterialExpressionScalarParameter_2"'
   NodePosX=-816
   NodePosY=-3776
   bCanRenameNode=True
   NodeGuid=1370264E4FCD5C3E4F85C98AFE37E216
   CustomProperties Pin (PinId=994DF58F47AE6CB0A9CCA58C2E4B7B93,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_389 9865173247AE59A9C24E829A14697410,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_426"
   Begin Object Class=/Script/Engine.MaterialExpressionScalarParameter Name="MaterialExpressionScalarParameter_4"
   End Object
   Begin Object Name="MaterialExpressionScalarParameter_4"
      DefaultValue=1024.000000
      ParameterName="YTexRes"
      ExpressionGUID=05DB8C1E415993742692CAB062A4EC5E
      MaterialExpressionEditorX=-816
      MaterialExpressionEditorY=-3456
      MaterialExpressionGuid=8923AD9841C67E7AF308459D547D0901
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionScalarParameter'"MaterialExpressionScalarParameter_4"'
   NodePosX=-816
   NodePosY=-3456
   bCanRenameNode=True
   NodeGuid=4840D47E4A71815FDA02E5BE56B6AF3B
   CustomProperties Pin (PinId=004A5B27419248940AE4CCAE7ACB6686,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_390 0E168AD044D5A817E1D298899897F5D7,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_427"
   Begin Object Class=/Script/Engine.MaterialExpressionScalarParameter Name="MaterialExpressionScalarParameter_5"
   End Object
   Begin Object Name="MaterialExpressionScalarParameter_5"
      DefaultValue=1024.000000
      ParameterName="YTexRes"
      ExpressionGUID=C4130CFF4BAA2FB2E3553AB5CB5937AF
      MaterialExpressionEditorX=-864
      MaterialExpressionEditorY=-4656
      MaterialExpressionGuid=8923AD9841C67E7AF308459D547D0901
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionScalarParameter'"MaterialExpressionScalarParameter_5"'
   NodePosX=-864
   NodePosY=-4656
   bCanRenameNode=True
   NodeGuid=1E74B5C649FE5077E85CCAA330D621F8
   CustomProperties Pin (PinId=DF9E59B741F91E8B42E2029FDA9590FB,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_381 6D7E07C64119724D18B7F1BBE5EE1781,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_428"
   Begin Object Class=/Script/Engine.MaterialExpressionScalarParameter Name="MaterialExpressionScalarParameter_6"
   End Object
   Begin Object Name="MaterialExpressionScalarParameter_6"
      DefaultValue=1024.000000
      ParameterName="XTexRes"
      ExpressionGUID=482C3045411E8226F87B5FA8E0B3B0A6
      MaterialExpressionEditorX=-864
      MaterialExpressionEditorY=-4736
      MaterialExpressionGuid=E658DADB4631E8495B5D21A0AF226387
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionScalarParameter'"MaterialExpressionScalarParameter_6"'
   NodePosX=-864
   NodePosY=-4736
   bCanRenameNode=True
   NodeGuid=BD683B294665081BFD64A1BF0272BE0E
   CustomProperties Pin (PinId=9574B55E442ED24D90DCA99B14A78D60,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_381 13015A524C80CB33BD1272BA65BDF3BB,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_429"
   Begin Object Class=/Script/Engine.MaterialExpressionScalarParameter Name="MaterialExpressionScalarParameter_7"
   End Object
   Begin Object Name="MaterialExpressionScalarParameter_7"
      DefaultValue=78.000000
      ParameterName="w"
      ExpressionGUID=243A66F9494275CEFF269A84BCE34E86
      MaterialExpressionEditorX=-816
      MaterialExpressionEditorY=-3600
      MaterialExpressionGuid=62CCBF4247EC7394613D8F913BF1F7D0
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionScalarParameter'"MaterialExpressionScalarParameter_7"'
   NodePosX=-816
   NodePosY=-3600
   bCanRenameNode=True
   NodeGuid=73C01DC9435FB6DD40B1049BFC4A1290
   CustomProperties Pin (PinId=9484A6FD4010732B84A022A7811D4202,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_389 CEFD095D438FA2E0141515B3BBBE3D76,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_430"
   Begin Object Class=/Script/Engine.MaterialExpressionScalarParameter Name="MaterialExpressionScalarParameter_8"
   End Object
   Begin Object Name="MaterialExpressionScalarParameter_8"
      DefaultValue=110.000000
      ParameterName="h"
      ExpressionGUID=9A6E05FD425063CCE3C23BADC13B336C
      MaterialExpressionEditorX=-816
      MaterialExpressionEditorY=-3280
      MaterialExpressionGuid=1D4B9E1049C2EEDAF7D251AADCFBB50F
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionScalarParameter'"MaterialExpressionScalarParameter_8"'
   NodePosX=-816
   NodePosY=-3280
   bCanRenameNode=True
   NodeGuid=4075B8C941742D836664BBA974886AAD
   CustomProperties Pin (PinId=909EF34A493605F035862A9BBFA02053,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_390 1ED1BF674D6C99E50281E6B27AC7D849,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_435"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_85"
   End Object
   Begin Object Name="MaterialExpressionConstant_85"
      R=36.000000
      MaterialExpressionEditorX=-960
      MaterialExpressionEditorY=-3552
      MaterialExpressionGuid=D52EFD1D4ED84B0FAE7CDC95BCFAF35C
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_85"'
   NodePosX=-960
   NodePosY=-3552
   NodeGuid=FEEA63194502B220E84BF7B5B3EF4F24
   CustomProperties Pin (PinId=E4193AE44F0F75FF54934C988BF02170,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_436"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_86"
   End Object
   Begin Object Name="MaterialExpressionConstant_86"
      R=133.000000
      MaterialExpressionEditorX=-960
      MaterialExpressionEditorY=-3488
      MaterialExpressionGuid=D52EFD1D4ED84B0FAE7CDC95BCFAF35C
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_86"'
   NodePosX=-960
   NodePosY=-3488
   NodeGuid=1AA18A5340A41010C3A7CCB9630BD368
   CustomProperties Pin (PinId=68D2B99041BC54CD8187989EA2DD0C9A,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_445"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_103"
   End Object
   Begin Object Name="MaterialExpressionConstant_103"
      R=128.000000
      MaterialExpressionEditorX=-960
      MaterialExpressionEditorY=-3424
      MaterialExpressionGuid=D52EFD1D4ED84B0FAE7CDC95BCFAF35C
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_103"'
   NodePosX=-960
   NodePosY=-3424
   NodeGuid=64FB9C3B46893FEB5A7176BE08A42CDF
   CustomProperties Pin (PinId=8B243B12476A77F66C0863ACE6778C28,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_446"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_104"
   End Object
   Begin Object Name="MaterialExpressionConstant_104"
      R=128.000000
      MaterialExpressionEditorX=-960
      MaterialExpressionEditorY=-3360
      MaterialExpressionGuid=D52EFD1D4ED84B0FAE7CDC95BCFAF35C
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_104"'
   NodePosX=-960
   NodePosY=-3360
   NodeGuid=B2AB7D3745DB68DC80C47F922B156BC2
   CustomProperties Pin (PinId=3402511043C5DE027D7A16AC7E822996,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode_Comment Name="MaterialGraphNode_Comment_6"
   Begin Object Class=/Script/Engine.MaterialExpressionComment Name="MaterialExpressionComment_6"
   End Object
   Begin Object Name="MaterialExpressionComment_6"
      SizeX=192
      SizeY=688
      Text="Tex atlas res, w, h"
      MaterialExpressionEditorX=-871
      MaterialExpressionEditorY=-3862
      MaterialExpressionGuid=2332D3944C78E549EDDEBC9B4914EAD6
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpressionComment=MaterialExpressionComment'"MaterialExpressionComment_6"'
   NodePosX=-871
   NodePosY=-3862
   NodeWidth=192
   NodeHeight=688
   NodeComment="Tex atlas res, w, h"
   NodeGuid=8BB1350745C336C51582F48B9CB98A0B
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode_Comment Name="MaterialGraphNode_Comment_7"
   Begin Object Class=/Script/Engine.MaterialExpressionComment Name="MaterialExpressionComment_7"
   End Object
   Begin Object Name="MaterialExpressionComment_7"
      SizeX=173
      SizeY=220
      Text="Tex atlas res"
      MaterialExpressionEditorX=-882
      MaterialExpressionEditorY=-4786
      MaterialExpressionGuid=26474BF548F4C6EAA7CE1B8287D12BC2
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpressionComment=MaterialExpressionComment'"MaterialExpressionComment_7"'
   NodePosX=-882
   NodePosY=-4786
   NodeWidth=173
   NodeHeight=220
   NodeComment="Tex atlas res"
   NodeGuid=49952D364A62F7A238A98AA2AB0C533C
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_369"
   Begin Object Class=/Script/Engine.MaterialExpressionDivide Name="MaterialExpressionDivide_17"
   End Object
   Begin Object Name="MaterialExpressionDivide_17"
      A=(Expression=MaterialExpressionTextureCoordinate'"MaterialGraphNode_368.MaterialExpressionTextureCoordinate_16"')
      B=(Expression=MaterialExpressionMaterialFunctionCall'"MaterialGraphNode_391.MaterialExpressionMaterialFunctionCall_83"')
      MaterialExpressionEditorX=-512
      MaterialExpressionEditorY=-4048
      MaterialExpressionGuid=C017C2E84580DC04958205AF28FEB1AE
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionDivide'"MaterialExpressionDivide_17"'
   NodePosX=-512
   NodePosY=-4048
   NodeGuid=41F52E204DA234DA6A9BE5ADC566FADA
   CustomProperties Pin (PinId=AACE0976425F32E1CD0024B69AEEA53B,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_368 3B9C926148416BB6B20ADE92015F193A,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=2DE5FBE94184F51611A5209F44C62EBD,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_391 A789C8834E78969C0BFA19AC9D12B630,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=967FC29D40E4DCE936A32BB02512E6C4,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_375 C58E1FE546366BC751A183BB535C08AF,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_370"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant2Vector Name="MaterialExpressionConstant2Vector_4"
   End Object
   Begin Object Name="MaterialExpressionConstant2Vector_4"
      R=8.000000
      G=8.000000
      MaterialExpressionEditorX=-608
      MaterialExpressionEditorY=-3904
      MaterialExpressionGuid=5F12860F447D933090A1A3A18047A3DF
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant2Vector'"MaterialExpressionConstant2Vector_4"'
   NodePosX=-608
   NodePosY=-3904
   NodeGuid=30197AA7450817464F2CEDAAD93772D0
   CustomProperties Pin (PinId=77CF28164B559E079E9E10B6A6DE4C23,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_371"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_19"
   End Object
   Begin Object Name="MaterialExpressionConstant_19"
      R=8.000000
      MaterialExpressionEditorX=-528
      MaterialExpressionEditorY=-3904
      MaterialExpressionGuid=D1280B214187A9A2C65F7FBC6DE7A775
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_19"'
   NodePosX=-528
   NodePosY=-3904
   NodeGuid=18EE5EBA444C9DD9A648DF9804B3A453
   CustomProperties Pin (PinId=2C1A8CFA468FB0A7319C22B4458DDE92,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_372"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_43"
   End Object
   Begin Object Name="MaterialExpressionConstant_43"
      R=0.125000
      MaterialExpressionEditorX=-608
      MaterialExpressionEditorY=-4384
      MaterialExpressionGuid=E0E9BF98457816483CE3BF9C063CBD57
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_43"'
   NodePosX=-608
   NodePosY=-4384
   NodeGuid=1E975DE44CF267347210DB8CCB5C006F
   CustomProperties Pin (PinId=6048ABE0455072A016E46FA38BC4E06D,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_374 969804D745FCA440C471AC93C978DAE4,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_373"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_52"
   End Object
   Begin Object Name="MaterialExpressionConstant_52"
      R=0.125000
      MaterialExpressionEditorX=-608
      MaterialExpressionEditorY=-4304
      MaterialExpressionGuid=E0E9BF98457816483CE3BF9C063CBD57
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_52"'
   NodePosX=-608
   NodePosY=-4304
   NodeGuid=B7906A414E6B54934D5F399253AED4A6
   CustomProperties Pin (PinId=1FB5F1A7488C89477D064E9911664174,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_374 68CE28A248AFAE799ED13FA46CD51B95,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_374"
   Begin Object Class=/Script/Engine.MaterialExpressionAppendVector Name="MaterialExpressionAppendVector_2"
   End Object
   Begin Object Name="MaterialExpressionAppendVector_2"
      A=(Expression=MaterialExpressionConstant'"MaterialGraphNode_372.MaterialExpressionConstant_43"')
      B=(Expression=MaterialExpressionConstant'"MaterialGraphNode_373.MaterialExpressionConstant_52"')
      MaterialExpressionEditorX=-480
      MaterialExpressionEditorY=-4352
      MaterialExpressionGuid=5835E3AE4536F907EDFA419640EB7A76
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionAppendVector'"MaterialExpressionAppendVector_2"'
   NodePosX=-480
   NodePosY=-4352
   NodeGuid=E686966A43776AE486C8D0845E6155A6
   CustomProperties Pin (PinId=969804D745FCA440C471AC93C978DAE4,PinName="A",PinType.PinCategory="required",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_372 6048ABE0455072A016E46FA38BC4E06D,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=68CE28A248AFAE799ED13FA46CD51B95,PinName="B",PinType.PinCategory="required",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_373 1FB5F1A7488C89477D064E9911664174,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=3E240F794AA1EAE9BBA29C9861D10427,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_Knot_4 7C42596541CD982A72377BBD08CBC5F2,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_375"
   Begin Object Class=/Script/Engine.MaterialExpressionAdd Name="MaterialExpressionAdd_27"
   End Object
   Begin Object Name="MaterialExpressionAdd_27"
      A=(Expression=MaterialExpressionMaterialFunctionCall'"MaterialGraphNode_385.MaterialExpressionMaterialFunctionCall_60"')
      B=(Expression=MaterialExpressionDivide'"MaterialGraphNode_369.MaterialExpressionDivide_17"')
      MaterialExpressionEditorX=-272
      MaterialExpressionEditorY=-4224
      MaterialExpressionGuid=FB4B36BF47EB92DF9840A78CF7F28154
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionAdd'"MaterialExpressionAdd_27"'
   NodePosX=-272
   NodePosY=-4224
   NodeGuid=6F42CCA747DAB2CF40A12A84CD6B52FE
   CustomProperties Pin (PinId=1391F01B4C5689C0AD5FA7AAB88710B2,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_385 381441FB4E90F7653BDBC4A7D1533E9B,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=C58E1FE546366BC751A183BB535C08AF,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_369 967FC29D40E4DCE936A32BB02512E6C4,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=C36126454DAC8DA6185179841D6C4549,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_376 FCC2D09D4D477D13D393488466B4892B,MaterialGraphNode_386 AF3F28994E8DEF13AAD4D4A77166E03F,MaterialGraphNode_387 7C7A019A4BE0B6C7AE9E45A062A26642,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_376"
   Begin Object Class=/Script/Engine.MaterialExpressionTextureSample Name="MaterialExpressionTextureSample_16"
   End Object
   Begin Object Name="MaterialExpressionTextureSample_16"
      Coordinates=(Expression=MaterialExpressionAdd'"MaterialGraphNode_375.MaterialExpressionAdd_27"')
      Texture=Texture2D'"/Engine/EditorMeshes/ColorCalibrator/Color_checker.Color_checker"'
      MaterialExpressionEditorX=-144
      MaterialExpressionEditorY=-4240
      MaterialExpressionGuid=70001C7C4304B9EF231F30960F59F155
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionTextureSample'"MaterialExpressionTextureSample_16"'
   NodePosX=-144
   NodePosY=-4240
   NodeGuid=80BCBC8641A830B4FA4F7EA46FEB3054
   CustomProperties Pin (PinId=FCC2D09D4D477D13D393488466B4892B,PinName="UVs",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_375 C36126454DAC8DA6185179841D6C4549,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=551C52E546600F46F7D8C2BF2DA9F89E,PinName="Tex",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=0CCD1D9D4AD4613632A9C78540BC30E5,PinName="Apply View MipBias",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=31F99C38456A76FD1F35EB8F0E2862EC,PinName="RGB",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_377 95B952E54A0A19AABD8390A8B4BD74BC,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=53EBC8D44C6C6800BC8B4481B917DA00,PinName="R",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="red",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=213791EC47BAABC9F8F463A68007679B,PinName="G",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="green",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=C6CBBACD4D6EE15EA7ADB2B8EDBCC601,PinName="B",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="blue",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=0B733D4049985A1B806E7CB06C6373F0,PinName="A",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="alpha",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=3FB6189E42A6DD1F43829086E3E57BE1,PinName="RGBA",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="rgba",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_377"
   Begin Object Class=/Script/Engine.MaterialExpressionMultiply Name="MaterialExpressionMultiply_59"
   End Object
   Begin Object Name="MaterialExpressionMultiply_59"
      A=(Expression=MaterialExpressionTextureSample'"MaterialGraphNode_376.MaterialExpressionTextureSample_16"',Mask=1,MaskR=1,MaskG=1,MaskB=1)
      MaterialExpressionEditorX=96
      MaterialExpressionEditorY=-4240
      MaterialExpressionGuid=BDB07BD9441506C66FCDC992E56D65EC
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionMultiply'"MaterialExpressionMultiply_59"'
   NodePosX=96
   NodePosY=-4240
   NodeGuid=06D7220E42A98E3E9891A09FC12B236D
   CustomProperties Pin (PinId=95B952E54A0A19AABD8390A8B4BD74BC,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_376 31F99C38456A76FD1F35EB8F0E2862EC,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=7C6A202B464A4BB8F27D308A520FC285,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=61058FE2431965E23E92C0BA5D8F3470,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_378"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_81"
   End Object
   Begin Object Name="MaterialExpressionConstant_81"
      R=8.300000
      MaterialExpressionEditorX=-528
      MaterialExpressionEditorY=-3840
      MaterialExpressionGuid=D1280B214187A9A2C65F7FBC6DE7A775
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_81"'
   NodePosX=-528
   NodePosY=-3840
   NodeGuid=59BAF37641F7FFDC7B6D4FA156B59E70
   CustomProperties Pin (PinId=73EF6064471AC545D0150C98CF5886A9,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_379"
   Begin Object Class=/Script/Engine.MaterialExpressionDivide Name="MaterialExpressionDivide_23"
   End Object
   Begin Object Name="MaterialExpressionDivide_23"
      A=(Expression=MaterialExpressionConstant'"MaterialGraphNode_380.MaterialExpressionConstant_82"')
      B=(Expression=MaterialExpressionMaterialFunctionCall'"MaterialGraphNode_381.MaterialExpressionMaterialFunctionCall_15"')
      MaterialExpressionEditorX=-640
      MaterialExpressionEditorY=-4896
      MaterialExpressionGuid=AE4C6E5249239945751A858C410B418F
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionDivide'"MaterialExpressionDivide_23"'
   NodePosX=-640
   NodePosY=-4896
   NodeGuid=838BD39D4872855F2CCA6AA71A6ACF7B
   CustomProperties Pin (PinId=4E079D7D4BF9F1F8AB7D228F899E3C96,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_380 17A0FE8A40727DF62F0509A48B76E368,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=EF63E6554ACB07C6D8BB0986DCDD40FD,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_381 E5AF417841C439715F7E5BBF5A236746,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=D48CE1CB4F2F6F8435A272BC4E255FF1,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_382 F453073A498689C909D289B5E18CE96D,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_382"
   Begin Object Class=/Script/Engine.MaterialExpressionMaterialFunctionCall Name="MaterialExpressionMaterialFunctionCall_46"
   End Object
   Begin Object Name="MaterialExpressionMaterialFunctionCall_46"
      MaterialFunction=MaterialFunction'"/Engine/Functions/Engine_MaterialFunctions02/Utility/BreakOutFloat2Components.BreakOutFloat2Components"'
      FunctionInputs(0)=(ExpressionInputId=0FC5C56B4335798F20CB928CF1C87421,Input=(Expression=MaterialExpressionDivide'"MaterialGraphNode_379.MaterialExpressionDivide_23"',InputName="Float2"))
      FunctionOutputs(0)=(ExpressionOutputId=6BC893C247FCFC567178CE944E213385,Output=(OutputName="R"))
      FunctionOutputs(1)=(ExpressionOutputId=9720C81E449DF8E5514FCB8A80FD5FA3,Output=(OutputName="G"))
      MaterialExpressionEditorX=-480
      MaterialExpressionEditorY=-4560
      MaterialExpressionGuid=0C47305D48F01E34D46A2E8BB2B10C2C
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
      Outputs(0)=(OutputName="R")
      Outputs(1)=(OutputName="G")
   End Object
   MaterialExpression=MaterialExpressionMaterialFunctionCall'"MaterialExpressionMaterialFunctionCall_46"'
   NodePosX=-480
   NodePosY=-4560
   NodeGuid=7F8B939845386B123760AF8476FB843F
   CustomProperties Pin (PinId=F453073A498689C909D289B5E18CE96D,PinName="Float2 (V2)",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_379 D48CE1CB4F2F6F8435A272BC4E255FF1,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=F92DBC284C6765B46A40E39F387084A7,PinName="R",Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_383 66A1D743422470B96FEFB79F39C00D0C,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=64DFFC0F4F69468AE5CE688B5CB29478,PinName="G",Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_384 B4C3A69944DD2310EE62CE890675E79C,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_383"
   Begin Object Class=/Script/Engine.MaterialExpressionMultiply Name="MaterialExpressionMultiply_60"
   End Object
   Begin Object Name="MaterialExpressionMultiply_60"
      A=(Expression=MaterialExpressionMaterialFunctionCall'"MaterialGraphNode_382.MaterialExpressionMaterialFunctionCall_46"')
      B=(Expression=MaterialExpressionScalarParameter'"MaterialGraphNode_431.MaterialExpressionScalarParameter_9"')
      ConstB=41.000000
      MaterialExpressionEditorX=-240
      MaterialExpressionEditorY=-4608
      MaterialExpressionGuid=DB1D1A304F4D35F20540249D46B71435
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionMultiply'"MaterialExpressionMultiply_60"'
   NodePosX=-240
   NodePosY=-4608
   NodeGuid=7A3FB26A44BEDE26917ADCB207DD32B1
   CustomProperties Pin (PinId=66A1D743422470B96FEFB79F39C00D0C,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_382 F92DBC284C6765B46A40E39F387084A7,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=8CB21EA7446DD755E40C59AEBD273CE1,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_431 2F1EEA554A7102D0EBC08984DA6DC65F,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=8C4E39F24E75202390019196340AF43A,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_385 2A08C5B34A5F8B0BEE362BAFB7029212,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_384"
   Begin Object Class=/Script/Engine.MaterialExpressionMultiply Name="MaterialExpressionMultiply_61"
   End Object
   Begin Object Name="MaterialExpressionMultiply_61"
      A=(Expression=MaterialExpressionMaterialFunctionCall'"MaterialGraphNode_382.MaterialExpressionMaterialFunctionCall_46"',OutputIndex=1)
      B=(Expression=MaterialExpressionScalarParameter'"MaterialGraphNode_432.MaterialExpressionScalarParameter_10"')
      ConstB=393.000000
      MaterialExpressionEditorX=-240
      MaterialExpressionEditorY=-4512
      MaterialExpressionGuid=DB1D1A304F4D35F20540249D46B71435
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionMultiply'"MaterialExpressionMultiply_61"'
   NodePosX=-240
   NodePosY=-4512
   NodeGuid=A81D2130433321006F90B38749994E3C
   CustomProperties Pin (PinId=B4C3A69944DD2310EE62CE890675E79C,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_382 64DFFC0F4F69468AE5CE688B5CB29478,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=8495A87648ED827A95C051B6FDCDFCEE,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_432 BDAFF5504CBEF8D4DB8045B840A836A6,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=1727D4BA489029150AB322905F8ABF63,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_385 457516F04123591D518C8D9D83CEDEFE,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_385"
   Begin Object Class=/Script/Engine.MaterialExpressionMaterialFunctionCall Name="MaterialExpressionMaterialFunctionCall_60"
   End Object
   Begin Object Name="MaterialExpressionMaterialFunctionCall_60"
      MaterialFunction=MaterialFunction'"/Engine/Functions/Engine_MaterialFunctions02/Utility/MakeFloat2.MakeFloat2"'
      FunctionInputs(0)=(ExpressionInputId=529C1D96441E07EB03A9E59B8A7F67B6,Input=(Expression=MaterialExpressionMultiply'"MaterialGraphNode_383.MaterialExpressionMultiply_60"',InputName="X"))
      FunctionInputs(1)=(ExpressionInputId=B5BD7D1B494F6928732CCDA1C63D8E15,Input=(Expression=MaterialExpressionMultiply'"MaterialGraphNode_384.MaterialExpressionMultiply_61"',InputName="Y"))
      FunctionOutputs(0)=(ExpressionOutputId=0DD6F9954C067C3E5DDBBBA0D6910DD2,Output=(OutputName="Result"))
      MaterialExpressionEditorY=-4544
      MaterialExpressionGuid=82CA792744DFB12D4A2B30B1C73DCA55
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
      Outputs(0)=(OutputName="Result")
   End Object
   MaterialExpression=MaterialExpressionMaterialFunctionCall'"MaterialExpressionMaterialFunctionCall_60"'
   NodePosY=-4544
   NodeGuid=ED0FBE4D44B8272EFC8829AD79CC3CA0
   CustomProperties Pin (PinId=2A08C5B34A5F8B0BEE362BAFB7029212,PinName="X (S)",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_383 8C4E39F24E75202390019196340AF43A,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=457516F04123591D518C8D9D83CEDEFE,PinName="Y (S)",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_384 1727D4BA489029150AB322905F8ABF63,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=381441FB4E90F7653BDBC4A7D1533E9B,PinName="Result",Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_375 1391F01B4C5689C0AD5FA7AAB88710B2,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode_Knot Name="MaterialGraphNode_Knot_4"
   Begin Object Class=/Script/Engine.MaterialExpressionReroute Name="MaterialExpressionReroute_3"
   End Object
   Begin Object Name="MaterialExpressionReroute_3"
      Input=(Expression=MaterialExpressionAppendVector'"MaterialGraphNode_374.MaterialExpressionAppendVector_2"')
      MaterialExpressionEditorX=-336
      MaterialExpressionEditorY=-4224
      MaterialExpressionGuid=337810C84B2D1B91BADEC390E93BC38A
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionReroute'"MaterialExpressionReroute_3"'
   NodePosX=-336
   NodePosY=-4224
   bCanRenameNode=False
   NodeGuid=79ECE190497C39FCF782C983950E52DD
   CustomProperties Pin (PinId=7C42596541CD982A72377BBD08CBC5F2,PinName="InputPin",PinType.PinCategory="wildcard",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_374 3E240F794AA1EAE9BBA29C9861D10427,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=True,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=ABCF98334589E7C03A8559ACD60E1BF7,PinName="OutputPin",Direction="EGPD_Output",PinType.PinCategory="wildcard",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_386"
   Begin Object Class=/Script/Engine.MaterialExpressionMultiply Name="MaterialExpressionMultiply_62"
   End Object
   Begin Object Name="MaterialExpressionMultiply_62"
      A=(Expression=MaterialExpressionAdd'"MaterialGraphNode_375.MaterialExpressionAdd_27"')
      ConstB=1.100000
      MaterialExpressionEditorX=-288
      MaterialExpressionEditorY=-3904
      MaterialExpressionGuid=E473D8F04638641DA9E0D895EE64A81F
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionMultiply'"MaterialExpressionMultiply_62"'
   NodePosX=-288
   NodePosY=-3904
   NodeGuid=E32E1D7C4C972A22071A65B7EC3E85E4
   CustomProperties Pin (PinId=AF3F28994E8DEF13AAD4D4A77166E03F,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_375 C36126454DAC8DA6185179841D6C4549,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=87FB078C4ED8DD571C0FC6A9435B1DE2,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=820737D8469329624D6DD186C2553D6B,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_387"
   Begin Object Class=/Script/Engine.MaterialExpressionTextureSample Name="MaterialExpressionTextureSample_18"
   End Object
   Begin Object Name="MaterialExpressionTextureSample_18"
      Coordinates=(Expression=MaterialExpressionAdd'"MaterialGraphNode_375.MaterialExpressionAdd_27"')
      Texture=Texture2D'"/Game/mcsdf/msdftestatlas.msdftestatlas"'
      MaterialExpressionEditorX=240
      MaterialExpressionEditorY=-4752
      MaterialExpressionGuid=19C1CC1243241CE2ED7116A174DF9B65
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionTextureSample'"MaterialExpressionTextureSample_18"'
   NodePosX=240
   NodePosY=-4752
   NodeGuid=DE9A799E4AE59966BB30A4A4D2869694
   CustomProperties Pin (PinId=7C7A019A4BE0B6C7AE9E45A062A26642,PinName="UVs",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_375 C36126454DAC8DA6185179841D6C4549,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=DDDCEFF94F09E096B6B566874DBC3B02,PinName="Tex",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=999E8AA54A66EA54D3B7D1B47B2E7612,PinName="Apply View MipBias",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=0D3BCA29410F37C99B909A8BBE49CF81,PinName="RGB",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_Knot_0 247C5F4E44FFE9946CB8E2928174D3E8,MaterialGraphNode_388 523454C74E04F0F153AE85BA71534DE1,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=89A3E3BD4DF645F802197BB738A911E1,PinName="R",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="red",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=6FD1EE7A43E7839E9C899DA3421EFCD7,PinName="G",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="green",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=4F86EE1C412697DB1646DB96C1EAA3E4,PinName="B",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="blue",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=DB2446E14FF583B970233FAE15092718,PinName="A",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="alpha",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=DE84EDE440FA4E53EE37E2B5F778718E,PinName="RGBA",Direction="EGPD_Output",PinType.PinCategory="mask",PinType.PinSubCategory="rgba",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_388"
   Begin Object Class=/Script/Engine.MaterialExpressionMultiply Name="MaterialExpressionMultiply_63"
   End Object
   Begin Object Name="MaterialExpressionMultiply_63"
      A=(Expression=MaterialExpressionTextureSample'"MaterialGraphNode_387.MaterialExpressionTextureSample_18"',Mask=1,MaskR=1,MaskG=1,MaskB=1)
      MaterialExpressionEditorX=448
      MaterialExpressionEditorY=-4688
      MaterialExpressionGuid=481CB1B8464623FE9ED6249AA8F122CA
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionMultiply'"MaterialExpressionMultiply_63"'
   NodePosX=448
   NodePosY=-4688
   NodeGuid=29D5833645518CD4F14D9D9BE3D51A8B
   CustomProperties Pin (PinId=523454C74E04F0F153AE85BA71534DE1,PinName="A",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,LinkedTo=(MaterialGraphNode_387 0D3BCA29410F37C99B909A8BBE49CF81,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=362565F246F0067B663FD89DC5337065,PinName="B",PinType.PinCategory="optional",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=False,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
   CustomProperties Pin (PinId=5B5D1C5D4ED90407E63ABAA9340B9B7B,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_431"
   Begin Object Class=/Script/Engine.MaterialExpressionScalarParameter Name="MaterialExpressionScalarParameter_9"
   End Object
   Begin Object Name="MaterialExpressionScalarParameter_9"
      DefaultValue=41.000000
      ParameterName="x"
      ExpressionGUID=2C9A11BC4C9A20048550EAB3B85EB9DC
      MaterialExpressionEditorX=-288
      MaterialExpressionEditorY=-4848
      MaterialExpressionGuid=E658DADB4631E8495B5D21A0AF226387
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionScalarParameter'"MaterialExpressionScalarParameter_9"'
   NodePosX=-288
   NodePosY=-4848
   bCanRenameNode=True
   NodeGuid=BE80C49F4FEAF1EF33EE67B8F9EADF7F
   CustomProperties Pin (PinId=2F1EEA554A7102D0EBC08984DA6DC65F,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_383 8CB21EA7446DD755E40C59AEBD273CE1,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_432"
   Begin Object Class=/Script/Engine.MaterialExpressionScalarParameter Name="MaterialExpressionScalarParameter_10"
   End Object
   Begin Object Name="MaterialExpressionScalarParameter_10"
      DefaultValue=393.000000
      ParameterName="y"
      ExpressionGUID=561CB96747F0042B07A95D85C16C8F55
      MaterialExpressionEditorX=-288
      MaterialExpressionEditorY=-4768
      MaterialExpressionGuid=8923AD9841C67E7AF308459D547D0901
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionScalarParameter'"MaterialExpressionScalarParameter_10"'
   NodePosX=-288
   NodePosY=-4768
   bCanRenameNode=True
   NodeGuid=7AEC2B364FD3560A8A917C9A57063E2F
   CustomProperties Pin (PinId=BDAFF5504CBEF8D4DB8045B840A836A6,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,LinkedTo=(MaterialGraphNode_384 8495A87648ED827A95C051B6FDCDFCEE,),PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_433"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_83"
   End Object
   Begin Object Name="MaterialExpressionConstant_83"
      MaterialExpressionEditorX=-288
      MaterialExpressionEditorY=-4976
      MaterialExpressionGuid=D52EFD1D4ED84B0FAE7CDC95BCFAF35C
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_83"'
   NodePosX=-288
   NodePosY=-4976
   NodeGuid=6F4FF00447F1915AF56DFF94D714C7FE
   CustomProperties Pin (PinId=29AF757C4E9E14E8983E1B8FC73EF0C9,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode Name="MaterialGraphNode_434"
   Begin Object Class=/Script/Engine.MaterialExpressionConstant Name="MaterialExpressionConstant_84"
   End Object
   Begin Object Name="MaterialExpressionConstant_84"
      MaterialExpressionEditorX=-288
      MaterialExpressionEditorY=-4912
      MaterialExpressionGuid=D52EFD1D4ED84B0FAE7CDC95BCFAF35C
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpression=MaterialExpressionConstant'"MaterialExpressionConstant_84"'
   NodePosX=-288
   NodePosY=-4912
   NodeGuid=F71151EC40AEDCBF22D703AD37BE9291
   CustomProperties Pin (PinId=4AEC822040A4324C546308A40F3D679F,PinName="Output",PinFriendlyName=NSLOCTEXT("MaterialGraphNode", "Space", " "),Direction="EGPD_Output",PinType.PinCategory="",PinType.PinSubCategory="",PinType.PinSubCategoryObject=None,PinType.PinSubCategoryMemberReference=(),PinType.PinValueType=(),PinType.ContainerType=None,PinType.bIsReference=False,PinType.bIsConst=False,PinType.bIsWeakPointer=False,PinType.bIsUObjectWrapper=True,PersistentGuid=00000000000000000000000000000000,bHidden=False,bNotConnectable=False,bDefaultValueIsReadOnly=False,bDefaultValueIsIgnored=False,bAdvancedView=False,bOrphanedPin=False,)
End Object
Begin Object Class=/Script/UnrealEd.MaterialGraphNode_Comment Name="MaterialGraphNode_Comment_8"
   Begin Object Class=/Script/Engine.MaterialExpressionComment Name="MaterialExpressionComment_8"
   End Object
   Begin Object Name="MaterialExpressionComment_8"
      SizeX=227
      SizeY=279
      Text="x, y"
      MaterialExpressionEditorX=-290
      MaterialExpressionEditorY=-4658
      MaterialExpressionGuid=7B0E196B41E205762B5B9CB18E5DD6E4
      Material=PreviewMaterial'"/Engine/Transient.SceneCaptureTestmsdfatlasMaterial2"'
   End Object
   MaterialExpressionComment=MaterialExpressionComment'"MaterialExpressionComment_8"'
   NodePosX=-290
   NodePosY=-4658
   NodeWidth=227
   NodeHeight=279
   NodeComment="x, y"
   NodeGuid=BBBE5AEB499F1C34CC53EE9DC81A9CA6
End Object

/////

*/