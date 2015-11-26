#include <stddef.h>

void *calloc(size_t nmemb, size_t size);
void *malloc(size_t size);
void free(void *ptr);
void *realloc(void *ptr, size_t size);

#ifdef MALLOC_DEBUG
void print_free_list(void);
void print_heap_chunks(void);
#endif
