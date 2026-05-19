.class public Lx6/e$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx6/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx6/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lx6/e;

.field public final b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/Object;


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

    if-eqz p1, :cond_16

    if-eqz p2, :cond_11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lx6/e$n;->a:Lx6/e$n;

    iput-object v0, p0, Lx6/e$h;->c:Ljava/lang/Object;

    iput-object p1, p0, Lx6/e$h;->a:Lx6/e;

    iput-object p2, p0, Lx6/e$h;->b:Lkotlin/jvm/functions/Function0;

    return-void

    :cond_11
    const/4 p0, 0x1

    invoke-static {p0}, Lx6/e$h;->a(I)V

    throw v0

    :cond_16
    const/4 p0, 0x0

    invoke-static {p0}, Lx6/e$h;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .registers 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    if-eq p0, v1, :cond_11

    if-eq p0, v0, :cond_11

    move v3, v0

    goto :goto_12

    :cond_11
    move v3, v1

    :goto_12
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_26

    if-eq p0, v1, :cond_23

    if-eq p0, v0, :cond_23

    const-string v7, "storageManager"

    aput-object v7, v3, v5

    goto :goto_2a

    :cond_23
    aput-object v4, v3, v5

    goto :goto_2a

    :cond_26
    const-string v7, "computable"

    aput-object v7, v3, v5

    :goto_2a
    if-eq p0, v1, :cond_36

    if-eq p0, v0, :cond_31

    aput-object v4, v3, v6

    goto :goto_3a

    :cond_31
    const-string v4, "renderDebugInformation"

    aput-object v4, v3, v6

    goto :goto_3a

    :cond_36
    const-string v4, "recursionDetected"

    aput-object v4, v3, v6

    :goto_3a
    if-eq p0, v1, :cond_42

    if-eq p0, v0, :cond_42

    const-string v4, "<init>"

    aput-object v4, v3, v1

    :cond_42
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_50

    if-eq p0, v0, :cond_50

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_55

    :cond_50
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_55
    throw p0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Z)Lx6/e$o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lx6/e$o<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lx6/e$h;->a:Lx6/e;

    const-string p1, "in a lazy value"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lx6/e;->k(Ljava/lang/String;Ljava/lang/Object;)Lx6/e$o;

    move-result-object p0

    if-eqz p0, :cond_c

    return-object p0

    :cond_c
    const/4 p0, 0x2

    invoke-static {p0}, Lx6/e$h;->a(I)V

    throw v0
.end method

.method public invoke()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lx6/e$n;->c:Lx6/e$n;

    sget-object v1, Lx6/e$n;->b:Lx6/e$n;

    iget-object v2, p0, Lx6/e$h;->c:Ljava/lang/Object;

    instance-of v3, v2, Lx6/e$n;

    if-nez v3, :cond_e

    invoke-static {v2}, Li7/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_e
    iget-object v2, p0, Lx6/e$h;->a:Lx6/e;

    iget-object v2, v2, Lx6/e;->a:Lx6/k;

    invoke-interface {v2}, Lx6/k;->lock()V

    :try_start_15
    iget-object v2, p0, Lx6/e$h;->c:Ljava/lang/Object;

    instance-of v3, v2, Lx6/e$n;

    if-nez v3, :cond_26

    invoke-static {v2}, Li7/f;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_82

    iget-object p0, p0, Lx6/e$h;->a:Lx6/e;

    iget-object p0, p0, Lx6/e;->a:Lx6/k;

    invoke-interface {p0}, Lx6/k;->unlock()V

    return-object v2

    :cond_26
    if-ne v2, v1, :cond_36

    :try_start_28
    iput-object v0, p0, Lx6/e$h;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lx6/e$h;->c(Z)Lx6/e$o;

    move-result-object v3

    iget-boolean v4, v3, Lx6/e$o;->b:Z

    if-nez v4, :cond_36

    iget-object v0, v3, Lx6/e$o;->a:Ljava/lang/Object;

    goto :goto_51

    :cond_36
    if-ne v2, v0, :cond_44

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lx6/e$h;->c(Z)Lx6/e$o;

    move-result-object v0

    iget-boolean v2, v0, Lx6/e$o;->b:Z

    if-nez v2, :cond_44

    iget-object v0, v0, Lx6/e$o;->a:Ljava/lang/Object;

    goto :goto_51

    :cond_44
    iput-object v1, p0, Lx6/e$h;->c:Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_82

    :try_start_46
    iget-object v0, p0, Lx6/e$h;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx6/e$h;->b(Ljava/lang/Object;)V

    iput-object v0, p0, Lx6/e$h;->c:Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_59

    :goto_51
    iget-object p0, p0, Lx6/e$h;->a:Lx6/e;

    iget-object p0, p0, Lx6/e;->a:Lx6/k;

    invoke-interface {p0}, Lx6/k;->unlock()V

    return-object v0

    :catchall_59
    move-exception v0

    :try_start_5a
    invoke-static {v0}, Ln4/f;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7b

    iget-object v2, p0, Lx6/e$h;->c:Ljava/lang/Object;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_6c

    new-instance v1, Li7/f$b;

    invoke-direct {v1, v0, v3}, Li7/f$b;-><init>(Ljava/lang/Throwable;Li7/f$a;)V

    iput-object v1, p0, Lx6/e$h;->c:Ljava/lang/Object;

    :cond_6c
    iget-object v1, p0, Lx6/e$h;->a:Lx6/e;

    iget-object v1, v1, Lx6/e;->b:Lx6/e$f;

    check-cast v1, Lx6/e$f$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "e"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_7b
    sget-object v1, Lx6/e$n;->a:Lx6/e$n;

    iput-object v1, p0, Lx6/e$h;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_82
    .catchall {:try_start_5a .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v0

    iget-object p0, p0, Lx6/e$h;->a:Lx6/e;

    iget-object p0, p0, Lx6/e;->a:Lx6/k;

    invoke-interface {p0}, Lx6/k;->unlock()V

    throw v0
.end method
