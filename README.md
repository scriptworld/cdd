## CDD  
`cdd`(means cd뒤) is a bash shell command which can help to navigate parent directory easily.  

## Usage  

- `cdd` with argument number
![cdd1](docs/imgs/cdd_cdd8.gif)

- `cdd` without argument
![cdd1](docs/imgs/cdd_cdd.gif)

- Auto completion with number
![cdd1](docs/imgs/cdd_comp4.gif)
The path will be auto completed by `TAB` key from a number. The argument will be converted by number of `../` combination.  

- Auto completion without argument
![cdd1](docs/imgs/cdd_comp_single.gif)
If you press `TAB` after command + `space`, then `../` will be poped up then you can navigate from the parent directory. Double `TAB` also show directories which is in the directory.  


## Setup  

- Automatically (only for bash)

````sh
 $ source setup.sh
````

- Manually

1. Generate a symbolic link in your $PATH
```
ln -s $CUR_PATH/cdd.sh $SET_DIR/cdd
```
> `$CUR_PATH`: this script path where you've cloned.  
> `$SET_DIR`: the path where you want to make symlink in.  
> Note that symlink name shoule be cdd (not cdd.sh)  

2. Append follow lines in your rc file
```
# for script cdd
source $SET_DIR/cdd
[ -f $CUR_PATH/cdd-completion.bash ] \
        && source $CUR_PATH/cdd-completion.bash
```

## TODO

- Working on another shells (currently bash only).  
