.class public final Lz2/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static d:Lm7/s1;


# instance fields
.field public final a:Lm7/j1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.oplus.pantanal.ums.decision/services"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lz2/c;->b:Landroid/net/Uri;

    const-string v0, "content://com.oplus.pantanal.ums.decision/decision_all_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lz2/c;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#entrance_register"

    invoke-static {v0}, Lm7/o2;->b(Ljava/lang/String;)Lm7/j1;

    move-result-object v0

    iput-object v0, p0, Lz2/c;->a:Lm7/j1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    if-eqz p0, :cond_17

    const-string p0, "DecisionDao"

    const-string p1, "entrances is empty,selection return null"

    invoke-static {p0, p1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, ""

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "support_entry & ? = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_47
    const-string p0, "support_entry = 0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/util/Set;)[Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    move v0, p0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_18

    const-string p0, "DecisionDao"

    const-string p1, "entrances is empty,selectionArgs return null"

    invoke-static {p0, p1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3f
    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final c()Landroid/net/Uri;
    .registers 11

    sget-object p0, Le3/a;->c:Le3/a$a;

    sget p0, Le3/a;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "engineVersion : "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DecisionDao"

    invoke-static {v0, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "931000"

    sget-object v0, Lz2/c;->b:Landroid/net/Uri;

    const-string v1, "SERVICE_DECISION_URI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lk3/n;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sget v1, Le3/a;->f:I

    sget-object v2, Lcom/pantanal/server/content/utils/a;->a:Ljava/util/Map;

    const-string v2, "key"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uri"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pantanal/server/content/utils/a;->b(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v4

    invoke-static {v4}, Lcom/pantanal/server/content/utils/a;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v2

    const-string v3, "platformVersion"

    if-nez v2, :cond_50

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string v0, "uri.buildUpon()\n        …rsion.toString()).build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_af

    :cond_50
    if-nez v4, :cond_63

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_83

    :cond_63
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    sget-object v3, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    const-string v1, "builder"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v6, "UTranceCtx"

    invoke-static/range {v3 .. v9}, Lcom/oplus/utrace/sdk/UTraceCompat;->writeToUri$default(Lcom/oplus/utrace/sdk/UTraceCompat;Lcom/oplus/utrace/sdk/UTraceContext;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :goto_83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[appendTraceContextToUri] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", uri:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", resultUri:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTraceUtils"

    invoke-static {v0, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "resultUri"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v1

    :goto_af
    return-object p0
.end method

.method public final d(Ljava/util/Set;)Ljava/util/List;
    .registers 16
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "tranceNode_A_4000"

    const-string v1, "931000"

    const-string v2, "DecisionDao"

    const/4 v3, 0x2

    :try_start_7
    sget-object v4, Le3/a;->c:Le3/a$a;

    invoke-virtual {v4}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_1dd

    const-string v6, "SERVICE_DECISION_URI"

    const/4 v7, 0x0

    if-nez v5, :cond_14

    move-object v5, v7

    goto :goto_36

    :cond_14
    :try_start_14
    const-string v8, "get IUserContext,call DecisionDao query() ,userId "

    invoke-interface {v5}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lz2/c;->b:Landroid/net/Uri;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lk3/n;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/pantanal/server/content/utils/a;->a(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    :goto_36
    if-nez v5, :cond_56

    invoke-virtual {v4}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lz2/c;->b:Landroid/net/Uri;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/pantanal/server/content/utils/a;->a(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    if-nez v5, :cond_51

    move-object v5, v7

    goto :goto_56

    :cond_51
    const-string v4, "get Context,call DecisionDao query()"

    invoke-static {v2, v4}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_56} :catch_1dd

    :cond_56
    :goto_56
    if-nez v5, :cond_59

    goto :goto_71

    :cond_59
    :try_start_59
    invoke-virtual {p0}, Lz2/c;->c()Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, p1}, Lz2/c;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p1}, Lz2/c;->b(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_6c
    .catchall {:try_start_59 .. :try_end_6c} :catchall_1d6

    if-nez v4, :cond_7f

    :try_start_6e
    invoke-static {v5, v7}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    :goto_71
    const-string p1, "query, client or cursor is null"

    invoke-static {v2, p1}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz2/c;->f()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7e} :catch_1dd

    return-object p0

    :cond_7f
    :try_start_7f
    const-string p0, "query , cursor count: "

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_95
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_99
    .catchall {:try_start_7f .. :try_end_99} :catchall_1cf

    if-eqz v6, :cond_f0

    :try_start_9b
    invoke-static {v4}, Lk3/k;->a(Landroid/database/Cursor;)Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query entrance("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") info:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "[intent_trace] staticEntrance_get_intent_trace_context_from_sms is:"

    invoke-virtual {v6}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getUtraceContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getUtraceContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v8

    if-nez v8, :cond_d2

    goto :goto_db

    :cond_d2
    const v9, 0xfa00

    invoke-static {v0, v9, v8}, Lk3/m;->e(Ljava/lang/String;ILcom/oplus/utrace/sdk/UTraceContext;)V

    invoke-static {v0, v7, v3}, Lk3/m;->a(Ljava/lang/String;Lcom/oplus/utrace/sdk/CompletionType;I)V

    :goto_db
    const-string v8, "[intent_trace] staticEntrance_send_intent_trace_context_to_SeedlingSDK is:"

    invoke-virtual {v6}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getUtraceContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v6

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_e8} :catch_e9
    .catchall {:try_start_9b .. :try_end_e8} :catchall_1cf

    goto :goto_95

    :catch_e9
    move-exception v6

    :try_start_ea
    const-string v8, "get item from cursor error, abandon this item"

    invoke-static {v2, v8, v6}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_95

    :cond_f0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query finished, list size： "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {p0, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_115
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_129

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v8}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_115

    :cond_129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lf3/a;->a:Lf3/a;

    sget-boolean p1, Lf3/a;->b:Z

    if-eqz p1, :cond_1c8

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query from ums, serviceInfo:[serviceId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",supportCardSizes="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",score="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getScore()F

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",supportEntrance="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportEntrance()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",timeStamp="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getTimeStamp()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",subdomain="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSubdomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",useTemplate="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getUseTemplate()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",serviceType="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceType()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",versionCode="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getVersionCode()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c6
    .catchall {:try_start_ea .. :try_end_1c6} :catchall_1cf

    goto/16 :goto_13d

    :cond_1c8
    :try_start_1c8
    invoke-static {v4, v7}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1cb
    .catchall {:try_start_1c8 .. :try_end_1cb} :catchall_1d6

    :try_start_1cb
    invoke-static {v5, v7}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1ce} :catch_1dd

    return-object p0

    :catchall_1cf
    move-exception p0

    :try_start_1d0
    throw p0
    :try_end_1d1
    .catchall {:try_start_1d0 .. :try_end_1d1} :catchall_1d1

    :catchall_1d1
    move-exception p1

    :try_start_1d2
    invoke-static {v4, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1d6
    .catchall {:try_start_1d2 .. :try_end_1d6} :catchall_1d6

    :catchall_1d6
    move-exception p0

    :try_start_1d7
    throw p0
    :try_end_1d8
    .catchall {:try_start_1d7 .. :try_end_1d8} :catchall_1d8

    :catchall_1d8
    move-exception p1

    :try_start_1d9
    invoke-static {v5, p0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1dd} :catch_1dd

    :catch_1dd
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "query error, "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/pantanal/server/content/utils/a$a;->a:Lcom/pantanal/server/content/utils/a$a;

    const v0, 0x8e0f31

    sget-object v2, Lcom/pantanal/server/content/utils/a;->a:Ljava/util/Map;

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "errorType"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "exception"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/pantanal/server/content/utils/a;->b(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v2

    invoke-static {v2}, Lcom/pantanal/server/content/utils/a;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v4

    if-nez v4, :cond_20d

    goto/16 :goto_28e

    :cond_20d
    const-string v4, "CAUGHT"

    const-string v5, ":"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    if-lt v6, v3, :cond_262

    const/4 v3, 0x1

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/line:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "):"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_262
    if-nez v2, :cond_265

    goto :goto_268

    :cond_265
    invoke-static {v2, v0, v4}, Lcom/oplus/utrace/sdk/UTrace;->error(Lcom/oplus/utrace/sdk/UTraceContext;ILjava/lang/String;)V

    :goto_268
    const-string p0, "[error from catch] key:"

    const-string v3, ", errorCode:"

    const-string v5, " errorType:"

    invoke-static {p0, v1, v3, v0, v5}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", innerCtx:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", errorInfo:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTraceUtils"

    invoke-static {p1, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final e(Landroid/database/ContentObserver;)V
    .registers 8

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lz2/c;->a:Lm7/j1;

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    new-instance v3, Lz2/c$a;

    const/4 p0, 0x0

    invoke-direct {v3, p1, p0}, Lz2/c$a;-><init>(Landroid/database/ContentObserver;Ll4/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    sput-object p0, Lz2/c;->d:Lm7/s1;

    return-void
.end method

.method public final f()V
    .registers 10

    sget-object p0, Lcom/pantanal/server/content/utils/a$a;->d:Lcom/pantanal/server/content/utils/a$a;

    sget-object v0, Lcom/pantanal/server/content/utils/a;->a:Ljava/util/Map;

    const-string v0, ""

    const v1, 0x8e0f32

    const-string v2, "931000"

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "errorType"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "query, client or cursor is null"

    const-string v4, "errorInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "methodName"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "className"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/pantanal/server/content/utils/a;->b(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v4

    invoke-static {v4}, Lcom/pantanal/server/content/utils/a;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v5

    if-nez v5, :cond_31

    goto :goto_8c

    :cond_31
    sget-object v5, Lcom/pantanal/server/content/utils/a$b;->a:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x3a

    const-string v8, "IPC"

    if-ne v5, v6, :cond_5c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    :cond_5c
    invoke-static {v8, v7, v3}, La/a;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_60
    if-nez v4, :cond_63

    goto :goto_66

    :cond_63
    invoke-static {v4, v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->error(Lcom/oplus/utrace/sdk/UTraceContext;ILjava/lang/String;)V

    :goto_66
    const-string v0, "[error] key:"

    const-string v5, ", errorCode:"

    const-string v6, ", errorType:"

    invoke-static {v0, v2, v5, v1, v6}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", innerCtx:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", errorInfo:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTraceUtils"

    invoke-static {v0, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8c
    return-void
.end method
