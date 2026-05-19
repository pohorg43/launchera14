.class public final La3/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Landroid/net/Uri;

.field public static b:Lm7/s1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.oplus.pantanal.ums.card.support.shelf/shelf_services"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, La3/b;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Lcom/pantanal/server/content/recommendlist/ServiceInfo;
    .registers 19
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "cursor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ShelfDecisionDao"

    const-string v2, "fromCursor start"

    invoke-static {v1, v2}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    const-string v3, "serviceId"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "cursor.getString(cursor.…mnInfo.FIELD_SERVICE_ID))"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "score"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v5, -0x1

    const/4 v8, 0x1

    const-string v9, ""

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x180

    const/16 v16, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v16}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setIntentCategory(I)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setServiceCategory(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setParamsSendToSeedling(I)V

    invoke-virtual {v2, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setCannotReduceRecommend(Z)V

    invoke-virtual {v2, v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setForceRebuild(Z)V

    invoke-virtual {v2, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setSeedlingType(I)V

    const-string v0, "fromCursor end"

    invoke-static {v1, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final b()Ljava/util/List;
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "ShelfDecisionDao"

    :try_start_2
    sget-object v1, Le3/a;->c:Le3/a$a;

    invoke-virtual {v1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, La3/b;->a:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_11e

    if-nez v1, :cond_15

    goto :goto_24

    :cond_15
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    :try_start_1a
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_117

    const/4 v3, 0x0

    if-nez v2, :cond_2f

    :try_start_21
    invoke-static {v1, v3}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    :goto_24
    const-string p0, "query, client or cursor is null"

    invoke-static {v0, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_11e

    return-object p0

    :cond_2f
    :try_start_2f
    const-string v4, "query , cursor count: "

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_45
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_49
    .catchall {:try_start_2f .. :try_end_49} :catchall_110

    if-eqz v5, :cond_5a

    :try_start_4b
    invoke-virtual {p0, v2}, La3/b;->a(Landroid/database/Cursor;)Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_52} :catch_53
    .catchall {:try_start_4b .. :try_end_52} :catchall_110

    goto :goto_45

    :catch_53
    move-exception v5

    :try_start_54
    const-string v6, "get item from cursor error, abandon this item"

    invoke-static {v0, v6, v5}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45

    :cond_5a
    const-string p0, "query finished, list size： "

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    const/4 v5, 0x1

    if-le p0, v5, :cond_7a

    new-instance p0, La3/b$a;

    invoke-direct {p0}, La3/b$a;-><init>()V

    invoke-static {v4, p0}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7a
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_109

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query from ums, serviceInfo:[serviceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",supportCardSizes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",score="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getScore()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",supportEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportEntrance()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",timeStamp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getTimeStamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",subdomain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSubdomain()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",useTemplate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getUseTemplate()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",serviceType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",versionCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getVersionCode()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catchall {:try_start_54 .. :try_end_107} :catchall_110

    goto/16 :goto_7e

    :cond_109
    :try_start_109
    invoke-static {v2, v3}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_117

    :try_start_10c
    invoke-static {v1, v3}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_11e

    return-object v4

    :catchall_110
    move-exception p0

    :try_start_111
    throw p0
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_112

    :catchall_112
    move-exception v3

    :try_start_113
    invoke-static {v2, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_117
    .catchall {:try_start_113 .. :try_end_117} :catchall_117

    :catchall_117
    move-exception p0

    :try_start_118
    throw p0
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_119

    :catchall_119
    move-exception v2

    :try_start_11a
    invoke-static {v1, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11e} :catch_11e

    :catch_11e
    move-exception p0

    const-string v1, "query error"

    invoke-static {v0, v1, p0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
