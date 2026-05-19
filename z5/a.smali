.class public abstract Lz5/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz5/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TAnnotation:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractSignatureParts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSignatureParts.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/AbstractSignatureParts\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,228:1\n1#2:229\n1#2:252\n1#2:275\n766#3:230\n857#3,2:231\n1726#3,3:233\n1747#3,3:236\n1747#3,3:239\n1603#3,9:242\n1855#3:251\n1856#3:253\n1612#3:254\n1726#3,3:255\n1549#3:258\n1620#3,3:259\n1747#3,3:262\n1603#3,9:265\n1855#3:274\n1856#3:276\n1612#3:277\n1855#3,2:278\n*S KotlinDebug\n*F\n+ 1 AbstractSignatureParts.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/AbstractSignatureParts\n*L\n156#1:252\n182#1:275\n89#1:230\n89#1:231,2\n153#1:233,3\n155#1:236,3\n156#1:239,3\n156#1:242,9\n156#1:251\n156#1:253\n156#1:254\n159#1:255,3\n169#1:258\n169#1:259,3\n177#1:262,3\n182#1:265,9\n182#1:274\n182#1:276\n182#1:277\n195#1:278,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/List<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lz5/a;->a(Ljava/lang/Object;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_f

    :cond_1d
    return-void
.end method

.method public abstract b()Lr5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr5/b<",
            "TTAnnotation;>;"
        }
    .end annotation
.end method

.method public final c(Lc7/o;)Lz5/k;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lv5/v;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    invoke-static {p1}, Lz6/b$a;->z(Lc7/o;)Ljava/util/List;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_34

    :cond_1c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc7/i;

    invoke-static {v5}, Lz6/b$a;->J(Lc7/i;)Z

    move-result v5

    if-nez v5, :cond_20

    move v4, v2

    goto :goto_35

    :cond_34
    :goto_34
    move v4, v3

    :goto_35
    if-eqz v4, :cond_38

    return-object v1

    :cond_38
    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_41

    goto :goto_5e

    :cond_41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc7/i;

    invoke-virtual {p0, v5}, Lz5/a;->e(Lc7/i;)Lz5/j;

    move-result-object v5

    if-eqz v5, :cond_59

    move v5, v3

    goto :goto_5a

    :cond_59
    move v5, v2

    :goto_5a
    if-eqz v5, :cond_45

    move v4, v3

    goto :goto_5f

    :cond_5e
    :goto_5e
    move v4, v2

    :goto_5f
    if-eqz v4, :cond_63

    move-object v0, p1

    goto :goto_ab

    :cond_63
    if-eqz v0, :cond_6c

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_89

    :cond_6c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc7/i;

    invoke-virtual {p0, v4}, Lz5/a;->d(Lc7/i;)Lc7/i;

    move-result-object v4

    if-eqz v4, :cond_84

    move v4, v3

    goto :goto_85

    :cond_84
    move v4, v2

    :goto_85
    if-eqz v4, :cond_70

    move v0, v3

    goto :goto_8a

    :cond_89
    :goto_89
    move v0, v2

    :goto_8a
    if-eqz v0, :cond_de

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_95
    :goto_95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc7/i;

    invoke-virtual {p0, v4}, Lz5/a;->d(Lc7/i;)Lc7/i;

    move-result-object v4

    if-eqz v4, :cond_95

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_95

    :cond_ab
    :goto_ab
    instance-of p0, v0, Ljava/util/Collection;

    if-eqz p0, :cond_b6

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b6

    goto :goto_ce

    :cond_b6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_ba
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc7/i;

    invoke-static {v1}, Lz6/b$a;->P(Lc7/i;)Z

    move-result v1

    if-nez v1, :cond_ba

    move p0, v2

    goto :goto_cf

    :cond_ce
    :goto_ce
    move p0, v3

    :goto_cf
    if-eqz p0, :cond_d4

    sget-object p0, Lz5/j;->b:Lz5/j;

    goto :goto_d6

    :cond_d4
    sget-object p0, Lz5/j;->c:Lz5/j;

    :goto_d6
    new-instance v1, Lz5/k;

    if-eq v0, p1, :cond_db

    move v2, v3

    :cond_db
    invoke-direct {v1, p0, v2}, Lz5/k;-><init>(Lz5/j;Z)V

    :cond_de
    return-object v1
.end method

.method public abstract d(Lc7/i;)Lc7/i;
.end method

.method public final e(Lc7/i;)Lz5/j;
    .registers 3

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->g(Lc7/i;)Lc7/g;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0}, Lz6/b$a;->W(Lc7/g;)Lc7/k;

    move-result-object v0

    if-nez v0, :cond_18

    :cond_11
    invoke-static {p1}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_18
    invoke-static {v0}, Lz6/b$a;->N(Lc7/k;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object p0, Lz5/j;->b:Lz5/j;

    goto :goto_41

    :cond_21
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz6/b$a;->g(Lc7/i;)Lc7/g;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-static {p0}, Lz6/b$a;->h0(Lc7/g;)Lc7/k;

    move-result-object p0

    if-nez p0, :cond_37

    :cond_30
    invoke-static {p1}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_37
    invoke-static {p0}, Lz6/b$a;->N(Lc7/k;)Z

    move-result p0

    if-nez p0, :cond_40

    sget-object p0, Lz5/j;->c:Lz5/j;

    goto :goto_41

    :cond_40
    const/4 p0, 0x0

    :goto_41
    return-object p0
.end method

.method public final f(Lc7/i;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/i;",
            ")",
            "Ljava/util/List<",
            "Lz5/a$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz6/p;->a:Lz6/p;

    new-instance v1, Lz5/a$a;

    move-object v2, p0

    check-cast v2, Lz5/t;

    iget-object v2, v2, Lz5/t;->c:Lu5/g;

    iget-object v2, v2, Lu5/g;->d:Lh4/f;

    invoke-interface {v2}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr5/b0;

    invoke-virtual {p0}, Lz5/a;->b()Lr5/b;

    move-result-object v3

    const-string v4, "<this>"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Ly6/l0;

    invoke-virtual {v4}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lr5/b;->b(Lr5/b0;Ljava/lang/Iterable;)Lr5/b0;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lz5/a$a;-><init>(Lc7/i;Lr5/b0;Lc7/o;)V

    new-instance p1, Lz5/a$b;

    invoke-direct {p1, p0, v0}, Lz5/a$b;-><init>(Lz5/a;Lc7/p;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v1, v0, p1}, Lz5/a;->a(Ljava/lang/Object;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
