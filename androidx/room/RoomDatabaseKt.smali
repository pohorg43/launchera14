.class public final Landroidx/room/RoomDatabaseKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final synthetic access$acquireTransactionThread(Ljava/util/concurrent/Executor;Lm7/s1;Ll4/d;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/room/RoomDatabaseKt;->acquireTransactionThread(Ljava/util/concurrent/Executor;Lm7/s1;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createTransactionContext(Landroidx/room/RoomDatabase;Ll4/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Landroidx/room/RoomDatabaseKt;->createTransactionContext(Landroidx/room/RoomDatabase;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final acquireTransactionThread(Ljava/util/concurrent/Executor;Lm7/s1;Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lm7/s1;",
            "Ll4/d<",
            "-",
            "Ll4/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lm7/n;

    invoke-static {p2}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {v0}, Lm7/n;->w()V

    new-instance v1, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$1;

    invoke-direct {v1, p1}, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$1;-><init>(Lm7/s1;)V

    invoke-interface {v0, v1}, Lm7/l;->h(Lkotlin/jvm/functions/Function1;)V

    :try_start_15
    new-instance v1, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;

    invoke-direct {v1, v0, p1}, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;-><init>(Lm7/l;Lm7/s1;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_29

    :catch_1e
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to acquire a thread to perform the database transaction."

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, p1}, Lm7/l;->m(Ljava/lang/Throwable;)Z

    :goto_29
    invoke-virtual {v0}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_36

    const-string p1, "frame"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_36
    return-object p0
.end method

.method private static final createTransactionContext(Landroidx/room/RoomDatabase;Ll4/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Ll4/d<",
            "-",
            "Ll4/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;

    iget v1, v0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;

    invoke-direct {v0, p1}, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;-><init>(Ll4/d;)V

    :goto_18
    iget-object p1, v0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->result:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p0, v0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lm7/v;

    iget-object v0, v0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_73

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1, v3, p1}, Li5/j;->a(Lm7/s1;ILjava/lang/Object;)Lm7/v;

    move-result-object p1

    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object v2

    sget v4, Lm7/s1;->L:I

    sget-object v4, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {v2, v4}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v2

    check-cast v2, Lm7/s1;

    if-nez v2, :cond_50

    goto :goto_58

    :cond_50
    new-instance v4, Landroidx/room/RoomDatabaseKt$createTransactionContext$2;

    invoke-direct {v4, p1}, Landroidx/room/RoomDatabaseKt$createTransactionContext$2;-><init>(Lm7/v;)V

    invoke-interface {v2, v4}, Lm7/s1;->j(Lkotlin/jvm/functions/Function1;)Lm7/a1;

    :goto_58
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-string/jumbo v4, "transactionExecutor"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/room/RoomDatabaseKt$createTransactionContext$1;->label:I

    invoke-static {v2, p1, v0}, Landroidx/room/RoomDatabaseKt;->acquireTransactionThread(Ljava/util/concurrent/Executor;Lm7/s1;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6f

    return-object v1

    :cond_6f
    move-object v5, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v5

    :goto_73
    check-cast p1, Ll4/e;

    new-instance v1, Landroidx/room/TransactionElement;

    invoke-direct {v1, p0, p1}, Landroidx/room/TransactionElement;-><init>(Lm7/s1;Ll4/e;)V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getSuspendingTransactionId()Ljava/lang/ThreadLocal;

    move-result-object v0

    const-string/jumbo v2, "suspendingTransactionId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance p0, Lr7/i0;

    invoke-direct {p0, v2, v0}, Lr7/i0;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    invoke-interface {p1, v1}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p1

    invoke-interface {p1, p0}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public static final withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Ll4/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ll4/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/room/RoomDatabaseKt$withTransaction$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;

    iget v1, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;

    invoke-direct {v0, p2}, Landroidx/room/RoomDatabaseKt$withTransaction$1;-><init>(Ll4/d;)V

    :goto_18
    iget-object p2, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->result:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_42

    if-eq v2, v4, :cond_33

    if-ne v2, v3, :cond_2b

    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_7c

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    iget-object p0, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_68

    :cond_42
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object p2

    sget-object v2, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    invoke-interface {p2, v2}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p2

    check-cast p2, Landroidx/room/TransactionElement;

    if-nez p2, :cond_55

    move-object p2, v5

    goto :goto_59

    :cond_55
    invoke-virtual {p2}, Landroidx/room/TransactionElement;->getTransactionDispatcher$room_ktx_release()Ll4/e;

    move-result-object p2

    :goto_59
    if-nez p2, :cond_6a

    iput-object p0, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->label:I

    invoke-static {p0, v0}, Landroidx/room/RoomDatabaseKt;->createTransactionContext(Landroidx/room/RoomDatabase;Ll4/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_68

    return-object v1

    :cond_68
    :goto_68
    check-cast p2, Ll4/f;

    :cond_6a
    new-instance v2, Landroidx/room/RoomDatabaseKt$withTransaction$2;

    invoke-direct {v2, p0, p1, v5}, Landroidx/room/RoomDatabaseKt$withTransaction$2;-><init>(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Ll4/d;)V

    iput-object v5, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->label:I

    invoke-static {p2, v2, v0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7c

    return-object v1

    :cond_7c
    :goto_7c
    return-object p2
.end method
