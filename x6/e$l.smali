.class public Lx6/e$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx6/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx6/h<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lx6/e;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx6/e;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/e;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_16

    if-eqz p3, :cond_11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx6/e$l;->a:Lx6/e;

    iput-object p2, p0, Lx6/e$l;->b:Ljava/util/concurrent/ConcurrentMap;

    iput-object p3, p0, Lx6/e$l;->c:Lkotlin/jvm/functions/Function1;

    return-void

    :cond_11
    const/4 p0, 0x2

    invoke-static {p0}, Lx6/e$l;->a(I)V

    throw v0

    :cond_16
    const/4 p0, 0x1

    invoke-static {p0}, Lx6/e$l;->a(I)V

    throw v0

    :cond_1b
    const/4 p0, 0x0

    invoke-static {p0}, Lx6/e$l;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .registers 10

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    const/4 v3, 0x2

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_12

    move v4, v1

    goto :goto_13

    :cond_12
    move v4, v3

    :goto_13
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p0, v7, :cond_2e

    if-eq p0, v3, :cond_29

    if-eq p0, v1, :cond_26

    if-eq p0, v0, :cond_26

    const-string v8, "storageManager"

    aput-object v8, v4, v6

    goto :goto_32

    :cond_26
    aput-object v5, v4, v6

    goto :goto_32

    :cond_29
    const-string v8, "compute"

    aput-object v8, v4, v6

    goto :goto_32

    :cond_2e
    const-string v8, "map"

    aput-object v8, v4, v6

    :goto_32
    if-eq p0, v1, :cond_3e

    if-eq p0, v0, :cond_39

    aput-object v5, v4, v7

    goto :goto_42

    :cond_39
    const-string v5, "raceCondition"

    aput-object v5, v4, v7

    goto :goto_42

    :cond_3e
    const-string v5, "recursionDetected"

    aput-object v5, v4, v7

    :goto_42
    if-eq p0, v1, :cond_4a

    if-eq p0, v0, :cond_4a

    const-string v5, "<init>"

    aput-object v5, v4, v3

    :cond_4a
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_58

    if-eq p0, v0, :cond_58

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5d

    :cond_58
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5d
    throw p0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Race condition detected on input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Old value is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " under "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx6/e$l;->a:Lx6/e;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lx6/e;->l(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    sget-object v0, Lx6/e$n;->c:Lx6/e$n;

    sget-object v1, Lx6/e$n;->b:Lx6/e$n;

    iget-object v2, p0, Lx6/e$l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    if-eq v2, v1, :cond_13

    invoke-static {v2}, Li7/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    iget-object v2, p0, Lx6/e$l;->a:Lx6/e;

    iget-object v2, v2, Lx6/e;->a:Lx6/k;

    invoke-interface {v2}, Lx6/k;->lock()V

    :try_start_1a
    iget-object v2, p0, Lx6/e$l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_c7

    const/4 v3, 0x3

    const-string v4, ""

    const/4 v5, 0x0

    if-ne v2, v1, :cond_3b

    :try_start_26
    iget-object v2, p0, Lx6/e$l;->a:Lx6/e;

    invoke-virtual {v2, v4, p1}, Lx6/e;->k(Ljava/lang/String;Ljava/lang/Object;)Lx6/e$o;

    move-result-object v2

    if-eqz v2, :cond_37

    iget-boolean v6, v2, Lx6/e$o;->b:Z

    if-nez v6, :cond_35

    iget-object p1, v2, Lx6/e$o;->a:Ljava/lang/Object;

    goto :goto_56

    :cond_35
    move-object v2, v0

    goto :goto_3b

    :cond_37
    invoke-static {v3}, Lx6/e$l;->a(I)V

    throw v5

    :cond_3b
    :goto_3b
    if-ne v2, v0, :cond_50

    iget-object v0, p0, Lx6/e$l;->a:Lx6/e;

    invoke-virtual {v0, v4, p1}, Lx6/e;->k(Ljava/lang/String;Ljava/lang/Object;)Lx6/e$o;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-boolean v3, v0, Lx6/e$o;->b:Z

    if-nez v3, :cond_50

    iget-object p1, v0, Lx6/e$o;->a:Ljava/lang/Object;

    goto :goto_56

    :cond_4c
    invoke-static {v3}, Lx6/e$l;->a(I)V

    throw v5

    :cond_50
    if-eqz v2, :cond_5e

    invoke-static {v2}, Li7/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_56
    .catchall {:try_start_26 .. :try_end_56} :catchall_c7

    :goto_56
    iget-object p0, p0, Lx6/e$l;->a:Lx6/e;

    iget-object p0, p0, Lx6/e;->a:Lx6/k;

    invoke-interface {p0}, Lx6/k;->unlock()V

    return-object p1

    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lx6/e$l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lx6/e$l;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lx6/e$l;->b:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_70

    sget-object v3, Li7/f;->a:Ljava/lang/Object;

    goto :goto_71

    :cond_70
    move-object v3, v0

    :goto_71
    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_75
    .catchall {:try_start_5e .. :try_end_75} :catchall_86

    if-ne v2, v1, :cond_7f

    iget-object p0, p0, Lx6/e$l;->a:Lx6/e;

    iget-object p0, p0, Lx6/e;->a:Lx6/k;

    invoke-interface {p0}, Lx6/k;->unlock()V

    return-object v0

    :cond_7f
    :try_start_7f
    invoke-virtual {p0, p1, v2}, Lx6/e$l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_86

    :try_start_83
    throw v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception v2

    goto :goto_89

    :catchall_86
    move-exception v0

    move-object v2, v0

    move-object v0, v5

    :goto_89
    :try_start_89
    invoke-static {v2}, Ln4/f;->b(Ljava/lang/Throwable;)Z

    move-result v3
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_c7

    if-nez v3, :cond_bf

    const-string v3, "e"

    if-eq v2, v0, :cond_b2

    :try_start_93
    iget-object v0, p0, Lx6/e$l;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Li7/f$b;

    invoke-direct {v4, v2, v5}, Li7/f$b;-><init>(Ljava/lang/Throwable;Li7/f$a;)V

    invoke-interface {v0, p1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_a5

    invoke-virtual {p0, p1, v0}, Lx6/e$l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    :cond_a5
    iget-object p1, p0, Lx6/e$l;->a:Lx6/e;

    iget-object p1, p1, Lx6/e;->b:Lx6/e$f;

    check-cast p1, Lx6/e$f$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_b2
    iget-object p1, p0, Lx6/e$l;->a:Lx6/e;

    iget-object p1, p1, Lx6/e;->b:Lx6/e$f;

    check-cast p1, Lx6/e$f$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_bf
    iget-object v0, p0, Lx6/e$l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_c7
    .catchall {:try_start_93 .. :try_end_c7} :catchall_c7

    :catchall_c7
    move-exception p1

    iget-object p0, p0, Lx6/e$l;->a:Lx6/e;

    iget-object p0, p0, Lx6/e;->a:Lx6/k;

    invoke-interface {p0}, Lx6/k;->unlock()V

    throw p1
.end method
