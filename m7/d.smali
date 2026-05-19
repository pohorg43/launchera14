.class public final Lm7/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n37#2,2:128\n13579#3,2:130\n1855#4,2:132\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n*L\n42#1:128,2\n54#1:130,2\n66#1:132,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/util/Collection;Ll4/d;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lm7/p0<",
            "+TT;>;>;",
            "Ll4/d<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_9
    new-instance v0, Lm7/c;

    const/4 v1, 0x0

    new-array v2, v1, [Lm7/p0;

    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lm7/p0;

    invoke-direct {v0, p0}, Lm7/c;-><init>([Lm7/p0;)V

    new-instance v2, Lm7/n;

    invoke-static {p1}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {v2}, Lm7/n;->w()V

    array-length p0, p0

    new-array v3, p0, [Lm7/c$a;

    move v4, v1

    :goto_28
    if-ge v4, p0, :cond_41

    iget-object v5, v0, Lm7/c;->a:[Lm7/p0;

    aget-object v5, v5, v4

    invoke-interface {v5}, Lm7/s1;->start()Z

    new-instance v6, Lm7/c$a;

    invoke-direct {v6, v0, v2}, Lm7/c$a;-><init>(Lm7/c;Lm7/l;)V

    invoke-interface {v5, v6}, Lm7/s1;->j(Lkotlin/jvm/functions/Function1;)Lm7/a1;

    move-result-object v5

    iput-object v5, v6, Lm7/c$a;->f:Lm7/a1;

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_41
    new-instance v4, Lm7/c$b;

    invoke-direct {v4, v0, v3}, Lm7/c$b;-><init>(Lm7/c;[Lm7/c$a;)V

    :goto_46
    if-ge v1, p0, :cond_55

    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lm7/c$a;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_55
    invoke-virtual {v2}, Lm7/n;->A()Z

    move-result p0

    if-eqz p0, :cond_5f

    invoke-virtual {v4}, Lm7/c$b;->h()V

    goto :goto_62

    :cond_5f
    invoke-virtual {v2, v4}, Lm7/n;->h(Lkotlin/jvm/functions/Function1;)V

    :goto_62
    invoke-virtual {v2}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lm4/a;->a:Lm4/a;

    if-ne p0, v0, :cond_6f

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6f
    return-object p0
.end method
