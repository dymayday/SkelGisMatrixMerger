#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <unistd.h>
#include <string>
using namespace std;

bool nodata(false); //noData flag presence
bool opt_arg_autoDetect(false); //auto detect the nodata values
bool sinksFilled(false); //merge files after a sink fill process by SkelGIS

struct HEADER{
  unsigned int width;
  unsigned int height;
  float x;
  float y;
  float spacing;
  float nodata;
};


void readDEM(HEADER &head, char * matrixInit){

  ifstream fmatInit(matrixInit, ios::binary | ios::in);

  fmatInit.read((char*)(&head),sizeof(HEADER));

  cout<<endl;
  cout<<"Width : "<<head.width<<endl;
  cout<<"Height : "<<head.height<<endl;
  cout<<"x position : "<<head.x<<endl;
  cout<<"y position : "<<head.y<<endl;
  cout<<"spacing : "<<head.spacing<<endl;
  cout<<"nodata : "<<head.nodata<<endl;

  if(opt_arg_autoDetect)
      if(head.width % 2)
          nodata = true;

  fmatInit.close();
}

void merge_2p(HEADER head, char * matrix0, char * matrix1, char * fileOut){
  cout<<endl<<"Merging 2 matrix..."<<endl;

  ifstream imat0(matrix0);
  ifstream imat1(matrix1);

  string buffer;

  ofstream fout(fileOut);
  fout<<"ncols "<<head.width<<endl;
  fout<<"nrows "<<head.height<<endl;
  fout<<"xllcorner "<<head.x<<endl;
  fout<<"yllcorner "<<head.y<<endl;
  fout<<"cellsize "<<head.spacing<<endl;
  fout<<"NODATA_value "<<head.nodata<<endl;

  getline(imat0, buffer);
  while (getline(imat0, buffer)) {
//      if(nodata)
//          buffer.resize(buffer.length()-6);
    fout<<buffer<<endl;
  }
  getline(imat1, buffer);
  while (getline(imat1, buffer)) {
//      if(nodata)
//          buffer.resize(buffer.length()-6);
    fout<<buffer<<endl;
  }



  imat0.close();
  imat1.close();

  fout.close();
}

void merge_4p(HEADER head, char * matrix0, char * matrix1, char * matrix2, char * matrix3, char * fileOut){
  cout<<endl<<"Merging 4 matrix..."<<endl;

  ifstream imat0(matrix0);
  ifstream imat1(matrix1);
  ifstream imat2(matrix2);
  ifstream imat3(matrix3);

  string buffer;

  ofstream fout(fileOut);
  fout<<"ncols "<<head.width<<endl;
  fout<<"nrows "<<head.height<<endl;
  fout<<"xllcorner "<<head.x<<endl;
  fout<<"yllcorner "<<head.y<<endl;
  fout<<"cellsize "<<head.spacing<<endl;
  fout<<"NODATA_value "<<head.nodata<<endl;

  getline(imat0, buffer);
  getline(imat1, buffer);
  getline(imat2, buffer);
  getline(imat3, buffer);


  while (getline(imat0, buffer)) {
    fout<<buffer;
    getline(imat1, buffer);
    if(nodata)
      buffer.resize(buffer.length()-6);
    fout<<buffer<<endl;
  }
  while (getline(imat2, buffer)) {
    fout<<buffer;
    getline(imat3, buffer);
    if(nodata)
      buffer.resize(buffer.length()-6);
    fout<<buffer<<endl;
  }



  imat0.close();
  imat1.close();
  imat2.close();
  imat3.close();
  fout.close();

  //    ifstream fclean("./tmp.asc");
  //    fout.open(fileOut);


  //    while (getline(fclean, buffer)) {
  //        fout.
  //        fout<<buffer<<endl;
  //    }

  //    fclean.close();
  //    fout.close();
}

void abort(char* prog_name, string error){
  cout<<endl<<endl;
  cout<<"ERROR : "<<prog_name<<" has exit unexpectedly !"<<endl<<error<<endl;
  exit(1);
}

int main(int argc, char** argv){
  char * fileIn = NULL;
  char * fileOut = NULL;
  char * fileMatrix0 = NULL;
  char * fileMatrix1 = NULL;
  char * fileMatrix2 = NULL;
  char * fileMatrix3 = NULL;

  HEADER head;


  int options;
  bool opt_arg_input(false); //input origin file (bin format) flag
  bool opt_arg_output(false); //output merged file flag
  bool opt_arg_0(false); //input files from SkelGIS print
  bool opt_arg_1(false);
  bool opt_arg_2(false);
  bool opt_arg_3(false);


  while((options=getopt(argc,argv,"i:o:n::0:1:2:3:"))!=-1){
    switch(options){
    case 'a':
      opt_arg_autoDetect = true;
      break;
    case 'i':
      opt_arg_input = true;
      fileIn = optarg;
      break;
    case 'o':
      opt_arg_output = true;
      fileOut = optarg;
      break;
    case '0':
      opt_arg_0 = true;
      fileMatrix0 = optarg;
      break;
    case '1':
      opt_arg_1 = true;
      fileMatrix1 = optarg;
      break;
    case '2':
      opt_arg_2 = true;
      fileMatrix2 = optarg;
      break;
    case '3':
      opt_arg_3 = true;
      fileMatrix3 = optarg;
      break;
    default:
      abort(argv[0], "Invalide arguments.");
    }
  }

  if(opt_arg_input && opt_arg_output){
    readDEM(head, fileIn);
    if(opt_arg_0 && opt_arg_1){
      if(opt_arg_2 && opt_arg_3)
	merge_4p(head, fileMatrix0, fileMatrix1, fileMatrix2, fileMatrix3, fileOut);
      else
	merge_2p(head, fileMatrix0, fileMatrix1, fileOut);
    }else
      abort(argv[0], "Missing matrix arguments.");
  }else
    abort(argv[0], "Missing Input/Output matrix arguments.");

  cout<<endl<<"Matrix succesfully merged."<<endl<<endl;

  return 0;
}

