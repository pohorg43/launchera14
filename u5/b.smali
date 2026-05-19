.class public final Lu5/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lu5/g;Li5/g;Ly5/z;II)Lu5/g;
    .registers 7

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "containingDeclaration"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lkotlin/a;->c:Lkotlin/a;

    new-instance v0, Lu5/a;

    invoke-direct {v0, p0, p1}, Lu5/a;-><init>(Lu5/g;Li5/g;)V

    invoke-static {p4, v0}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p4

    iget-object v0, p0, Lu5/g;->a:Lu5/c;

    if-eqz p2, :cond_29

    new-instance v1, Lu5/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lu5/h;-><init>(Lu5/g;Li5/l;Ly5/z;I)V

    goto :goto_2b

    :cond_29
    iget-object v1, p0, Lu5/g;->b:Lu5/k;

    :goto_2b
    new-instance p0, Lu5/g;

    invoke-direct {p0, v0, v1, p4}, Lu5/g;-><init>(Lu5/c;Lu5/k;Lh4/f;)V

    return-object p0
.end method

.method public static final b(Lu5/g;Li5/l;Ly5/z;I)Lu5/g;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu5/g;->c:Lh4/f;

    iget-object v1, p0, Lu5/g;->a:Lu5/c;

    if-eqz p2, :cond_1b

    new-instance v2, Lu5/h;

    invoke-direct {v2, p0, p1, p2, p3}, Lu5/h;-><init>(Lu5/g;Li5/l;Ly5/z;I)V

    goto :goto_1d

    :cond_1b
    iget-object v2, p0, Lu5/g;->b:Lu5/k;

    :goto_1d
    new-instance p0, Lu5/g;

    invoke-direct {p0, v1, v2, v0}, Lu5/g;-><init>(Lu5/c;Lu5/k;Lh4/f;)V

    return-object p0
.end method

.method public static final c(Lu5/g;Lj5/h;)Lr5/b0;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->q:Lr5/e;

    iget-object p0, p0, Lu5/g;->d:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr5/b0;

    invoke-virtual {v0, p0, p1}, Lr5/b;->b(Lr5/b0;Ljava/lang/Iterable;)Lr5/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lu5/g;Lj5/h;)Lu5/g;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lj5/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_26

    :cond_11
    new-instance v0, Lu5/g;

    iget-object v1, p0, Lu5/g;->a:Lu5/c;

    iget-object v2, p0, Lu5/g;->b:Lu5/k;

    sget-object v3, Lkotlin/a;->c:Lkotlin/a;

    new-instance v4, Lu5/b$a;

    invoke-direct {v4, p0, p1}, Lu5/b$a;-><init>(Lu5/g;Lj5/h;)V

    invoke-static {v3, v4}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lu5/g;-><init>(Lu5/c;Lu5/k;Lh4/f;)V

    move-object p0, v0

    :goto_26
    return-object p0
.end method
