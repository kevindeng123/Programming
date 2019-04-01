"""
    版本号：4.0
"""

# 汇率兑换函数
def convert_currency(im, er):
    out = im * er
    return out

# 汇率
USD_VS_RMB = 6.77

# 带单位的货币输入
currency_str_value = input('请输入带单位的货币金额(退出程序请输入Q):')

# 获取货币单位
unit = currency_str_value[-3:]

if unit == 'CNY':
    exchange_rate = 1 / USD_VS_RMB

elif unit == 'USD':
    exchange_rate = USD_VS_RMB

else:
    exchange_rate = -1

if exchange_rate != -1
    in_money = currency_str_value[:-3]
    # 调用函数
    out_money = convert_currency(in_money, exchange_rate)
    print('转换后的金额：', out_money)

elif:
    print('不支持该种货币！')

print('程序已退出！')
