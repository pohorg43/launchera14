.class public final Lo7/i;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(ILo7/a;Lkotlin/jvm/functions/Function1;I)Lo7/f;
    .registers 7

    sget-object p2, Lo7/a;->a:Lo7/a;

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    move p0, v1

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    move-object p1, p2

    :cond_d
    const/4 p3, 0x0

    const/4 v0, -0x2

    const/4 v2, 0x1

    if-eq p0, v0, :cond_58

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3f

    if-eqz p0, :cond_31

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_2b

    if-ne p1, p2, :cond_24

    new-instance p1, Lo7/b;

    invoke-direct {p1, p0, p3}, Lo7/b;-><init>(ILkotlin/jvm/functions/Function1;)V

    goto :goto_6d

    :cond_24
    new-instance p2, Lo7/n;

    invoke-direct {p2, p0, p1, p3}, Lo7/n;-><init>(ILo7/a;Lkotlin/jvm/functions/Function1;)V

    move-object p1, p2

    goto :goto_6d

    :cond_2b
    new-instance p1, Lo7/b;

    invoke-direct {p1, v0, p3}, Lo7/b;-><init>(ILkotlin/jvm/functions/Function1;)V

    goto :goto_6d

    :cond_31
    if-ne p1, p2, :cond_39

    new-instance p0, Lo7/b;

    invoke-direct {p0, v1, p3}, Lo7/b;-><init>(ILkotlin/jvm/functions/Function1;)V

    goto :goto_6c

    :cond_39
    new-instance p0, Lo7/n;

    invoke-direct {p0, v2, p1, p3}, Lo7/n;-><init>(ILo7/a;Lkotlin/jvm/functions/Function1;)V

    goto :goto_6c

    :cond_3f
    if-ne p1, p2, :cond_42

    move v1, v2

    :cond_42
    if-eqz v1, :cond_4c

    new-instance p1, Lo7/n;

    sget-object p0, Lo7/a;->b:Lo7/a;

    invoke-direct {p1, v2, p0, p3}, Lo7/n;-><init>(ILo7/a;Lkotlin/jvm/functions/Function1;)V

    goto :goto_6d

    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_58
    if-ne p1, p2, :cond_67

    new-instance p0, Lo7/b;

    sget-object p1, Lo7/f;->M:Lo7/f$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lo7/f$a;->b:I

    invoke-direct {p0, p1, p3}, Lo7/b;-><init>(ILkotlin/jvm/functions/Function1;)V

    goto :goto_6c

    :cond_67
    new-instance p0, Lo7/n;

    invoke-direct {p0, v2, p1, p3}, Lo7/n;-><init>(ILo7/a;Lkotlin/jvm/functions/Function1;)V

    :goto_6c
    move-object p1, p0

    :goto_6d
    return-object p1
.end method
