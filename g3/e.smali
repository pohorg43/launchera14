.class public abstract Lg3/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lm7/s1;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Landroid/net/Uri;
.end method

.method public final d()Ljava/util/List;
    .registers 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Le3/a;->c:Le3/a$a;

    invoke-virtual {v0}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v1

    invoke-virtual {p0}, Lg3/e;->c()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_10

    move-object v5, v2

    move-object v1, v3

    goto :goto_22

    :cond_10
    invoke-virtual {p0}, Lg3/e;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "get IUserContext,call IServiceDao query()"

    invoke-static {v4, v5}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lk3/n;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    move-object v5, v2

    :goto_22
    if-nez v1, :cond_41

    invoke-virtual {v0}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lg3/e;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_38

    move-object v1, v3

    goto :goto_41

    :cond_38
    invoke-virtual {p0}, Lg3/e;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "get Context,call IServiceDao query()"

    invoke-static {v0, v2}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_41} :catch_d6
    .catchall {:try_start_0 .. :try_end_41} :catchall_be

    :cond_41
    :goto_41
    if-nez v1, :cond_44

    goto :goto_52

    :cond_44
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    :try_start_49
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_b7

    if-nez v0, :cond_61

    :try_start_4f
    invoke-static {v1, v3}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    :goto_52
    invoke-virtual {p0}, Lg3/e;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "query, client or cursor is null"

    invoke-static {v0, v1}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_60
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_60} :catch_d6
    .catchall {:try_start_4f .. :try_end_60} :catchall_be

    return-object v0

    :cond_61
    :try_start_61
    invoke-virtual {p0}, Lg3/e;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "query , cursor count: "

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_7b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_7f
    .catchall {:try_start_61 .. :try_end_7f} :catchall_b0

    if-eqz v4, :cond_94

    :try_start_81
    invoke-virtual {p0, v0}, Lg3/e;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_88} :catch_89
    .catchall {:try_start_81 .. :try_end_88} :catchall_b0

    goto :goto_7b

    :catch_89
    move-exception v4

    :try_start_8a
    invoke-virtual {p0}, Lg3/e;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "get item from cursor error, abandon this item"

    invoke-static {v5, v6, v4}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7b

    :cond_94
    invoke-virtual {p0}, Lg3/e;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "query finished, list size： "

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_8a .. :try_end_a9} :catchall_b0

    :try_start_a9
    invoke-static {v0, v3}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_b7

    :try_start_ac
    invoke-static {v1, v3}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_af
    .catch Ljava/lang/SecurityException; {:try_start_ac .. :try_end_af} :catch_d6
    .catchall {:try_start_ac .. :try_end_af} :catchall_be

    return-object v2

    :catchall_b0
    move-exception v2

    :try_start_b1
    throw v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception v3

    :try_start_b3
    invoke-static {v0, v2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_b7

    :catchall_b7
    move-exception v0

    :try_start_b8
    throw v0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b9

    :catchall_b9
    move-exception v2

    :try_start_ba
    invoke-static {v1, v0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_be
    .catch Ljava/lang/SecurityException; {:try_start_ba .. :try_end_be} :catch_d6
    .catchall {:try_start_ba .. :try_end_be} :catchall_be

    :catchall_be
    move-exception v0

    invoke-virtual {p0}, Lg3/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "query error,info "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :catch_d6
    move-exception v0

    invoke-virtual {p0}, Lg3/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "query error,SecurityException info "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
