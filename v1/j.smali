.class public Lv1/j;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lm7/s1;I)Lm7/v;
    .registers 2

    const/4 p0, 0x0

    new-instance p1, Lm7/k2;

    invoke-direct {p1, p0}, Lm7/k2;-><init>(Lm7/s1;)V

    return-object p1
.end method

.method public static final b(Li5/e;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/e;->o()Li5/d0;

    move-result-object v0

    sget-object v1, Li5/d0;->a:Li5/d0;

    if-ne v0, v1, :cond_17

    invoke-interface {p0}, Li5/e;->f()Li5/f;

    move-result-object p0

    sget-object v0, Li5/f;->c:Li5/f;

    if-eq p0, v0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method
