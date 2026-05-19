.class public Lcom/android/launcher/badge/NotificationBadgeManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_CACHE_SIZE:I = 0x64

.field private static final PKG:Ljava/lang/String; = "pkg"

.field private static final TAG:Ljava/lang/String; = "NotificationBadgeManager"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final UID:Ljava/lang/String; = "uid"

.field private static final URI_ALL_APP:Landroid/net/Uri;

.field private static final URI_BADGE:Landroid/net/Uri;

.field private static final URI_PREFIX:Ljava/lang/String; = "?"

.field private static volatile sInstance:Lcom/android/launcher/badge/NotificationBadgeManager;


# instance fields
.field private final mBadgeOptionObserver:Landroid/database/ContentObserver;

.field private final mCacheForBadge:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.oplus.notification_center2/supportNumberBadge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/badge/NotificationBadgeManager;->URI_ALL_APP:Landroid/net/Uri;

    const-string v0, "content://com.oplus.notification_center2/badge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/badge/NotificationBadgeManager;->URI_BADGE:Landroid/net/Uri;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher/badge/NotificationBadgeManager;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/badge/NotificationBadgeManager;->sInstance:Lcom/android/launcher/badge/NotificationBadgeManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    new-instance v0, Lcom/android/launcher/badge/NotificationBadgeManager$1;

    sget-object v1, Lcom/android/common/util/LauncherUtilsThread;->INSTANCE:Lcom/android/common/util/LauncherUtilsThread;

    invoke-virtual {v1}, Lcom/android/common/util/LauncherUtilsThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/badge/NotificationBadgeManager$1;-><init>(Lcom/android/launcher/badge/NotificationBadgeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mBadgeOptionObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_27

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mContext:Landroid/content/Context;

    :cond_27
    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/badge/NotificationBadgeManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/badge/NotificationBadgeManager;->updateAllCache()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/badge/NotificationBadgeManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/badge/NotificationBadgeManager;->updateSingleInCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/badge/NotificationBadgeManager;
    .registers 2

    sget-object v0, Lcom/android/launcher/badge/NotificationBadgeManager;->sInstance:Lcom/android/launcher/badge/NotificationBadgeManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/badge/NotificationBadgeManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/badge/NotificationBadgeManager;->sInstance:Lcom/android/launcher/badge/NotificationBadgeManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/badge/NotificationBadgeManager;

    invoke-direct {v1}, Lcom/android/launcher/badge/NotificationBadgeManager;-><init>()V

    sput-object v1, Lcom/android/launcher/badge/NotificationBadgeManager;->sInstance:Lcom/android/launcher/badge/NotificationBadgeManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher/badge/NotificationBadgeManager;->sInstance:Lcom/android/launcher/badge/NotificationBadgeManager;

    return-object v0
.end method

.method private updateAllCache()V
    .registers 12

    sget-object v0, Lcom/android/launcher/badge/NotificationBadgeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10d

    if-nez v2, :cond_10b

    :try_start_f
    iget-object v2, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher/badge/NotificationBadgeManager;->URI_BADGE:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_ef
    .catchall {:try_start_f .. :try_end_1b} :catchall_10d

    if-eqz v2, :cond_d5

    :try_start_1d
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_dd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v4, 0x0

    const/4 v10, -0x1

    iget-object v5, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-virtual {v5, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_ce

    const-string/jumbo v7, "pkg= ? & uid= ?"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    aput-object v5, v8, v4

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/android/launcher3/util/PackageUserKey;->getAppUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    sget-object v5, Lcom/android/launcher/badge/NotificationBadgeManager;->URI_BADGE:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_79

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_79

    const-string/jumbo v5, "type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    :cond_79
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_9e

    const-string v5, "NotificationBadgeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update cache key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    if-gez v10, :cond_c5

    const-string v5, "NotificationBadgeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update cache invalid value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-virtual {v5, v3}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ce

    :cond_c5
    iget-object v5, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ce
    :goto_ce
    if-eqz v4, :cond_25

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_25

    :cond_d5
    const-string p0, "NotificationBadgeManager"

    const-string/jumbo v1, "update cache fail to get content provider"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catchall {:try_start_1d .. :try_end_dd} :catchall_e3

    :cond_dd
    if-eqz v2, :cond_10b

    :try_start_df
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_ef
    .catchall {:try_start_df .. :try_end_e2} :catchall_10d

    goto :goto_10b

    :catchall_e3
    move-exception p0

    if-eqz v2, :cond_ee

    :try_start_e6
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_ee

    :catchall_ea
    move-exception v1

    :try_start_eb
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ee
    :goto_ee
    throw p0
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ef} :catch_ef
    .catchall {:try_start_eb .. :try_end_ef} :catchall_10d

    :catch_ef
    move-exception p0

    :try_start_f0
    const-string v1, "NotificationBadgeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update cache query -error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    :goto_10b
    monitor-exit v0

    return-void

    :catchall_10d
    move-exception p0

    monitor-exit v0
    :try_end_10f
    .catchall {:try_start_f0 .. :try_end_10f} :catchall_10d

    throw p0
.end method

.method private updateSingleInCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    sget-object v0, Lcom/android/launcher/badge/NotificationBadgeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_47

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v3

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v5, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-virtual {v5, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_19

    iget-object v5, v4, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v4}, Lcom/android/launcher3/util/PackageUserKey;->getAppUid()I

    move-result v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_10b

    if-ne v5, v6, :cond_19

    move-object v2, v4

    goto :goto_19

    :cond_47
    move-object v2, v3

    :cond_48
    if-eqz v2, :cond_109

    const/4 p1, -0x1

    :try_start_4b
    iget-object p2, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v5, Lcom/android/launcher/badge/NotificationBadgeManager;->URI_BADGE:Landroid/net/Uri;

    invoke-virtual {p2, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p2
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_d8
    .catchall {:try_start_4b .. :try_end_57} :catchall_d5

    if-eqz p2, :cond_c0

    :try_start_59
    const-string/jumbo v7, "pkg= ? & uid= ?"

    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v4, v2, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    aput-object v4, v8, v1

    const/4 v1, 0x1

    invoke-virtual {v2}, Lcom/android/launcher3/util/PackageUserKey;->getAppUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_8f

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8f

    const-string/jumbo v1, "type"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    :cond_8f
    const-string v1, "NotificationBadgeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update single cache option = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_b6

    iget-object p0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-virtual {p0, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c8

    :cond_b6
    iget-object p0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c8

    :cond_c0
    const-string p0, "NotificationBadgeManager"

    const-string/jumbo p1, "update single cache fail to get content provider"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_c8} :catch_d3
    .catchall {:try_start_59 .. :try_end_c8} :catchall_fd

    :goto_c8
    if-eqz v3, :cond_cd

    :try_start_ca
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_cd
    if-eqz p2, :cond_109

    :goto_cf
    invoke-virtual {p2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_10b

    goto :goto_109

    :catch_d3
    move-exception p0

    goto :goto_da

    :catchall_d5
    move-exception p0

    move-object p2, v3

    goto :goto_fe

    :catch_d8
    move-exception p0

    move-object p2, v3

    :goto_da
    :try_start_da
    const-string p1, "NotificationBadgeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update single cache query -error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_da .. :try_end_f5} :catchall_fd

    if-eqz v3, :cond_fa

    :try_start_f7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_fa
    if-eqz p2, :cond_109

    goto :goto_cf

    :catchall_fd
    move-exception p0

    :goto_fe
    if-eqz v3, :cond_103

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_103
    if-eqz p2, :cond_108

    invoke-virtual {p2}, Landroid/content/ContentProviderClient;->close()V

    :cond_108
    throw p0

    :cond_109
    :goto_109
    monitor-exit v0

    return-void

    :catchall_10b
    move-exception p0

    monitor-exit v0
    :try_end_10d
    .catchall {:try_start_f7 .. :try_end_10d} :catchall_10b

    throw p0
.end method


# virtual methods
.method public getBadgeOption(Lcom/android/launcher3/util/PackageUserKey;)I
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/android/launcher/badge/NotificationBadgeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_43

    const-string v0, "NotificationBadgeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache hit and PackageName is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_175

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_46
    iget-object v3, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/launcher/badge/NotificationBadgeManager;->URI_BADGE:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_52} :catch_d3
    .catchall {:try_start_46 .. :try_end_52} :catchall_cf

    if-eqz v3, :cond_bb

    :try_start_54
    const-string/jumbo v7, "pkg= ? & uid= ?"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    iget-object v4, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    aput-object v4, v8, v0

    invoke-virtual {p1}, Lcom/android/launcher3/util/PackageUserKey;->getAppUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v8, v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_9a

    const-string v4, "NotificationBadgeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "selection is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",selectionArgs1 is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v8, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",selectionArgs2 is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v8, v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_c2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_c2

    const-string/jumbo v4, "type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_c2

    :cond_bb
    const-string v4, "NotificationBadgeManager"

    const-string v5, "fail to get content provider"

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_c2} :catch_cd
    .catchall {:try_start_54 .. :try_end_c2} :catchall_169

    :cond_c2
    :goto_c2
    if-eqz v2, :cond_c7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c7
    if-eqz v3, :cond_f8

    :goto_c9
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_f8

    :catch_cd
    move-exception v4

    goto :goto_d5

    :catchall_cf
    move-exception p0

    move-object v3, v2

    goto/16 :goto_16a

    :catch_d3
    move-exception v4

    move-object v3, v2

    :goto_d5
    :try_start_d5
    const-string v5, "NotificationBadgeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query -error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_d5 .. :try_end_f0} :catchall_169

    if-eqz v2, :cond_f5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f5
    if-eqz v3, :cond_f8

    goto :goto_c9

    :cond_f8
    :goto_f8
    if-gez v1, :cond_119

    const-string p0, "NotificationBadgeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBadgeOption invalid value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_146

    :cond_119
    sget-object v0, Lcom/android/launcher/badge/NotificationBadgeManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_11c
    const-string v2, "NotificationBadgeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update Badge Cache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mCacheForBadge:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_145
    .catchall {:try_start_11c .. :try_end_145} :catchall_166

    move v0, v1

    :goto_146
    const-string p0, "NotificationBadgeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageUserKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", type is = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_166
    move-exception p0

    :try_start_167
    monitor-exit v0
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_166

    throw p0

    :catchall_169
    move-exception p0

    :goto_16a
    if-eqz v2, :cond_16f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_16f
    if-eqz v3, :cond_174

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    :cond_174
    throw p0

    :catchall_175
    move-exception p0

    :try_start_176
    monitor-exit v1
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_175

    throw p0
.end method

.method public getList()Ljava/util/List;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "NotificationBadgeManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_8
    iget-object p0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v4, Lcom/android/launcher/badge/NotificationBadgeManager;->URI_ALL_APP:Landroid/net/Uri;

    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_51
    .catchall {:try_start_8 .. :try_end_14} :catchall_4e

    if-eqz p0, :cond_3e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    :try_start_1b
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_27
    const-string/jumbo v3, "pkg"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_43

    :cond_3e
    const-string v3, "fail to get content provider"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_43} :catch_4c
    .catchall {:try_start_1b .. :try_end_43} :catchall_8c

    :cond_43
    :goto_43
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    if-eqz p0, :cond_71

    :goto_48
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_71

    :catch_4c
    move-exception v3

    goto :goto_53

    :catchall_4e
    move-exception v0

    move-object p0, v2

    goto :goto_8d

    :catch_51
    move-exception v3

    move-object p0, v2

    :goto_53
    :try_start_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getList-e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_8c

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    if-eqz p0, :cond_71

    goto :goto_48

    :cond_71
    :goto_71
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_8b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getList from URI:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    return-object v1

    :catchall_8c
    move-exception v0

    :goto_8d
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    if-eqz p0, :cond_95

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_95
    throw v0
.end method

.method public isFold(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isNotificationSwitchOpen(Lcom/android/launcher3/util/PackageUserKey;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public registerBadgeOptionObserver()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/badge/NotificationBadgeManager;->URI_BADGE:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mBadgeOptionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_18

    :catch_f
    move-exception p0

    const-string/jumbo v0, "registerBadgeOptionObserver-fail to find uri"

    const-string v1, "NotificationBadgeManager"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public unregisterBadgeOptionObserver()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/badge/NotificationBadgeManager;->mBadgeOptionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_15

    :catch_c
    move-exception p0

    const-string/jumbo v0, "unregisterBadgeOptionObserver-fail to find  uri"

    const-string v1, "NotificationBadgeManager"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_15
    return-void
.end method
