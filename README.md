# ngx_learn
Test for nginx source code

## How to use

### unit testing method

    % git clone https://github.com/MichelLiu/ngx_learn.git
    % git clone https://github.com/nginx/nginx.git
    % cd nginx-1.8.1
    % ./configure
    % make && make install
    % cp nginx-1.8.1/src/core/nginx.c ./
    % sed -i "s/main(/mac(/g" ./nginx.c
    % vim Makefile
    % make clean && make

### graphviz analysis tools
    
    Graphviz is open source graph visualization software. Graph visualization is a way of representing structural information as diagrams of abstract graphs and networks. It has important applications in networking, bioinformatics,  software engineering, database and web design, machine learning, and in visual interfaces for other technical domains. 
    
    The Graphviz layout programs take descriptions of graphs in a simple text language, and make diagrams in useful formats, such as images and SVG for web pages; PDF or Postscript for inclusion in other documents; or display in an interactive graph browser.  Graphviz has many useful features for concrete diagrams, such as options for colors, fonts, tabular node layouts, line styles, hyperlinks, and custom shapes. 
    
    Graphviz is an useful tool, that helps us analyse nginx source code.
    First of all, you must make sure your system have already installed graphviz,pvtrace.
    
    % yum install -y graphviz*
    % unzip pvtrace.zip -d pvtrace
    % cd pvtrace
    % sed -i "s/MAX_FUNCTIONS       200/MAX_FUNCTIONS       8000/g" ./symbols.h
    % make clean && make && make install
    % cd -
    % cd nginx-1.8.1
    % cp ../pvtrace/instrument.c ./src/core/
    % sed -i "s/CFLAGS = \$CFLAGS/CFLAGS = \$CFLAGS -g  -finstrument-functions/g" ./auto/make
    % vim ./auto/sources
    % add src/core/instrument.c to $(CORE_SRCS)
    % ./configure
    % make && make install
    % /usr/local/nginx/sbin/nginx
    % pkill nginx
    % pvtrace /usr/local/nginx/sbin/nginx
    % dot -Tjpg graph.dot -o graph.jpg
    
    
## source code
    [pvtrace](http://www.ibm.com/developerworks/apps/download/index.jsp?contentid=88615&filename=pvtrace.zip&method=http&locale=zh_CN)
