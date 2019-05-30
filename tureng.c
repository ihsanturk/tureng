#include <stdio.h>
#include <string.h>
#include <curses.h>
#include <curl/curl.h>

const char* BASEURL = "https://ac.tureng.co/?t=";

int
main(int argc, char* argv[])
{
	char TERM[128];
	int key = 0;
	int ich = 0;

	/* Initialize window */
	initscr();
	raw();
	noecho();

	/* Take term */
	printw("Term: "); refresh();
	attron(A_BOLD);
	while(key == 0)
	{
		ich = getch();
		// printw("%c", ich);
		const char cch = ich + '0';
		strcat(TERM, (const char*)cch);
		printw("\n%s\n", TERM);
		
		if(ich == 27 || ich == 3) break;
		else if(ich == 10) key = -1;
		refresh();
	}

	
	char FINALURL[strlen(BASEURL) + strlen(TERM)];
	strcpy(FINALURL, BASEURL);
	strcat(FINALURL, TERM);
	printw("%s\n\n", FINALURL);
	refresh();
	ich = getch();

	// CURL *curl = curl_easy_init();
	// if(curl) {
		// CURLcode res;
		// curl_easy_setopt(curl, CURLOPT_URL, FINALURL);
		// res = curl_easy_perform(curl);
		// curl_easy_cleanup(curl);
	// }

	return 0;
}
