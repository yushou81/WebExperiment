package org.csu.mypetstore.domain;

import com.alibaba.fastjson2.JSON;

public class JsonTest {
    private int atribute1;

    public JsonTest(int atribute1) {
        this.atribute1 = atribute1;
    }

    public int getAtribute1() {
        return atribute1;
    }
    public void setAtribute1(int atribute1) {
        this.atribute1 = atribute1;
    }
    public void see(int atribute2) {
        JsonTest test = new JsonTest(atribute2);
        String json = JSON.toJSONString(test);  // 使用 fastjson 库的 toJSONString 方法进行序列化
        System.out.println(json);  // 输出 JSON 字符串
    }
}
