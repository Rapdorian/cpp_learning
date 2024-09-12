ENV_NAME:= "cpp_learning"
DEV_NAME:= "cpp_learning_dev"

hello_world NAME="Test": build
    ./build/hello_world {{NAME}}

init:
    mkdir -p build
    cd build && cmake ..

build: init
    cd build && make

clean:
    rm build -rf