.class public abstract Lx6/e$i;
.super Lx6/e$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lx6/e$h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile d:Lz0/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/t;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx6/e;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/e;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    if-eqz p2, :cond_b

    invoke-direct {p0, p1, p2}, Lx6/e$h;-><init>(Lx6/e;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lx6/e$i;->d:Lz0/t;

    return-void

    :cond_b
    const/4 p0, 0x1

    invoke-static {p0}, Lx6/e$i;->a(I)V

    throw v0

    :cond_10
    const/4 p0, 0x0

    invoke-static {p0}, Lx6/e$i;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "storageManager"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "computable"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "<init>"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lz0/t;

    invoke-direct {v0, p1}, Lz0/t;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lx6/e$i;->d:Lz0/t;

    const/4 v0, 0x0

    :try_start_8
    move-object v1, p0

    check-cast v1, Lx6/e$c;

    if-eqz p1, :cond_17

    iget-object v1, v1, Lx6/e$c;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_15

    iput-object v0, p0, Lx6/e$i;->d:Lz0/t;

    return-void

    :catchall_15
    move-exception p1

    goto :goto_1c

    :cond_17
    const/4 p1, 0x2

    :try_start_18
    invoke-static {p1}, Lx6/e$c;->a(I)V

    throw v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_15

    :goto_1c
    iput-object v0, p0, Lx6/e$i;->d:Lz0/t;

    throw p1
.end method

.method public invoke()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lx6/e$i;->d:Lz0/t;

    if-eqz v0, :cond_2e

    iget-object v1, v0, Lz0/t;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v4

    :goto_13
    if-eqz v1, :cond_2e

    iget-object p0, v0, Lz0/t;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne p0, v1, :cond_20

    goto :goto_21

    :cond_20
    move v3, v4

    :goto_21
    if-eqz v3, :cond_26

    iget-object p0, v0, Lz0/t;->a:Ljava/lang/Object;

    return-object p0

    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No value in this thread (hasValue should be checked before)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    invoke-super {p0}, Lx6/e$h;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
