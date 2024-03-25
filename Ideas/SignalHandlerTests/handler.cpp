#include <iostream>
#include <csignal>
#include <windows.h>

#define GC_TRIGGERED_EXC_CODE 0x4ABC123
#define EXC_CALL_FIRST 1

LONG handler(EXCEPTION_POINTERS* excinfo)
{
	if (excinfo->ExceptionRecord->ExceptionCode == GC_TRIGGERED_EXC_CODE)
	{
		std::cout << "let's goooo" << std::endl;

		DebugBreak();

		return EXCEPTION_CONTINUE_EXECUTION;
	}

	return EXCEPTION_CONTINUE_SEARCH;
}

DWORD threadfunc(void* param)
{	
	Sleep(1000);

	std::cout << "execution has resumed" << std::endl;

	return 0;
}

void raise_exc(ULONG_PTR flag)
{
	RaiseException(GC_TRIGGERED_EXC_CODE, 0, 0, NULL);

	* (bool*)flag = true;
}


int main()
{
	AddVectoredExceptionHandler(EXC_CALL_FIRST, handler); // process level handler

	HANDLE thread_handle = CreateThread(NULL, 0, threadfunc, NULL, 0, NULL);
	
	bool done;

	QueueUserAPC(raise_exc, thread_handle, (ULONG_PTR) &done);

	while (!done)
	{
		std::cout << "waiting" << std::endl;
	}

	std::cout << "done" << std::endl;

	WaitForSingleObject(thread_handle, INFINITE);

	std::cout << "end" << std::endl;

	CloseHandle(thread_handle);

	return 0;
}