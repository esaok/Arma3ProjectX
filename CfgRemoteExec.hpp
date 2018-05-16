#define Function(NAME,TARGET) class NAME { \
    allowedTargets = TARGET; \
};

#define ANYONE 0
#define CLIENT 1
#define SERVER 2

class CfgRemoteExec {
    class Functions {
        mode = 1;
        jip = 0;

        /* Client functions */
        Function(XXX_fnc_openVoting,CLIENT)
        Function(XXX_fnc_teamLost,CLIENT)
        /* Server functions */
        Function(XXX_fnc_getVote,SERVER)
		/*
		Don't uncomment these unless you're in a testing environment*/
        Function(bis_fnc_execvm,ANYONE)
        Function(bis_fnc_debugconsoleexec,ANYONE)
    };

    class Commands {
        mode = 1;
        jip = 0;

        Function(hint,ANYONE)
        /*
		Don't uncomment these unless you're in a testing environment*/
		Function(spawn,ANYONE)
        Function(call,ANYONE)
        Function(execVM,ANYONE)
    };
};