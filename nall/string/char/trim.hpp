#ifdef NALL_STRING_INTERNAL_HPP

namespace nall {

//limit defaults to zero, which will underflow on first compare; equivalent to no limit
template<unsigned Limit> char* ltrim(char* str, const char* key) {
  if(!str || !key || !*key) return str;
  unsigned limit = Limit;
  while(strbegin(str, key)) {
    char* dest = str;
    char* src = str + strlen(key);
    while(true) {
      *dest = *src++;
      if(!*dest) break;
      dest++;
    }
    if(--limit == 0) break;
  }
  return str;
}

template<unsigned Limit> char* rtrim(char* str, const char* key) {
  if(!str || !key || !*key) return str;
  unsigned limit = Limit;
  while(strend(str, key)) {
    str[strlen(str) - strlen(key)] = 0;
    if(--limit == 0) break;
  }
  return str;
}

template<unsigned limit> char* trim(char* str, const char* key) {
  return ltrim<limit>(rtrim<limit>(str, key), key);
}

template<unsigned limit> char* trim(char* str, const char* lkey, const char* rkey) {
  return ltrim<limit>(rtrim<limit>(str, rkey), lkey);
}

//remove whitespace characters from both left and right sides of string
char* strip(char* s) {
  if(!s) return nullptr;

  signed n = 0, p = 0;
  while(s[n]) {
    if(s[n] != ' ' && s[n] != '\t' && s[n] != '\r' && s[n] != '\n') break;
    n++;
  }
  while(s[n]) s[p++] = s[n++];
  s[p--] = 0;
  while(p >= 0) {
    if(s[p] != ' ' && s[p] != '\t' && s[p] != '\r' && s[p] != '\n') break;
    p--;
  }
  s[++p] = 0;

  return s;
}

char* removespace(char* s) {
  int i=0,j=0;
  char *buftemp= new char[strlen(s)];

 while('\0' != s[i])
 {
   if ((s[i] ==' ') && (s[i+1] != '\0') )
   {
     buftemp[i]=s[j];
     i++;j++;
     while((s[j] ==' '))
        j++;
   }
   buftemp[i++]=s[j++];
 }
 buftemp[j]='\0';
 strcpy(s,buftemp);
 delete buftemp;
}

}

#endif
