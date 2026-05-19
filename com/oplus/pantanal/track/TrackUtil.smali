.class public final Lcom/oplus/pantanal/track/TrackUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AUTHORITIES:Ljava/lang/String; = "content://com.oplus.pantanal.ums.track"

.field private static final CACHE_LEN:I = 0x1e

.field private static final CACHE_TIME:J = 0xea60L

.field private static final DATA_KEY:Ljava/lang/String; = "data"

.field private static final EVENT_ID_KEY:Ljava/lang/String; = "eventId"

.field private static final GET_MATA_TIME:J = 0x493e0L

.field public static final INSTANCE:Lcom/oplus/pantanal/track/TrackUtil;

.field private static final LOG_TAG_KEY:Ljava/lang/String; = "logTag"

.field private static final META_DATA_BATCH_SUBMIT_SUPPORT:Ljava/lang/String; = "isSupportTrackBatchSubmit"

.field private static final PACKAGE_NAME_UMS:Ljava/lang/String; = "com.oplus.pantanal.ums"

.field private static final UPLOAD_BUSINESS:Ljava/lang/String; = "content://com.oplus.pantanal.ums.track/business"

.field private static final UPLOAD_TECHNOLOGY:Ljava/lang/String; = "content://com.oplus.pantanal.ums.track/technology"

.field private static final URI_KEY:Ljava/lang/String; = "uri"

.field private static volatile isSupportBatchSubmit:Ljava/lang/Boolean;

.field private static lastGetMataTime:J

.field private static lastUploadTime:J

.field private static final trackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/pantanal/track/TrackUtil;

    invoke-direct {v0}, Lcom/oplus/pantanal/track/TrackUtil;-><init>()V

    sput-object v0, Lcom/oplus/pantanal/track/TrackUtil;->INSTANCE:Lcom/oplus/pantanal/track/TrackUtil;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/pantanal/track/TrackUtil;->trackList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getBooleanMetaValue$default(Lcom/oplus/pantanal/track/TrackUtil;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/pantanal/track/TrackUtil;->getBooleanMetaValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isSupportBatchSubmit(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/oplus/pantanal/track/TrackUtil;->lastGetMataTime:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/oplus/pantanal/track/TrackUtil;->isSupportBatchSubmit:Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_34

    :cond_12
    const/4 v0, 0x0

    const-string v1, "com.oplus.pantanal.ums"

    const-string v2, "isSupportTrackBatchSubmit"

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/oplus/pantanal/track/TrackUtil;->getBooleanMetaValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/oplus/pantanal/track/TrackUtil;->isSupportBatchSubmit:Ljava/lang/Boolean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/oplus/pantanal/track/TrackUtil;->lastGetMataTime:J

    sget-object p0, Lcom/oplus/pantanal/track/TrackUtil;->isSupportBatchSubmit:Ljava/lang/Boolean;

    const-string p1, "isSupportBatchSubmit: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrackUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    sget-object p0, Lcom/oplus/pantanal/track/TrackUtil;->isSupportBatchSubmit:Ljava/lang/Boolean;

    return-object p0
.end method

.method private final upload(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/oplus/pantanal/track/TrackUtil;->isSupportBatchSubmit(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct/range {p0 .. p5}, Lcom/oplus/pantanal/track/TrackUtil;->uploadCache(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_59

    :cond_10
    :try_start_10
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    if-nez p3, :cond_18

    goto :goto_1d

    :cond_18
    const-string v0, "logTag"

    invoke-virtual {p0, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    const-string p3, "eventId"

    invoke-virtual {p0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_49

    if-nez p2, :cond_3a

    goto :goto_59

    :cond_3a
    :try_start_3a
    invoke-virtual {p2, p1, p0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_43
    .catchall {:try_start_3a .. :try_end_3d} :catchall_41

    :try_start_3d
    invoke-virtual {p2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_49

    goto :goto_59

    :catchall_41
    move-exception p0

    goto :goto_45

    :catch_43
    move-exception p0

    :try_start_44
    throw p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_41

    :goto_45
    :try_start_45
    invoke-virtual {p2}, Landroid/content/ContentProviderClient;->close()V

    throw p0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_49} :catch_49

    :catch_49
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "insert error: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrackUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    return-void
.end method

.method public static final uploadBusinessTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/pantanal/track/TrackUtil;->INSTANCE:Lcom/oplus/pantanal/track/TrackUtil;

    const-string v2, "content://com.oplus.pantanal.ums.track/business"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oplus/pantanal/track/TrackUtil;->upload(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final uploadBusinessTrack(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/pantanal/track/TrackUtil;->INSTANCE:Lcom/oplus/pantanal/track/TrackUtil;

    const-string v2, "content://com.oplus.pantanal.ums.track/business"

    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/oplus/pantanal/track/TrackUtil;->upload(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final uploadCache(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/oplus/pantanal/track/TrackUtil;->trackList:Ljava/util/List;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-nez p3, :cond_b

    goto :goto_10

    :cond_b
    const-string v2, "logTag"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    const-string p3, "eventId"

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "uri"

    invoke-virtual {v1, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sget-wide v1, Lcom/oplus/pantanal/track/TrackUtil;->lastUploadTime:J

    sub-long/2addr p3, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p5
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_a0

    const/16 v1, 0x1e

    if-ge p5, v1, :cond_3e

    const-wide/32 v1, 0xea60

    cmp-long p3, p3, v1

    if-gez p3, :cond_3e

    monitor-exit p0

    return-void

    :cond_3e
    :try_start_3e
    const-string p3, "TrackUtil"

    const-string p4, "submit track cache, size: "

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_a0

    :try_start_51
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "content://com.oplus.pantanal.ums.track"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p2
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5f} :catch_83
    .catchall {:try_start_51 .. :try_end_5f} :catchall_a0

    if-nez p2, :cond_62

    goto :goto_93

    :cond_62
    :try_start_62
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Landroid/content/ContentValues;

    invoke-interface {v0, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, [Landroid/content/ContentValues;

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_77} :catch_7d
    .catchall {:try_start_62 .. :try_end_77} :catchall_7b

    :try_start_77
    invoke-virtual {p2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_83
    .catchall {:try_start_77 .. :try_end_7a} :catchall_a0

    goto :goto_93

    :catchall_7b
    move-exception p1

    goto :goto_7f

    :catch_7d
    move-exception p1

    :try_start_7e
    throw p1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7b

    :goto_7f
    :try_start_7f
    invoke-virtual {p2}, Landroid/content/ContentProviderClient;->close()V

    throw p1
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_83} :catch_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_a0

    :catch_83
    move-exception p1

    :try_start_84
    const-string p2, "TrackUtil"

    const-string p3, "insert error: "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_93
    sget-object p1, Lcom/oplus/pantanal/track/TrackUtil;->trackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/oplus/pantanal/track/TrackUtil;->lastUploadTime:J
    :try_end_9e
    .catchall {:try_start_84 .. :try_end_9e} :catchall_a0

    monitor-exit p0

    return-void

    :catchall_a0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static final uploadTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/pantanal/track/TrackUtil;->INSTANCE:Lcom/oplus/pantanal/track/TrackUtil;

    const-string v2, "content://com.oplus.pantanal.ums.track/technology"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oplus/pantanal/track/TrackUtil;->upload(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final uploadTrack(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/pantanal/track/TrackUtil;->INSTANCE:Lcom/oplus/pantanal/track/TrackUtil;

    const-string v2, "content://com.oplus.pantanal.ums.track/technology"

    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/oplus/pantanal/track/TrackUtil;->upload(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getBooleanMetaValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "packageName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "get MetaValue key: "

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TrackUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x80

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2a} :catch_2b

    return p0

    :catch_2b
    move-exception p0

    const-string p1, "getBooleanMetaValue:"

    const-string p2, ", error: "

    invoke-static {p1, p3, p2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p4
.end method
