// main.cpp 
#include <iostream>
#include <fstream>
#include <filesystem>
#include <unistd.h>
// don't forget to include out neural network 
#include "NeuralNetwork.h" 
using namespace std;

//... data generator code here 
void genData(std::string filename) 
{ 
    std::ofstream file1(filename + "-in.csv", ios::out ); 
    std::ofstream file2(filename + "-out.csv", ios::out ); 
    
    for (uint r = 0; r < 1000; r++) { 
        Scalar x = rand() / Scalar(RAND_MAX); 
        Scalar y = rand() / Scalar(RAND_MAX); 
        file1 << x << ", " << y << std::endl; 
        file2 << 2 * x + 10 + y << std::endl; 
    } 
    file1.close(); 
    file2.close(); 
} 

void ReadCSV(std::string filename, std::vector<RowVector*>& data) 
{ 
    data.clear(); 
    std::ifstream file(filename); 
    std::string line, word; 
    // determine number of columns in file 
    getline(file, line, '\n'); 
    std::stringstream ss(line); 
    std::vector<Scalar> parsed_vec; 
    while (getline(ss, word, ',')) { 
        parsed_vec.push_back(Scalar(std::stof(&word[0]))); 
    } 
    uint cols = parsed_vec.size(); 
    data.push_back(new RowVector(cols)); 
    for (uint i = 0; i < cols; i++) { 
        data.back()->coeffRef(1, i) = parsed_vec[i]; 
    } 

    // read the file 
    if (file.is_open()) { 
        while (getline(file, line, '\n')) { 
            std::stringstream ss(line); 
            data.push_back(new RowVector(1, cols)); 
            uint i = 0; 
            while (getline(ss, word, ',')) { 
                data.back()->coeffRef(i) = Scalar(std::stof(&word[0])); 
                i++; 
            } 
        } 
    } 
} 


int main() 
{ 
    
    NeuralNetwork n({ 2, 3, 1 }); 
    Data in_dat, out_dat; 
    string filename1 = "/home/jcastro/Projects/cpp/udemy_learning_cpp/FirstWorkSpace/ML-NeuralNetwork/test-in.csv";
    string filename2 = "/home/jcastro/Projects/cpp/udemy_learning_cpp/FirstWorkSpace/ML-NeuralNetwork/test-out.csv";
    
    genData("test"); 
    ReadCSV(filename1, in_dat); 
    ReadCSV(filename2, out_dat); 
    
    n.train(in_dat, out_dat); 
    
    cout << "\n" << n << endl;
    
    return 0; 
} 



