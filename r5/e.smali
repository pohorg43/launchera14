.class public final Lr5/e;
.super Lr5/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr5/b<",
        "Lj5/c;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnnotationTypeQualifierResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnnotationTypeQualifierResolver.kt\norg/jetbrains/kotlin/load/java/AnnotationTypeQualifierResolver\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n76#2:55\n96#2,5:56\n1360#3:61\n1446#3,5:62\n*S KotlinDebug\n*F\n+ 1 AnnotationTypeQualifierResolver.kt\norg/jetbrains/kotlin/load/java/AnnotationTypeQualifierResolver\n*L\n40#1:55\n40#1:56,5\n49#1:61\n49#1:62,5\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lr5/a0;)V
    .registers 3

    const-string v0, "javaTypeEnhancementState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lr5/b;-><init>(Lr5/a0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)Ljava/lang/Iterable;
    .registers 7

    check-cast p1, Lj5/c;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lj5/c;->a()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/f;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm6/g;

    if-eqz p2, :cond_3e

    sget-object v3, Lr5/f0;->b:Lh6/f;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_3e

    :cond_3b
    sget-object v1, Li4/y;->a:Li4/y;

    goto :goto_42

    :cond_3e
    :goto_3e
    invoke-virtual {p0, v1}, Lr5/e;->n(Lm6/g;)Ljava/util/List;

    move-result-object v1

    :goto_42
    invoke-static {v0, v1}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_18

    :cond_46
    return-object v0
.end method

.method public e(Ljava/lang/Object;)Lh6/c;
    .registers 2

    check-cast p1, Lj5/c;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lj5/c;->e()Lh6/c;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lj5/c;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo6/c;->d(Lj5/c;)Li5/e;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    check-cast p1, Lj5/c;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo6/c;->d(Lj5/c;)Li5/e;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-interface {p0}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_16
    return-object p0
.end method

.method public final n(Lm6/g;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm6/g<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lm6/b;

    if-eqz v0, :cond_27

    check-cast p1, Lm6/b;

    iget-object p1, p1, Lm6/g;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm6/g;

    invoke-virtual {p0, v1}, Lr5/e;->n(Lm6/g;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_13

    :cond_27
    instance-of p0, p1, Lm6/j;

    if-eqz p0, :cond_38

    check-cast p1, Lm6/j;

    iget-object p0, p1, Lm6/j;->c:Lh6/f;

    invoke-virtual {p0}, Lh6/f;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3a

    :cond_38
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_3a
    :goto_3a
    return-object v0
.end method
