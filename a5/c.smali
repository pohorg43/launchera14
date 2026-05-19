.class public final La5/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La5/c$a;
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "KClassifiers"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKClassifiers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KClassifiers.kt\nkotlin/reflect/full/KClassifiers\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n1559#2:98\n1590#2,4:99\n1549#2:103\n1620#2,3:104\n*S KotlinDebug\n*F\n+ 1 KClassifiers.kt\nkotlin/reflect/full/KClassifiers\n*L\n69#1:98\n69#1:99,4\n95#1:103\n95#1:104,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lz4/f;Ljava/util/List;ZLjava/util/List;)Lz4/r;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/f;",
            "Ljava/util/List<",
            "Lz4/t;",
            ">;Z",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lz4/r;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lc5/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Lc5/r;

    goto :goto_19

    :cond_18
    move-object v0, v1

    :goto_19
    if-eqz v0, :cond_115

    invoke-interface {v0}, Lc5/r;->getDescriptor()Li5/h;

    move-result-object v0

    if-eqz v0, :cond_115

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object v3

    const-string p0, "descriptor.typeConstructor"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object p0

    const-string v0, "typeConstructor.parameters"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_ed

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4b

    sget-object p0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ly6/g1;->c:Ly6/g1;

    goto :goto_52

    :cond_4b
    sget-object p0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ly6/g1;->c:Ly6/g1;

    :goto_52
    move-object v2, p0

    new-instance p0, Lc5/k0;

    invoke-interface {v3}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v8, 0x2

    if-eqz v5, :cond_e1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    if-ltz v0, :cond_dd

    check-cast v5, Lz4/t;

    iget-object v7, v5, Lz4/t;->b:Lz4/r;

    check-cast v7, Lc5/k0;

    if-eqz v7, :cond_86

    iget-object v7, v7, Lc5/k0;->a:Ly6/l0;

    goto :goto_87

    :cond_86
    move-object v7, v1

    :goto_87
    iget-object v5, v5, Lz4/t;->a:Lz4/u;

    const/4 v9, -0x1

    if-nez v5, :cond_8e

    move v5, v9

    goto :goto_96

    :cond_8e
    sget-object v10, La5/c$a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v10, v5

    :goto_96
    if-eq v5, v9, :cond_c7

    const/4 v0, 0x1

    if-eq v5, v0, :cond_bc

    if-eq v5, v8, :cond_b1

    const/4 v0, 0x3

    if-ne v5, v0, :cond_ab

    new-instance v0, Ly6/s1;

    sget-object v5, Ly6/e2;->e:Ly6/e2;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v5, v7}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_d8

    :cond_ab
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_b1
    new-instance v0, Ly6/s1;

    sget-object v5, Ly6/e2;->d:Ly6/e2;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v5, v7}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_d8

    :cond_bc
    new-instance v0, Ly6/s1;

    sget-object v5, Ly6/e2;->c:Ly6/e2;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v5, v7}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_d8

    :cond_c7
    new-instance v5, Ly6/y0;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v7, "parameters[index]"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Li5/a1;

    invoke-direct {v5, v0}, Ly6/y0;-><init>(Li5/a1;)V

    move-object v0, v5

    :goto_d8
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v6

    goto :goto_6c

    :cond_dd
    invoke-static {}, Li4/o;->k()V

    throw v1

    :cond_e1
    const/4 v6, 0x0

    const/16 v7, 0x10

    move v5, p2

    invoke-static/range {v2 .. v7}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object p1

    invoke-direct {p0, p1, v1, v8}, Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;I)V

    return-object p0

    :cond_ed
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Class declares "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " type parameters, but "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " were provided."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_115
    new-instance p1, Lc5/n0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot create type for an unsupported classifier: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
