package com.unis.core.cache;

import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class CacheManager {

    private final ConcurrentMap<String, Object> commonInfoCache;

    private static class SingletonHolder {
        static final CacheManager instance = new CacheManager();
    }

    private CacheManager() {
        commonInfoCache = new ConcurrentHashMap<String, Object>();
    }

    public static CacheManager getInstance() {
        return SingletonHolder.instance;
    }

    public void cacheData(String key, Object value) {
        if (!commonInfoCache.containsKey(key)) {
            commonInfoCache.put(key, value);
        }
    }

    public void clearData(Object key) {
        if (commonInfoCache.containsKey(key)) {
            commonInfoCache.remove(key);
        }
    }
    
    public void clearAllData() {
        commonInfoCache.clear();
    }
    public Map<String, Object> getCacheDataMap() {
        return Collections.unmodifiableMap(commonInfoCache);
    }
}
