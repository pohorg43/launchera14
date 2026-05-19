.class public final Ly6/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly6/j1;
.implements Lc7/h;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIntersectionTypeConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt\n+ 5 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt$transformComponents$1\n*L\n1#1,120:1\n1#2:121\n1045#3:122\n1549#3:129\n1620#3,2:130\n1622#3:138\n98#4,6:123\n104#4:132\n105#4,4:134\n112#4,7:139\n99#5:133\n*S KotlinDebug\n*F\n+ 1 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructor\n*L\n66#1:122\n89#1:129\n89#1:130,2\n89#1:138\n89#1:123,6\n89#1:132\n89#1:134,4\n89#1:139,7\n89#1:133\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ly6/l0;

.field public final b:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ly6/l0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "typesToIntersect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->hashCode()I

    move-result p1

    iput p1, p0, Ly6/j0;->c:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lz6/f;)Ly6/j1;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/j0;->j(Lz6/f;)Ly6/j0;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public e()Li5/h;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ly6/j0;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    check-cast p1, Ly6/j0;

    iget-object p1, p1, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final g()Lr6/i;
    .registers 6

    iget-object p0, p0, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    const-string v0, "member scope for intersection type"

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "types"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/l0;

    invoke-virtual {v2}, Ly6/l0;->l()Lr6/i;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_31
    invoke-static {v1}, Lh7/a;->b(Ljava/lang/Iterable;)Li7/d;

    move-result-object p0

    const-string v1, "debugName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scopes"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5f

    const/4 v4, 0x0

    if-eq v1, v3, :cond_58

    new-instance v1, Lr6/b;

    new-array v4, v4, [Lr6/i;

    invoke-interface {p0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lr6/i;

    invoke-direct {v1, v0, v4, v2}, Lr6/b;-><init>(Ljava/lang/String;[Lr6/i;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_61

    :cond_58
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr6/i;

    goto :goto_61

    :cond_5f
    sget-object v1, Lr6/i$b;->b:Lr6/i$b;

    :goto_61
    iget p0, p0, Li7/d;->a:I

    if-gt p0, v3, :cond_66

    goto :goto_6c

    :cond_66
    new-instance p0, Lr6/o;

    invoke-direct {p0, v0, v1, v2}, Lr6/o;-><init>(Ljava/lang/String;Lr6/i;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p0

    :goto_6c
    return-object v1
.end method

.method public getParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public final h()Ly6/s0;
    .registers 8

    sget-object v0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ly6/g1;->c:Ly6/g1;

    sget-object v3, Li4/y;->a:Li4/y;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ly6/j0;->g()Lr6/i;

    move-result-object v5

    new-instance v6, Ly6/j0$a;

    invoke-direct {v6, p0}, Ly6/j0$a;-><init>(Ly6/j0;)V

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Ly6/m0;->j(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;Lkotlin/jvm/functions/Function1;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Ly6/j0;->c:I

    return p0
.end method

.method public final i(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ly6/l0;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "getProperTypeRelatedToStringify"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    new-instance v0, Ly6/j0$b;

    invoke-direct {v0, p1}, Ly6/j0$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, v0}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    new-instance v7, Ly6/j0$c;

    invoke-direct {v7, p1}, Ly6/j0$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-string v2, " & "

    const-string v3, "{"

    const-string v4, "}"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x18

    invoke-static/range {v1 .. v8}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j(Lz6/f;)Ly6/j0;
    .registers 6

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/l0;

    invoke-virtual {v2, p1}, Ly6/l0;->H0(Lz6/f;)Ly6/l0;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_17

    :cond_2d
    const/4 v0, 0x0

    if-nez v2, :cond_31

    goto :goto_42

    :cond_31
    iget-object v2, p0, Ly6/j0;->a:Ly6/l0;

    if-eqz v2, :cond_39

    invoke-virtual {v2, p1}, Ly6/l0;->H0(Lz6/f;)Ly6/l0;

    move-result-object v0

    :cond_39
    new-instance p1, Ly6/j0;

    invoke-direct {p1, v1}, Ly6/j0;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Ly6/j0;->l(Ly6/l0;)Ly6/j0;

    move-result-object v0

    :goto_42
    if-nez v0, :cond_45

    goto :goto_46

    :cond_45
    move-object p0, v0

    :goto_46
    return-object p0
.end method

.method public k()Lf5/g;
    .registers 2

    iget-object p0, p0, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/l0;

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->k()Lf5/g;

    move-result-object p0

    const-string v0, "intersectedTypes.iterato…xt().constructor.builtIns"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Ly6/l0;)Ly6/j0;
    .registers 3

    new-instance v0, Ly6/j0;

    iget-object p0, p0, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    invoke-direct {v0, p0}, Ly6/j0;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Ly6/j0;->a:Ly6/l0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Ly6/k0;->a:Ly6/k0;

    invoke-virtual {p0, v0}, Ly6/j0;->i(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
