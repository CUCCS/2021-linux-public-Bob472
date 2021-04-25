#!/usr/bin/env bash
help() {
    echo "doc"
    echo "-s                 统计不同年龄区间范围（20岁以下、[20-30]、30岁以上）的球员数量、百分比"
    echo "-p                 统计不同场上位置的球员数量、百分比"
    echo "-n                 名字最长的球员是谁？名字最短的球员是谁？"
    echo "-a                 年龄最大的球员是谁？年龄最小的球员是谁？"
    echo "-h                 帮助文档"
}

# 统计不同年龄区间范围（20岁以下、[20-30]、30岁以上）的球员数量、百分比
countAge() {
    #使用-F参数指定制表符为分隔符，按理来说awk默认以空格或者制表符为分隔符，但这次不指定制表符为分隔符就会出现奇怪的错误


    awk -F "\t" '
    
    
        BEGIN {small=0; middle=0; big=0;}
        NR>1 {
            if($6<20) {small++;}
            else if($6<=30) {middle++;}
            else {big++;}
        }
        END {
            sum=a+b+c;
            printf("Age\tCount\tPercentage\n");
            printf("<20\t%d\t%f%%\n",small,small*100.0/sum);
            printf("[20,30]\t%d\t%f%%\n",middle,middle*100.0/sum);
            printf(">30\t%d\t%f%%\n",big,big*100.0/sum);
        }' worldcupplayerinfo.tsv
}
#NR表示当前行的行数，NR>1则表示从第二行开始执行

# 统计不同场上位置的球员数量、百分比
countPosition() {
    awk -F "\t" '
        BEGIN {sum=0}
        NR>1{
            pos[$5]++;
            sum++;
        }
        END {
            printf("    Position\tCount\tPercentage\n");
            for(i in pos) {
                printf("%13s\t%d\t%f%%\n",i,pos[i],pos[i]*100.0/sum);
            }
        }' worldcupplayerinfo.tsv
}

# 名字最长的球员是谁？名字最短的球员是谁？
# 考虑并列
maxandminName() {
    awk -F "\t" '
        BEGIN {mx=-1; mi=1000;}
        NR>1 {
            len=length($9);
            names[$9]=len;
            mx=len>mx?len:mx;
            mi=len<mi?len:mi;
        }
        END {
            for(i in names) {
                if(names[i]==mx) {
                    printf("The longest name is %s\n", i);
                } else  if(names[i]==mi) {
                    printf("The shortest name is %s\n", i);
                }
            }
        }' worldcupplayerinfo.tsv
}

# 年龄最大的球员是谁？年龄最小的球员是谁？
# 考虑并列
maxandminAge() {
    awk -F "\t" '
        BEGIN {mx=-1; mi=1000;}
        NR>1 {
            age=$6;
            names[$9]=age;
            mx=age>mx?age:mx;
            mi=age<mi?age:mi;
        }
        END {
            printf("The oldest age is %d, who is\n", mx);
            for(i in names) {
                if(names[i]==mx) { printf("%s\n", i); }
            }
            printf("The youngest age is %d, who is\n", mi);
            for(i in names) {
                if(names[i]==mi) { printf("%s\n", i); }
            }
        }' worldcupplayerinfo.tsv
}


while [ "$1" != "" ];do
    case "$1" in
        "-s")
            countAge
            exit 0
            ;;
        "-p")
            countPosition
            exit 0
            ;;
        "-n")
            maxandminName
            exit 0
            ;;
        "-a")
            maxandminAge
            exit 0
            ;;
        "-h")
            help
            exit 0
            ;;
    esac
done