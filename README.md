# ngx_learn
Test for nginx source code

## How to use
git clone https://github.com/MichelLiu/ngx_learn.git
git clone https://github.com/nginx/nginx.git

cd nginx-1.8.1
./configure
make && make install

cp nginx-1.8.1/src/core/nginx.c ./
sed -i "s/main(/mac(/g" ./nginx.c

vim Makefile
make clean && make
