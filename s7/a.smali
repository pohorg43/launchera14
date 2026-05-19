.class public final Ls7/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCancellable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n1#1,68:1\n49#1,6:69\n49#1,6:75\n49#1,6:81\n*S KotlinDebug\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n17#1:69,6\n29#1:75,6\n38#1:81,6\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ll4/d;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;",
            "Ll4/d<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object p0

    sget-object v0, Lh4/z;->a:Lh4/z;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lr7/k;->a(Ll4/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-void

    :catchall_b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lm7/a;

    invoke-virtual {p1, v0}, Lm7/a;->resumeWith(Ljava/lang/Object;)V

    throw p0
.end method

.method public static b(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ll4/d;Lkotlin/jvm/functions/Function1;I)V
    .registers 5

    const/4 p3, 0x0

    :try_start_1
    invoke-static {p0, p1, p2}, Lm4/d;->f(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    invoke-static {p0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object p0

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-static {p0, p1, p3}, Lr7/k;->a(Ll4/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    throw p0
.end method
