/******************************************************************************************
* $Id: queryTester.cpp 64 2006-10-12 22:21:51Z dhill $
*
*
*		
******************************************************************************************/
/**
 * @file
 */

#include <iterator>
#include <numeric>
#include <deque>
#include <iostream>
#include <ostream>
#include <fstream>
#include <cstdlib>
#include <string>
#include <limits.h>
#include <sstream>
#include <exception>
#include <stdexcept>
#include <vector>
#include <time.h>
#include "stdio.h"
#include "ctype.h"
#include "string.h"

using namespace std;

#ifdef _MSC_VER
#define CONF_FILE_NAME "/my.ini"
#else
#define CONF_FILE_NAME "/my.cnf"
#endif

int main(int argc, char *argv[])
{
	string directories = "ALL";
	string type = "ALL";
	string user = "tpch1";
	vector <string> queryDirectory;
	vector <string> queryType;
	string referenceSystem = "srvhill01";
	string referenceDatabase = "idbref";
	string mysqldPort = "3306";
	string runType = "B";
	string cmd = "";
	bool output = false;
	bool clear = false;
	bool outputGrandTotals = false;
#ifdef _MSC_VER
	string path = "c:/Calpont";
#else
	string path = "/usr/local/Calpont/mysql";
#endif
	string tablemode = "tablemode";
	int totalTestPass = 0;
	int totalTestFail = 0;
	int totalRefPass = 0;
	int totalRefFail = 0;
	int totalComparePass = 0;
	int totalCompareFail = 0;
	int ret = 0;
	string verbose = " ";

	for( int i = 1; i < argc; i++ )
	{
		if( string("-h") == argv[i] ) 
		{
			cout << endl;
			cout << "Calpont MySql Query Test tool." << endl;
			cout << "It will run queries that are in sub directories where this tool runs." << endl;
			cout << "It can run them against the local and references databases." << endl;
			cout << "If a log file for the reference run already exist in the query folder," << endl;
			cout << "the run against the reference database will be skipped. Use the -c option" << endl;
			cout << "to clear all logs out and this will force a run against both local and reference." << endl;
			cout << endl;
			cout << "Usage: queryTester [-h][-q query-directories][-t query-Type][-u user][-r TRB'Tr'][-s reference-System][-d reference-database][-o][-c][-p run path][-m mysqld port][-g][-v]" << endl;
			cout << "			-q query-directories, default to ALL" << endl;
			cout << "			-t query-type, default to ALL" << endl;
			cout << "			-u database user, default to 'tpch1'" << endl;
			cout << "			-r what to run (T for Test, R for Reference, B for Both, Tr for Test with Reference log compare), default to Both" << endl;
			cout << "			-s reference System, default to '10.100.4.67' (srvswdev1)" << endl;
			cout << "			-d reference Database, default to 'qrefd01m'" << endl;
			cout << "			-o for output detailed test results, default to summary report" << endl;
			cout << "			-c clear logs from query-directories, default to leave logs" << endl;
			cout << "			-p mysql directory run path, default to '/usr/local/Calpont/mysql'" << endl;
			cout << "			-m reference mysqld port, default to '3306'" << endl;
            cout << "			-g output totals at end of the report" << endl;
            cout << "			-v verbose output for local Test run" << endl;
			exit ( 0 );
		}
		else if ( string ( "-q" ) == argv[i] )
		{
			i++;
			if ( argc == i )
			{
				cout << "ERROR: missing query directory argument" << endl;
				exit ( -1 );
			}
			directories = argv[i];
		}
		else if ( string ( "-t" ) == argv[i] )
		{
			i++;
			if ( argc == i )
			{
				cout << "ERROR: missing query type argument" << endl;
				exit ( -1 );
			}
			type = argv[i];
		}
		else if ( string ( "-u" ) == argv[i] )
		{
			i++;
			if ( argc == i )
			{
				cout << "ERROR: missing user argument" << endl;
				exit ( -1 );
			}
			user = argv[i];
		}
		else if ( string ( "-s" ) == argv[i] )
		{
			i++;
			if ( argc == i )
			{
				cout << "ERROR: missing reference system argument" << endl;
				exit ( -1 );
			}
			referenceSystem = argv[i];
		}
		else if ( string ( "-d" ) == argv[i] )
		{
			i++;
			if ( argc == i )
			{
				cout << "ERROR: missing reference database argument" << endl;
				exit ( -1 );
			}
			referenceDatabase = argv[i];
		}
		else if ( string ( "-r" ) == argv[i] )
		{
			i++;
			if ( argc == i )
			{
				cout << "ERROR: missing reference database argument" << endl;
				exit ( -1 );
			}
			runType = argv[i];
			if ( runType != "T" && runType != "R" && runType != "B" && runType != "Tr" )
			{
				cout << "ERROR: invalid run type entered" << endl;
				exit ( -1 );
			}
		}
		else if ( string ( "-o" ) == argv[i] )
		{
			output = true;
		}
		else if ( string ( "-c" ) == argv[i] )
		{
			clear = true;
		}
		else if ( string ( "-g" ) == argv[i] )
		{
			outputGrandTotals = true;
		}
		else if ( string ( "-v" ) == argv[i] )
		{
			verbose = "-vvv";
		}
		else if ( string ( "-p" ) == argv[i] )
		{
			i++;
			if ( argc == i )
			{
				cout << "ERROR: missing path argument" << endl;
				exit ( -1 );
			}
			path = argv[i];
		}
		else if ( string ( "-m" ) == argv[i] )
		{
			i++;
			if ( argc == i )
			{
				cout << "ERROR: missing port argument" << endl;
				exit ( -1 );
			}
			mysqldPort = argv[i];
		}
		else
		{
			cout << "ERROR: invalid option: " << argv[i] << endl;
			exit ( -1 );
		}
	}

	//valid path
#ifdef _MSC_VER
	string fileName = path + "/bin/mysql.exe";
#else
	string fileName = path + "/bin/mysql";
#endif
	ifstream file (fileName.c_str());
	if (!file) {
		cout << " Error: " + path + "/bin/mysql not found" << endl;
		exit (-1);
	}

	fileName = path + CONF_FILE_NAME;
	ifstream file1 (fileName.c_str());
	if (!file1) {
		cout << " Error: " + path + CONF_FILE_NAME + " not found" << endl;
		exit (-1);
	}
	if ( directories == "ALL" ) {
		system("ls . > /tmp/querydirs");
		string fileName = "/tmp/querydirs";

		ifstream file (fileName.c_str());
		if (!file) {
			cout << " Error: can't open /tmp/querydirs" << endl;
			exit (-1);
		}

		char line[200];
		string buf;
		while (file.getline(line, 200))
		{
			buf = line;
			if ( buf.find("queryTester",0) != string::npos 
				|| buf == "Makefile" )
				continue;

			queryDirectory.push_back(buf);
		}

		file.close();
		unlink (fileName.c_str());

		if ( queryDirectory.size() == 0 ) {
			cout << endl << "Error: no query sub-directories located in local directory" << endl;
			exit (-1);
		}
	}
	else
	{
		char* pdirectories = (char*) directories.c_str();
		char *p;
		p = strtok(pdirectories,",");

		while (p)
		{
			queryDirectory.push_back(p);
			p = strtok (NULL, ",");
		}

		if ( queryDirectory.size() == 0 ) {
			cout << endl << "Error: no query sub-directories entered" << endl;
			exit (-1);
		}
	}

	if ( type == "ALL" ) {
		std::vector<std::string>::iterator pt1 = queryDirectory.begin();
		for( ; pt1 != queryDirectory.end() ; pt1++)
		{
			string directory = *pt1;

			cmd = "ls " + directory +"/. > /tmp/querytypes";
			system(cmd.c_str());
			string fileName = "/tmp/querytypes";
	
			ifstream file (fileName.c_str());
			if (file) {
				char line[200];
				string buf;
				while (file.getline(line, 200))
				{
					buf = line;
					if ( buf.find(".",0) != string::npos )
						continue;
					queryType.push_back(buf);
				}
		
			}
	
			file.close();
			unlink (fileName.c_str());
		}
	}
	else
	{
		char* ptype = (char*) type.c_str();
		char *p;
		p = strtok(ptype,",");

		while (p)
		{
			queryType.push_back(p);
			p = strtok (NULL, ",");
		}

		if ( queryType.size() == 0 ) {
			cout << endl << "Error: no query Type sub-directories entered" << endl;
			exit (-1);
		}
	}

	cout << endl;
	cout << " ###################################################################" << endl;
	cout << "              Running query test on user '" + user + "'"<< endl;
	cout << "          Running against";
	if ( runType == "T" || runType == "B" || runType == "Tr" )
		cout << " Local";
	if ( runType == "B" )
		cout << " and"; 
	if ( runType == "R" || runType == "B" )
		cout << " Reference";
	cout << " Database(s)" << endl;
	cout << endl;
	cout << " ###################################################################" << endl << endl << endl;

	// run query tests
	std::vector<std::string>::iterator pt1 = queryDirectory.begin();
	for( ; pt1 != queryDirectory.end() ; pt1++)
	{
		string directory = *pt1;

		if ( directory.find("compareLogOnly",0) != string::npos 
			&&  runType != "Tr")
			continue;

		std::vector<std::string>::iterator pt2 = queryType.begin();
		for( ; pt2 != queryType.end() ; pt2++)
		{
			string qt = *pt2;

#ifdef _MSC_VER
			cmd = "ls " + directory + "/" + qt + "/*.sql > nul 2>&1";
#else
			cmd = "ls " + directory + "/" + qt + "/*.sql > /dev/null 2>&1";
#endif
			ret = system(cmd.c_str());
			if ( ret != 0 ) {
				cout << endl << "%%%%% No query files in '" << directory + "/" + qt << "' directory %%%%%" << endl << endl;
				continue;
			}
	
			vector <string> winqueries;
			vector <string> queries;
			char line[200];
			string buf;

#ifdef _MSC_VER
			// Build a list of Windows specific tests to take the place of the standard tests
			cmd = "ls " + directory + "/" + qt + "/*.sql.win > /tmp/winqueryList 2>nul";
			system(cmd.c_str());
			string winfileName = "/tmp/winqueryList";
			ifstream winfile (winfileName.c_str());
			if (winfile)
			{
				vector <string> queries;
				char line[200];
				string buf;
				while (winfile.getline(line, 200))
				{
					buf = line;
					winqueries.push_back(buf);
				}
		
				file.close();
				unlink (winfileName.c_str());
			}
#endif

			cmd = "ls " + directory + "/" + qt + "/*.sql > /tmp/queryList";
			system(cmd.c_str());
			string fileName = "/tmp/queryList";
	
			ifstream file (fileName.c_str());
			if (!file)
				continue;
	
			while (file.getline(line, 200))
			{
				buf = line;
				queries.push_back(buf);
			}
	
			file.close();
			unlink (fileName.c_str());
	
			if ( queries.size() > 0 ) {
				cout << "================================================================================" << endl;
				cout << "  RUNNING QUERIES OUT OF DIRECTORY '" << directory + "/" + qt << "'" << endl;	

				// get current time in seconds
				time_t startTimeSec;
				time (&startTimeSec);

				int testPass = 0;
				int testFail = 0;
				int refPass = 0;
				int refFail = 0;
				int comparePass = 0;
				int compareFail = 0;
				vector <string> testQueryFail;
				vector <string> refQueryFail;
				vector <string> compareQueryFail;
	
				//clear out query logs before starting
				if ( clear ) {
					cmd = "rm -f " + directory + "/" + qt + "/*.log";
					system(cmd.c_str());
				}
	
				std::vector<std::string>::iterator pt2 = queries.begin();
				for( ; pt2 != queries.end() ; pt2++)
				{
					string query = *pt2;

					if ( 	query.find("negative",0) != string::npos 
						&&  runType != "Tr")
						continue;

#ifdef _MSC_VER
					string winquery = query;
					for (int i = 0; i < winqueries.size(); ++i)
					{
						size_t dotWin = winqueries[i].find(".win");
						if (query == winqueries[i].substr(0, winqueries[i].find(".win")))
						{

							winquery = winqueries[i];
						}
					}
#endif
					if ( output )
						cout << " Running query " << query << "        ";cout.flush();
					if ( runType == "T" || runType == "B" || runType == "Tr") {

						// @Bug 3145.  Do not pass -f (force flag) runType for runType T (Calpont run only).  
						// The force flag will keep running if a MySQL error is encountered and we
						// don't want to do that if we are only running against Calpont.  It's okay to pass -f
						// with the other runTypes as they will be diff'd against a reference log and any errors
						// will show up that way.
						string forceFlag = "";
						if ( runType != "T" ) {
							forceFlag = "-f ";
						}
			
#ifdef _MSC_VER
						cmd = path + "/bin/mysql --defaults-file=" + path + CONF_FILE_NAME + " -u root " + forceFlag + user + " " + verbose + " < " + winquery + " > " + query + ".log 2>&1";
#else
						cmd = path + "/bin/mysql --defaults-file=" + path + CONF_FILE_NAME + " -u root " + forceFlag + user + " " + verbose + " < " + query + " > " + query + ".log 2>&1";
#endif
						//cout << cmd << endl;
						ret = system(cmd.c_str());
						if ( ret != 0) {
							if ( output )
								cout << "FAILED LOCAL RUN" << endl;
							testFail++;
							totalTestFail++;
							testQueryFail.push_back(query);
							continue;
						}
						else {
							if ( runType == "T" && output )
								cout << "PASSED" << endl;
	
							testPass++;
							totalTestPass++;
						}
					}
	
					bool refLog = false;
					if ( runType == "R" || runType == "B" ) {
						string refFile = query + ".ref.log";
						ifstream file (refFile.c_str());
						if (!file) {
							//check and adjust for 'tablemode' queries
							string runQuery = query;
							if ( qt == tablemode ) {
								system ("rm -f /tmp/tablemode.sql");
								cmd = "cp " + query + " /tmp/tablemode.sql";
								system(cmd.c_str());
								cmd = "sed -i s/'select calvtablemode'/'-- select calvtablemode'/ /tmp/tablemode.sql";
								system(cmd.c_str());
								runQuery = "/tmp/tablemode.sql";
							}

							cmd = path+ "/bin/mysql -h " + referenceSystem + " -u root -f -pCalpont1 --database=" + user + " --port=" + mysqldPort + " " + verbose + " < " + runQuery + " > " + query + ".ref.log 2>&1";
							//cout << cmd << endl;
							ret = system(cmd.c_str());
							if ( ret != 0) {
								if ( output )
									cout << "FAILED REFERENCE RUN" << endl;
		
								refFail++;
								totalRefFail++;
								refQueryFail.push_back(query);
								continue;
							}
							else 
							{
								if ( runType == "R" && output )
									cout << "PASSED" << endl;
			
								refPass++;
								totalRefPass++;
							}
						}
						else
						{
							file.close();
							refLog = true;
							if ( runType == "R" && output )
								cout << "PASSED" << endl;
							refPass++;
							totalRefPass++;
						}
					}
	
					if ( runType == "B" || runType == "Tr" ) {
#ifdef _MSC_VER
						string fileName = query + ".win.ref.log";
						ifstream rfile (fileName.c_str());
						if (!rfile) {
							rfile.clear();
							fileName = query + ".ref.log";
							rfile.open(fileName.c_str());
						}
#else
						string fileName = query + ".ref.log";
						ifstream rfile (fileName.c_str());
#endif
						if (!rfile) {
							if ( output )
								cout << "FAILED NO REFERENCE LOG FILE" << endl;
							compareFail++;
							totalCompareFail++;
							compareQueryFail.push_back(query);
							continue;
						}

						cmd = "diff --ignore-space-change --ignore-tab " + query + ".log " + fileName + " > " + query + ".diff";
						system(cmd.c_str());
	
						fileName = query + ".diff";
						ifstream file (fileName.c_str());

						char line[200];
						if ( file.getline(line, 200) ) {
						// compare failed, run reference if it wasn't run original because of an existing log
							if (refLog) {
								cmd = path + "/bin/mysql -h " + referenceSystem + " -u root -pCalpont1 --database=" + user + " --port=" + mysqldPort + " < " + query + " > " + query + ".ref.log 2>&1";
								//cout << cmd << endl;
								ret = system(cmd.c_str());
								if ( ret != 0) {
									if ( output )
										cout << "FAILED REFERENCE RUN" << endl;
			
									refPass--;
									totalRefPass--;
									refFail++;
									totalRefFail++;
									refQueryFail.push_back(query);
									continue;
								}
								else
								{
									cmd = "diff --ignore-space-change --ignore-tab " + query + ".log " + query + ".ref.log > " + query + ".diff";
									system(cmd.c_str());
				
									string fileName = query + ".diff";
							
									ifstream file (fileName.c_str());
				
									char line[200];
									if ( file.getline(line, 200) ) {
										if ( output )
											cout << "FAILED COMPARISION" << endl;
				
										compareFail++;
										totalCompareFail++;
										compareQueryFail.push_back(query);
									}
									else 
									{
										if ( output )
											cout << "MATCHED" << endl;
										comparePass++;
										totalComparePass++;
									}
								}
							}
							else
							{
								if ( output )
									cout << "FAILED COMPARISION" << endl;
		
								compareFail++;
								totalCompareFail++;
								compareQueryFail.push_back(query);
							}
						}
						else
						{
							if ( output )
								cout << "MATCHED" << endl;
							comparePass++;
							totalComparePass++;
						}
	
						file.close();
						unlink (fileName.c_str());
					}
				}
				// print summary

				// get current time in seconds
				time_t endTimeSec;
				time (&endTimeSec);

				cout << endl;
				cout << "Run time in seconds: " << endTimeSec - startTimeSec << endl << endl;
				cout << "Local Passed  Local Failed  Ref Passed Ref Failed  Compare Passed Compare Failed" << endl;
				cout << "------------  ------------  ---------- ----------  -------------- --------------" << endl;
				
				cout.setf(ios::right);
				cout.width(8);
				cout << testPass;
				cout.width(14);
				cout << testFail;
				cout.width(12);
				cout << refPass;
				cout.width(11);
				cout << refFail;
				cout.width(14);
				cout << comparePass;
				cout.width(15);
				cout << compareFail;
				cout << endl;

				if ( testQueryFail.empty() && refQueryFail.empty() && compareQueryFail.empty())
					cout << endl << "***** ALL TEST PASSED *****" << endl;
				else
				{
					cout << endl << "***** TEST FAILED '" << directory + "/" + qt << "' *****" << endl << endl;
					// print list of any qeuries that failed
					if ( !testQueryFail.empty() ) {
//						cout << endl << "List of queries that failed against local database:" << endl;
						std::vector<std::string>::iterator pt4 = testQueryFail.begin();
						for( ; pt4 != testQueryFail.end() ; pt4++)
						{
							cout << "Local failed - " << *pt4 << endl;
						}
					}
		
					if ( !refQueryFail.empty() ) {
//						cout << endl << "List of queries that failed against reference database:" << endl;
						std::vector<std::string>::iterator pt5 = refQueryFail.begin();
						for( ; pt5 != refQueryFail.end() ; pt5++)
						{
							cout << "Ref failed - " << *pt5 << endl;
						}
					}
		
					if ( !compareQueryFail.empty() ) {
//						cout << endl << "List of queries that failed the compare between local and reference database:" << endl;
						std::vector<std::string>::iterator pt6 = compareQueryFail.begin();
						for( ; pt6 != compareQueryFail.end() ; pt6++)
						{
							cout << "Compare failed - " << *pt6 << endl;
						}
					}
				}
				cout << "================================================================================" << endl << endl;
			}
		}
	}

	// If -g option was used, print a summary.
	if(outputGrandTotals)
	{
		cout << "" << endl;
		cout << "Totals:" << endl;
		cout << "Total Local Passed   = " << totalTestPass << endl;
		cout << "Total Local Failed   = " << totalTestFail << endl;
		cout << "Total Ref Passed     = " << totalRefPass << endl;
		cout << "Total Ref Failed     = " << totalRefFail << endl;
		cout << "Total Compare Passed = " << totalComparePass << endl;
		cout << "Total Compare Failed = " << totalCompareFail << endl;
	}

	cout << endl << endl << "QUERYTESTER RUN COMPLETED" << endl;
}
