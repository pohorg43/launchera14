.class public final Lc3/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.oplus.pantanal.ums.decision/dot"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lc3/a;->a:Landroid/net/Uri;

    const-string v0, "content://com.oplus.pantanal.ums.card.support.shelf/block_until_uninstall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lc3/a;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/List;)Landroid/content/ContentValues;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/dot/StatisticsBean;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantanal/server/content/dot/StatisticsBean;

    invoke-virtual {v0, p1, p2}, Lcom/pantanal/server/content/dot/StatisticsBean;->toJSONObject(J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_1d
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "insert content: = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatisticsDao"

    invoke-static {p2, p1}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "batchIntent"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(JLjava/util/List;)V
    .registers 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/dot/StatisticsBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "statisticsData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "StatisticsDao"

    const-string v1, "Start insert statistics."

    invoke-static {v0, v1}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/pantanal/server/content/dot/StatisticsBean;

    invoke-virtual {v6}, Lcom/pantanal/server/content/dot/StatisticsBean;->getEventCode()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_31

    goto :goto_32

    :cond_31
    const/4 v5, 0x0

    :goto_32
    if-eqz v5, :cond_38

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_38
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_3c
    check-cast v1, Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_6d

    sget-object v3, Le3/a;->c:Le3/a$a;

    invoke-virtual {v3}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v6, Lc3/a;->b:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_d0

    if-nez v3, :cond_5b

    goto :goto_6d

    :cond_5b
    :try_start_5b
    invoke-virtual {p0, p1, p2, v1}, Lc3/a;->a(JLjava/util/List;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_66

    :try_start_62
    invoke-static {v3, v4}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_d0

    goto :goto_6d

    :catchall_66
    move-exception p0

    :try_start_67
    throw p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p1

    :try_start_69
    invoke-static {v3, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_6d
    :goto_6d
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_cd

    sget-object v1, Le3/a;->c:Le3/a$a;

    invoke-virtual {v1}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v2

    if-nez v2, :cond_7e

    :goto_7c
    move-object v3, v4

    goto :goto_9c

    :cond_7e
    const-string v3, "get IUserContext,call StatisticsDao insert"

    invoke-static {v0, v3}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lc3/a;->a:Landroid/net/Uri;

    const-string v5, "SERVICE_DOT_URI"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_8e
    .catchall {:try_start_69 .. :try_end_8e} :catchall_d0

    if-nez v2, :cond_91

    goto :goto_7c

    :cond_91
    :try_start_91
    invoke-virtual {p0, p1, p2, p3}, Lc3/a;->a(JLjava/util/List;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_c6

    :try_start_99
    invoke-static {v2, v4}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    :goto_9c
    if-nez v3, :cond_cd

    invoke-virtual {v1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lc3/a;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_ac
    .catchall {:try_start_99 .. :try_end_ac} :catchall_d0

    if-nez v1, :cond_af

    goto :goto_cd

    :cond_af
    :try_start_af
    const-string v3, "get Context,call StatisticsDao insert"

    invoke-static {v0, v3}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lc3/a;->a(JLjava/util/List;)Landroid/content/ContentValues;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_bb
    .catchall {:try_start_af .. :try_end_bb} :catchall_bf

    :try_start_bb
    invoke-static {v1, v4}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_d0

    goto :goto_cd

    :catchall_bf
    move-exception p0

    :try_start_c0
    throw p0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    :catchall_c1
    move-exception p1

    :try_start_c2
    invoke-static {v1, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_c6
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_d0

    :catchall_c6
    move-exception p0

    :try_start_c7
    throw p0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c8

    :catchall_c8
    move-exception p1

    :try_start_c9
    invoke-static {v2, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_cd
    :goto_cd
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_cf
    .catchall {:try_start_c9 .. :try_end_cf} :catchall_d0

    goto :goto_d5

    :catchall_d0
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_d5
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_e8

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Exception while insert statistics : "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e8
    return-void
.end method
