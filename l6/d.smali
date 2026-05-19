.class public final Ll6/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCapturedTypeConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CapturedTypeConstructor.kt\norg/jetbrains/kotlin/resolve/calls/inference/CapturedTypeConstructorKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,153:1\n1549#2:154\n1620#2,3:155\n37#3,2:158\n*S KotlinDebug\n*F\n+ 1 CapturedTypeConstructor.kt\norg/jetbrains/kotlin/resolve/calls/inference/CapturedTypeConstructorKt\n*L\n125#1:154\n125#1:155,3\n127#1:158,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ly6/q1;Li5/a1;)Ly6/q1;
    .registers 6

    if-eqz p1, :cond_59

    invoke-interface {p0}, Ly6/q1;->c()Ly6/e2;

    move-result-object v0

    sget-object v1, Ly6/e2;->c:Ly6/e2;

    if-ne v0, v1, :cond_b

    goto :goto_59

    :cond_b
    invoke-interface {p1}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object p1

    invoke-interface {p0}, Ly6/q1;->c()Ly6/e2;

    move-result-object v0

    if-ne p1, v0, :cond_3c

    invoke-interface {p0}, Ly6/q1;->b()Z

    move-result p1

    if-eqz p1, :cond_32

    new-instance p1, Ly6/s1;

    new-instance v0, Ly6/o0;

    sget-object v1, Lx6/e;->e:Lx6/m;

    const-string v2, "NO_LOCKS"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ll6/d$a;

    invoke-direct {v2, p0}, Ll6/d$a;-><init>(Ly6/q1;)V

    invoke-direct {v0, v1, v2}, Ly6/o0;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p1, v0}, Ly6/s1;-><init>(Ly6/l0;)V

    goto :goto_3b

    :cond_32
    new-instance p1, Ly6/s1;

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    invoke-direct {p1, p0}, Ly6/s1;-><init>(Ly6/l0;)V

    :goto_3b
    return-object p1

    :cond_3c
    new-instance p1, Ly6/s1;

    const-string v0, "typeProjection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ll6/a;

    new-instance v1, Ll6/c;

    invoke-direct {v1, p0}, Ll6/c;-><init>(Ly6/q1;)V

    const/4 v2, 0x0

    sget-object v3, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ly6/g1;->c:Ly6/g1;

    invoke-direct {v0, p0, v1, v2, v3}, Ll6/a;-><init>(Ly6/q1;Ll6/b;ZLy6/g1;)V

    invoke-direct {p1, v0}, Ly6/s1;-><init>(Ly6/l0;)V

    return-object p1

    :cond_59
    :goto_59
    return-object p0
.end method

.method public static final b(Ly6/l0;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    instance-of p0, p0, Ll6/b;

    return p0
.end method

.method public static c(Ly6/t1;ZI)Ly6/t1;
    .registers 6

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_5

    move p1, v0

    :cond_5
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p0, Ly6/i0;

    if-eqz p2, :cond_54

    check-cast p0, Ly6/i0;

    iget-object p2, p0, Ly6/i0;->b:[Li5/a1;

    iget-object p0, p0, Ly6/i0;->c:[Ly6/q1;

    invoke-static {p0, p2}, Li4/k;->R([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/j;

    iget-object v2, v1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v2, Ly6/q1;

    iget-object v1, v1, Lh4/j;->b:Ljava/lang/Object;

    check-cast v1, Li5/a1;

    invoke-static {v2, v1}, Ll6/d;->a(Ly6/q1;Li5/a1;)Ly6/q1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_45
    const/4 p0, 0x0

    new-array p0, p0, [Ly6/q1;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ly6/q1;

    new-instance v0, Ly6/i0;

    invoke-direct {v0, p2, p0, p1}, Ly6/i0;-><init>([Li5/a1;[Ly6/q1;Z)V

    goto :goto_59

    :cond_54
    new-instance v0, Ll6/e;

    invoke-direct {v0, p0, p1}, Ll6/e;-><init>(Ly6/t1;Z)V

    :goto_59
    return-object v0
.end method
