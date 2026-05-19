.class public Lp4/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(III)I
    .registers 4

    if-lez p2, :cond_14

    if-lt p0, p1, :cond_5

    goto :goto_28

    :cond_5
    invoke-static {p1, p2}, Lp4/c;->b(II)I

    move-result v0

    invoke-static {p0, p2}, Lp4/c;->b(II)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0, p2}, Lp4/c;->b(II)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_28

    :cond_14
    if-gez p2, :cond_29

    if-gt p0, p1, :cond_19

    goto :goto_28

    :cond_19
    neg-int p2, p2

    invoke-static {p0, p2}, Lp4/c;->b(II)I

    move-result p0

    invoke-static {p1, p2}, Lp4/c;->b(II)I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p0, p2}, Lp4/c;->b(II)I

    move-result p0

    add-int/2addr p1, p0

    :goto_28
    return p1

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(II)I
    .registers 2

    rem-int/2addr p0, p1

    if-ltz p0, :cond_4

    goto :goto_5

    :cond_4
    add-int/2addr p0, p1

    :goto_5
    return p0
.end method

.method public static final c(JJ)J
    .registers 6

    rem-long/2addr p0, p2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_8

    goto :goto_9

    :cond_8
    add-long/2addr p0, p2

    :goto_9
    return-wide p0
.end method

.method public static final d(Lkotlin/jvm/functions/Function2;)Lj7/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lj7/j<",
            "-TT;>;-",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lj7/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj7/k;

    invoke-direct {v0, p0}, Lj7/k;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public static final e(La8/a;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lb8/q;
    .registers 4

    const-string v0, "$this$switchMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object v0

    instance-of v1, v0, Lx7/c;

    if-eqz v1, :cond_15

    sget-object p0, Lb8/q;->h:Lb8/q;

    goto :goto_51

    :cond_15
    sget-object v1, Lx7/j$b;->a:Lx7/j$b;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object p0, Lb8/q;->f:Lb8/q;

    goto :goto_51

    :cond_20
    sget-object v1, Lx7/j$c;->a:Lx7/j$c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object v0

    instance-of v1, v0, Lx7/d;

    if-nez v1, :cond_4c

    sget-object v1, Lx7/i$b;->a:Lx7/i$b;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_4c

    :cond_3e
    iget-object p0, p0, La8/a;->a:Lb8/c;

    iget-boolean p0, p0, Lb8/c;->d:Z

    if-eqz p0, :cond_47

    sget-object p0, Lb8/q;->f:Lb8/q;

    goto :goto_51

    :cond_47
    invoke-static {p1}, Lm4/d;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lb8/e;

    move-result-object p0

    throw p0

    :cond_4c
    :goto_4c
    sget-object p0, Lb8/q;->g:Lb8/q;

    goto :goto_51

    :cond_4f
    sget-object p0, Lb8/q;->e:Lb8/q;

    :goto_51
    return-object p0
.end method
