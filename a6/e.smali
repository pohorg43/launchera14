.class public final La6/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lc6/n;Le6/c;Le6/g;ZZZ)La6/w;
    .registers 9

    const-string v0, "proto"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeTable"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lf6/a;->d:Li6/h$f;

    const-string v2, "propertySignature"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Le6/e;->a(Li6/h$d;Li6/h$f;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf6/a$d;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    return-object v2

    :cond_20
    if-eqz p3, :cond_30

    sget-object p3, Lg6/h;->a:Lg6/h;

    invoke-virtual {p3, p0, p1, p2, p5}, Lg6/h;->b(Lc6/n;Le6/c;Le6/g;Z)Lg6/d$a;

    move-result-object p0

    if-nez p0, :cond_2b

    return-object v2

    :cond_2b
    invoke-static {p0}, La6/w;->b(Lg6/d;)La6/w;

    move-result-object p0

    return-object p0

    :cond_30
    if-eqz p4, :cond_6c

    iget p0, v1, Lf6/a$d;->b:I

    const/4 p2, 0x2

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_3a

    const/4 p0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    if-eqz p0, :cond_6c

    iget-object p0, v1, Lf6/a$d;->d:Lf6/a$c;

    const-string p2, "signature.syntheticMethod"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "signature"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lf6/a$c;->c:I

    invoke-interface {p1, p2}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lf6/a$c;->d:I

    invoke-interface {p1, p0}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "desc"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, La6/w;

    invoke-static {p2, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v2}, La6/w;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_6c
    return-object v2
.end method

.method public static synthetic b(Lc6/n;Le6/c;Le6/g;ZZZI)La6/w;
    .registers 15

    and-int/lit8 v0, p6, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v5, v1

    goto :goto_8

    :cond_7
    move v5, p3

    :goto_8
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_e

    move v6, v1

    goto :goto_f

    :cond_e
    move v6, p4

    :goto_f
    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_14

    const/4 p5, 0x1

    :cond_14
    move v7, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, La6/e;->a(Lc6/n;Le6/c;Le6/g;ZZZ)La6/w;

    move-result-object p0

    return-object p0
.end method
