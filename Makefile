# Mac Test on the MakeFile, very simple one
# http://www.funnyhao.com/the-the-practice-the-makefile/
# http://oreilly.com.cn/samplechap/gnumakesc/mng_pro_gnu3-12.pdf makefile print
# difference http://c.chinaitlab.com/vc/200906/786118.html
# http://ishare.iask.sina.com.cn/f/7371581.html
# http://www.yayu.org/book/gnu_make/index.html
#获取所有以.c,和.h为结尾的
C_SOUR=$(wildcard src/*.c)
CPP_SOUR=$(wildcard src/*.cpp)
H_SOUT=$(wildcard src/*.h)


CXX=g++
#将所有后缀为.c的文件名替换为.o cpp文件名替换为.o
OBJS=$(C_SOUR:%.c=%.o) $(CPP_SOUR:%.cpp=%.o)

INC =
LIBS = 

TARGET= hello

CXXFLAGS =	-O2 -g

all:	$(TARGET)

# $@ 当前目标的全路径名
%.o:	%.c $(H_SOUR)
	$(CXX) $(CXXFLAGS) -I$(INC) -c $< -o $@


$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(LIBS) $(OBJS) 
	
a:
	echo $(OBJS)
	
clean:
	rm -rf $(OBJS)