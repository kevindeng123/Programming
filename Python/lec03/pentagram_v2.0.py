"""
    作者：邓经纬
    版本：v2.0
    日期：17/10/2018
    功能：绘制五角星
"""

import turtle

def draw_pentagram(size):
    """
        绘制五角星
    """
    # 计数器
    count = 1
    while count <= 5:
        turtle.fd(size)
        turtle.right(144)
        count += 1

def main():
    """
        主函数
    """

    turtle.penup()
    turtle.bk(200)
    turtle.pendown()
    turtle.pensize(2)
    turtle.pencolor('red')

    size = 50

    while size <= 100:
        # 调用函数
        draw_pentagram(size)
        size += 10

    turtle.exitonclick()

if __name__ == '__main__':
    main()
