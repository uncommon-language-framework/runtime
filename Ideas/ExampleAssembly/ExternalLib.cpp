extern "C" void external_func(void (*callback)())
{
	callback();
}