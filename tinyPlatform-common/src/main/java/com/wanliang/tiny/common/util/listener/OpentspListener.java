package com.wanliang.tiny.common.util.listener;

import com.wanliang.tiny.common.util.event.OpentspEvent;

/**
 * @author wupeng
 * @version 1.0
 * @date 2015-09-29
 * @modify
 * @copyright Navi Tsp
 */
public interface OpentspListener<T extends OpentspEvent<?>> {

    /**
     * true 表示异步， false表示同步
     * @return
     */
    public boolean async();

    public void onEvent(OpentspEvent<?> event);



}
