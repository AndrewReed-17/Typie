#include <stdio.h>
#include <time.h>
#include <string.h>

void func_GetISO8601(char *buffer, size_t size)
{
    time_t rawtime;
    struct tm *timeinfo;

    time(&rawtime);
    timeinfo = localtime(&rawtime);

    strftime(buffer, size, "%Y-%m-%d at %H:%M:%S", timeinfo);
}

int func_DysplayInfoScreen(
    const unsigned short int var_suint_VerType,
    const unsigned short int var_suint_Version,
    const char * var_str_Name,
    const char * var_str_Author,
    const char * var_str_Licences
)
{

    /* ===== VARABLE ===== */
    char var_str_VerType[30] = "Unknown";
    unsigned short int var_suint_FunctionState = 1;
    unsigned short int var_suint_DevVer = 0;
    char var_str_CompTime[40];

    /* ===== PROCESSING VERSION TYPE ===== */
    switch (var_suint_VerType)
    {
        case 0:
            strcpy(var_str_VerType, "Indev");
            var_suint_DevVer = 1;
            break;
        case 1:
            strcpy(var_str_VerType, "Alpha");
            var_suint_DevVer = 1;
            break;
        case 2:
            strcpy(var_str_VerType, "Beta");
            var_suint_DevVer = 1;
            break;
        case 3:
            strcpy(var_str_VerType, "Release");
            break;
        case 4:
            strcpy(var_str_VerType, "Demo");
            break;
        case 5:
            strcpy(var_str_VerType, "Prototype");
            var_suint_DevVer = 1;
            break;
        case 6:
            strcpy(var_str_VerType, "Pre-Build");
            var_suint_DevVer = 1;
            break;
        case 7:
            strcpy(var_str_VerType, "Pre-Release");
            break;
        case 8:
            strcpy(var_str_VerType, "R.T.M.");
            var_suint_DevVer = 1;
            break;
	default:
	    var_suint_FunctionState = 2;
    }	

    /* ===== PROCESSING COMPILATION DATE ===== */
    func_GetISO8601(var_str_CompTime, sizeof(var_str_CompTime));

    /* ===== PRINTING INFO SCREEN ===== */
    printf(" %s\n", var_str_Name);
    printf("=========================\n");
    printf(" $ In it's %s version\n", var_str_VerType);
    printf(" $ Service Pack %d\n", var_suint_Version),
    printf("-------------------------\n");
    printf(" $ Author is %s \n", var_str_Author);
    printf(" $ Under %s licences\n", var_str_Licences);
    printf("-------------------------\n");
    printf(" $ Compilation occured the %s \n", var_str_CompTime);

    if (var_suint_DevVer == 1) {
        printf(" $ Shhh.... let's not leak our hard work !\n");
    }

    /* ===== SENDING DEBUG INFO ===== */
    return var_suint_FunctionState;
}
