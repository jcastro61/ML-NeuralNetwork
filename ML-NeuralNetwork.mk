##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=ML-NeuralNetwork
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/jcastro/Projects/cpp/udemy_learning_cpp/FirstWorkSpace
ProjectPath            :=/home/jcastro/Projects/cpp/udemy_learning_cpp/FirstWorkSpace/ML-NeuralNetwork
IntermediateDirectory  :=../build-$(ConfigurationName)/ML-NeuralNetwork
OutDir                 :=../build-$(ConfigurationName)/ML-NeuralNetwork
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=James
Date                   :=16/01/21
CodeLitePath           :=/home/jcastro/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -std=c++17 -Wall  $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/ML-NeuralNetwork/NeuralNetwork.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/ML-NeuralNetwork/main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/ML-NeuralNetwork/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/ML-NeuralNetwork"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/ML-NeuralNetwork"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/ML-NeuralNetwork/.d:
	@mkdir -p "../build-$(ConfigurationName)/ML-NeuralNetwork"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/ML-NeuralNetwork/NeuralNetwork.cpp$(ObjectSuffix): NeuralNetwork.cpp ../build-$(ConfigurationName)/ML-NeuralNetwork/NeuralNetwork.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jcastro/Projects/cpp/udemy_learning_cpp/FirstWorkSpace/ML-NeuralNetwork/NeuralNetwork.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/NeuralNetwork.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ML-NeuralNetwork/NeuralNetwork.cpp$(DependSuffix): NeuralNetwork.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ML-NeuralNetwork/NeuralNetwork.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ML-NeuralNetwork/NeuralNetwork.cpp$(DependSuffix) -MM NeuralNetwork.cpp

../build-$(ConfigurationName)/ML-NeuralNetwork/NeuralNetwork.cpp$(PreprocessSuffix): NeuralNetwork.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ML-NeuralNetwork/NeuralNetwork.cpp$(PreprocessSuffix) NeuralNetwork.cpp

../build-$(ConfigurationName)/ML-NeuralNetwork/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/ML-NeuralNetwork/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jcastro/Projects/cpp/udemy_learning_cpp/FirstWorkSpace/ML-NeuralNetwork/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ML-NeuralNetwork/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ML-NeuralNetwork/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ML-NeuralNetwork/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/ML-NeuralNetwork/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ML-NeuralNetwork/main.cpp$(PreprocessSuffix) main.cpp


-include ../build-$(ConfigurationName)/ML-NeuralNetwork//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


