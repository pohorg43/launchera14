.class public final Lz6/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(ZZLz6/b;Lz6/e;Lz6/f;)Ly6/i1;
    .registers 13

    const-string v0, "typeSystemContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypePreparator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/i1;

    const/4 v4, 0x1

    move-object v1, v0

    move v2, p0

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Ly6/i1;-><init>(ZZZLc7/p;Ly6/m;Ly6/n;)V

    return-object v0
.end method

.method public static synthetic b(ZZLz6/b;Lz6/e;Lz6/f;I)Ly6/i1;
    .registers 7

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_5

    const/4 p1, 0x1

    :cond_5
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_b

    sget-object p2, Lz6/p;->a:Lz6/p;

    :cond_b
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_11

    sget-object p3, Lz6/e$a;->a:Lz6/e$a;

    :cond_11
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_17

    sget-object p4, Lz6/f$a;->a:Lz6/f$a;

    :cond_17
    invoke-static {p0, p1, p2, p3, p4}, Lz6/a;->a(ZZLz6/b;Lz6/e;Lz6/f;)Ly6/i1;

    move-result-object p0

    return-object p0
.end method
