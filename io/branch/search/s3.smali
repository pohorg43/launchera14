.class public Lio/branch/search/s3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/room/RoomDatabase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;

.field public final c:Landroid/content/Context;

.field public final d:Lio/branch/search/k3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/k3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/branch/search/k3;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/branch/search/k3<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/s3;->c:Landroid/content/Context;

    iput-object p2, p0, Lio/branch/search/s3;->d:Lio/branch/search/k3;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/branch/search/s3;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {p2, p1}, Lio/branch/search/k3;->a(Landroid/content/Context;)Landroidx/room/RoomDatabase;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    sget-object p1, Lio/branch/search/s3$a;->a:Lio/branch/search/s3$a;

    invoke-virtual {p0, p1}, Lio/branch/search/s3;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/z;

    invoke-interface {p2}, Lio/branch/search/k3;->a()Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p3

    iget-object p0, p0, Lio/branch/search/s3;->d:Lio/branch/search/k3;

    invoke-interface {p0}, Lio/branch/search/k3;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 8
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception v0

    iget-object v1, p0, Lio/branch/search/s3;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_12
    iget-object v2, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->close()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1c
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p0

    goto :goto_70

    :catch_1c
    :try_start_1c
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1e
    iget-object v3, p0, Lio/branch/search/s3;->c:Landroid/content/Context;

    iget-object v4, p0, Lio/branch/search/s3;->d:Lio/branch/search/k3;

    invoke-interface {v4}, Lio/branch/search/k3;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lio/branch/search/s3;->d:Lio/branch/search/k3;

    iget-object v5, p0, Lio/branch/search/s3;->c:Landroid/content/Context;

    invoke-interface {v4, v5}, Lio/branch/search/k3;->a(Landroid/content/Context;)Landroidx/room/RoomDatabase;

    move-result-object v4

    iput-object v4, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_1a

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Lio/branch/search/s3;->d:Lio/branch/search/k3;

    invoke-interface {v1}, Lio/branch/search/k3;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Corrupt with "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | close -> "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " delete -> "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_70
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
