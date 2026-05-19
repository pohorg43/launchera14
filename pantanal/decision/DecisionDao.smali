.class public final Lpantanal/decision/DecisionDao;
.super Lpantanal/content/base/IServiceDao;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/decision/DecisionDao$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpantanal/content/base/IServiceDao<",
        "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/decision/DecisionDao$Companion;

.field private static final TAG:Ljava/lang/String; = "DecisionDao"


# instance fields
.field private mUtraceContext:Lcom/oplus/utrace/sdk/UTraceContext;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/decision/DecisionDao$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/decision/DecisionDao$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/decision/DecisionDao;->Companion:Lpantanal/decision/DecisionDao$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lpantanal/content/base/IServiceDao;-><init>()V

    return-void
.end method

.method public static synthetic a(ILpantanal/decision/DecisionDao;Lkotlin/jvm/functions/Function1;Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lpantanal/decision/DecisionDao;->registerObserver$lambda$0(ILpantanal/decision/DecisionDao;Lkotlin/jvm/functions/Function1;Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V

    return-void
.end method

.method private static final registerObserver$lambda$0(ILpantanal/decision/DecisionDao;Lkotlin/jvm/functions/Function1;Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$observer"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "newList"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ly8/c;->a:Ly8/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerObserver, receive new list from staic sdk,list size = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",parentCtx="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, "DecisionDao"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf8

    const/4 v15, 0x0

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v3, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v3}, Lz8/f$a;->a()Lz8/f;

    move-result-object v3

    move/from16 v5, p0

    invoke-virtual {v3, v5}, Lz8/f;->d(I)Lz8/e;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lz8/e;->m(I)V

    iput-object v2, v0, Lpantanal/decision/DecisionDao;->mUtraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-interface/range {p2 .. p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAllList()Ljava/util/List;
    .registers 14
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

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "DecisionDao"

    const-string v2, "getAllList begin"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf8

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Le3/a;->c:Le3/a$a;

    invoke-virtual {p0}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    sget-object v0, Lz2/a;->b:Lz2/a;

    invoke-virtual {v0}, Lz2/a;->b()Lz2/c;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DecisionDao"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_27
    invoke-virtual {p0}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v3, Lz2/c;->c:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_cb

    const/4 v8, 0x0

    if-nez p0, :cond_3a

    move-object v2, v8

    goto :goto_4b

    :cond_3a
    :try_start_3a
    const-string v2, "getAllDecisionData query."

    invoke-static {v0, v2}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_c4

    :try_start_48
    invoke-static {p0, v8}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    :goto_4b
    if-nez v2, :cond_4e

    goto :goto_7d

    :cond_4e
    :goto_4e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_cb

    if-eqz p0, :cond_7b

    :try_start_54
    invoke-static {v2}, Lk3/k;->a(Landroid/database/Cursor;)Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    move-result-object p0

    const-string v3, "[queryAll] serviceInfo:"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_69
    .catchall {:try_start_54 .. :try_end_69} :catchall_6a

    goto :goto_6f

    :catchall_6a
    move-exception p0

    :try_start_6b
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_6f
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4e

    const-string v3, "queryAll: get item from cursor error, abandon this item"

    invoke-static {v0, v3, p0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4e

    :cond_7b
    sget-object v8, Lh4/z;->a:Lh4/z;

    :goto_7d
    if-nez v8, :cond_84

    const-string p0, "queryAll: the cursor is null"

    invoke-static {v0, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    const-string p0, "queryAll finished, list size： "

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "queryAll from ums, serviceInfo: "

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_ba
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c3
    .catchall {:try_start_6b .. :try_end_c3} :catchall_cb

    goto :goto_d0

    :catchall_c4
    move-exception v2

    :try_start_c5
    throw v2
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c6

    :catchall_c6
    move-exception v3

    :try_start_c7
    invoke-static {p0, v2}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_cb

    :catchall_cb
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_d0
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_df

    const-string v2, "queryAll error: "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_df
    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-string v0, "getAllList from static sdk end,list size = "

    invoke-static {v0, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf8

    const/4 v12, 0x0

    const-string v3, "DecisionDao"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1
.end method

.method public getCurrentList(Ljava/util/Set;I)Ljava/util/List;
    .registers 16
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "entranceTypeSet"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentList begin,recomdType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",entranceSet="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionDao"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf8

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Le3/a;->c:Le3/a$a;

    invoke-virtual {v0}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object v0

    check-cast v0, Le3/a;

    const-string v1, "entranceType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getCurRecommendList "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "StaticSdk"

    invoke-static {v2, v1}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Le3/a;->b(Ljava/util/Set;IZ)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "getCurrentList from static sdk end,recomdType = "

    const-string v2, ",list size = "

    invoke-static {v1, p2, v2, v0, v11}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionDao"

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v12
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 1

    const-string p0, "DecisionDao"

    return-object p0
.end method

.method public getUtraceContext()Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionDao;->mUtraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

    return-object p0
.end method

.method public final queryRecommendSceneList(II)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "queryRecommendSceneList to staticSdk begin,recmdType = "

    const-string v1, ",entranceType="

    invoke-static {p0, p2, v1, p1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionDao"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf8

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public registerObserver(ILkotlin/jvm/functions/Function1;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;",
            "Lh4/z;",
            ">;I)V"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "observer"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v3}, Lz8/f$a;->a()Lz8/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lz8/f;->d(I)Lz8/e;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lz8/e;->k(I)Lz8/e;

    sget-object v5, Ly8/c;->a:Ly8/c;

    const-string v3, "registerObserver,recomdType = "

    const-string v4, ",entrance = "

    invoke-static {v3, v2, v4, v0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v6, "DecisionDao"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf8

    const/4 v15, 0x0

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v3, Le3/a;->c:Le3/a$a;

    invoke-virtual {v3}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object v3

    new-instance v4, Lpantanal/decision/b;

    move-object/from16 v5, p0

    invoke-direct {v4, v0, v5, v1}, Lpantanal/decision/b;-><init>(ILpantanal/decision/DecisionDao;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Le3/a;

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v2, v1, v4}, Le3/a;->h(IIZLcom/pantanal/server/content/recommendlist/ListObserver;)V

    return-void
.end method

.method public final registerSceneListObserver(ILpantanal/decision/PantaSceneListObserver;)V
    .registers 14

    const-string p0, "sceneListObserver"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSceneListObserver to staticSdk begin,recomdType = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",sceneListObserver="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionDao"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf8

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public unregisterObserver(Lkotlin/jvm/functions/Function1;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;",
            "Lh4/z;",
            ">;I)V"
        }
    .end annotation

    const-string p0, "observer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "unregisterObserver ,recomdType = "

    invoke-static {p0, p2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionDao"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf8

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Le3/a;->c:Le3/a$a;

    invoke-virtual {p0}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "unregister "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "StaticSdk"

    invoke-static {p1, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x4

    if-ne p2, p0, :cond_38

    sget-object p0, La3/a;->b:La3/a;

    invoke-virtual {p0}, La3/a;->c()V

    goto :goto_64

    :cond_38
    sget-object p0, Lz2/a;->b:Lz2/a;

    invoke-virtual {p0}, Lz2/a;->e()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string p2, "call unRegister(),registered entrance:"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecisionCenter"

    invoke-static {p2, p1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz2/a;->e()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lz2/a;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lz2/a;->b()Lz2/c;

    move-result-object p0

    sget-object p1, Lz2/a;->h:Lz2/a$b;

    invoke-virtual {p0, p1}, Lz2/c;->e(Landroid/database/ContentObserver;)V

    :goto_64
    return-void
.end method

.method public final unregisterSceneListObserver(ILpantanal/decision/PantaSceneListObserver;)V
    .registers 14

    const-string p0, "sceneListObserver"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterSceneListObserver to staticSdk begin,recmdType = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",sceneListObserver="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionDao"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf8

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
