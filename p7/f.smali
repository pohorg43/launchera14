.class public final synthetic Lp7/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,176:1\n106#2:177\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n153#1:177\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lp7/e;Lo7/s;ZLl4/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp7/e<",
            "-TT;>;",
            "Lo7/s<",
            "+TT;>;Z",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lp7/f$a;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lp7/f$a;

    iget v1, v0, Lp7/f$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lp7/f$a;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lp7/f$a;

    invoke-direct {v0, p3}, Lp7/f$a;-><init>(Ll4/d;)V

    :goto_18
    iget-object p3, v0, Lp7/f$a;->e:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lp7/f$a;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_55

    if-eq v2, v5, :cond_43

    if-ne v2, v4, :cond_3b

    iget-boolean p2, v0, Lp7/f$a;->d:Z

    iget-object p0, v0, Lp7/f$a;->c:Ljava/lang/Object;

    check-cast p0, Lo7/h;

    iget-object p1, v0, Lp7/f$a;->b:Ljava/lang/Object;

    check-cast p1, Lo7/s;

    iget-object v2, v0, Lp7/f$a;->a:Ljava/lang/Object;

    check-cast v2, Lp7/e;

    :try_start_35
    invoke-static {p3}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_9a

    :cond_38
    move-object p3, p0

    move-object p0, v2

    goto :goto_60

    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    iget-boolean p2, v0, Lp7/f$a;->d:Z

    iget-object p0, v0, Lp7/f$a;->c:Ljava/lang/Object;

    check-cast p0, Lo7/h;

    iget-object p1, v0, Lp7/f$a;->b:Ljava/lang/Object;

    check-cast p1, Lo7/s;

    iget-object v2, v0, Lp7/f$a;->a:Ljava/lang/Object;

    check-cast v2, Lp7/e;

    :try_start_51
    invoke-static {p3}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_9a

    goto :goto_75

    :cond_55
    invoke-static {p3}, Lh4/l;->b(Ljava/lang/Object;)V

    instance-of p3, p0, Lp7/w;

    if-nez p3, :cond_a3

    :try_start_5c
    invoke-interface {p1}, Lo7/s;->iterator()Lo7/h;

    move-result-object p3

    :goto_60
    iput-object p0, v0, Lp7/f$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lp7/f$a;->b:Ljava/lang/Object;

    iput-object p3, v0, Lp7/f$a;->c:Ljava/lang/Object;

    iput-boolean p2, v0, Lp7/f$a;->d:Z

    iput v5, v0, Lp7/f$a;->f:I

    invoke-interface {p3, v0}, Lo7/h;->e(Ll4/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_71

    return-object v1

    :cond_71
    move-object v6, v2

    move-object v2, p0

    move-object p0, p3

    move-object p3, v6

    :goto_75
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_92

    invoke-interface {p0}, Lo7/h;->next()Ljava/lang/Object;

    move-result-object p3

    iput-object v2, v0, Lp7/f$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lp7/f$a;->b:Ljava/lang/Object;

    iput-object p0, v0, Lp7/f$a;->c:Ljava/lang/Object;

    iput-boolean p2, v0, Lp7/f$a;->d:Z

    iput v4, v0, Lp7/f$a;->f:I

    invoke-interface {v2, p3, v0}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p3
    :try_end_8f
    .catchall {:try_start_5c .. :try_end_8f} :catchall_9a

    if-ne p3, v1, :cond_38

    return-object v1

    :cond_92
    if-eqz p2, :cond_97

    invoke-static {p1, v3}, Lv1/l;->a(Lo7/s;Ljava/lang/Throwable;)V

    :cond_97
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :catchall_9a
    move-exception p0

    :try_start_9b
    throw p0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception p3

    if-eqz p2, :cond_a2

    invoke-static {p1, p0}, Lv1/l;->a(Lo7/s;Ljava/lang/Throwable;)V

    :cond_a2
    throw p3

    :cond_a3
    check-cast p0, Lp7/w;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v3
.end method
