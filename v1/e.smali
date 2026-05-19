.class public Lv1/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lf5/c;Li5/e;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk6/i;->p(Li5/l;)Z

    move-result p0

    if-eqz p0, :cond_26

    sget-object p0, Lf5/c;->b:Ljava/util/Set;

    invoke-static {p1}, Lo6/c;->f(Li5/h;)Lh6/b;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lh6/b;->g()Lh6/b;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    invoke-static {p0, p1}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method
