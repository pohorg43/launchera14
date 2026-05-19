.class public final Lr5/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk6/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/o$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nErasedOverridabilityCondition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErasedOverridabilityCondition.kt\norg/jetbrains/kotlin/load/java/ErasedOverridabilityCondition\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,63:1\n1229#2,2:64\n*S KotlinDebug\n*F\n+ 1 ErasedOverridabilityCondition.kt\norg/jetbrains/kotlin/load/java/ErasedOverridabilityCondition\n*L\n44#1:64,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li5/a;Li5/a;Li5/e;)I
    .registers 9

    const-string p0, "superDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDescriptor"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Lt5/e;

    const/4 p3, 0x1

    const/4 v0, 0x4

    if-eqz p0, :cond_105

    move-object p0, p2

    check-cast p0, Lt5/e;

    invoke-virtual {p0}, Ll5/r;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    const-string v1, "subDescriptor.typeParameters"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, p3

    if-eqz p0, :cond_25

    goto/16 :goto_105

    :cond_25
    invoke-static {p1, p2}, Lk6/o;->i(Li5/a;Li5/a;)Lk6/o$c;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Lk6/o$c;->c()Lk6/o$c$a;

    move-result-object p0

    goto :goto_32

    :cond_31
    move-object p0, v1

    :goto_32
    if-eqz p0, :cond_35

    return v0

    :cond_35
    move-object p0, p2

    check-cast p0, Lt5/e;

    invoke-virtual {p0}, Ll5/r;->g()Ljava/util/List;

    move-result-object v2

    const-string v3, "subDescriptor.valueParameters"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object v2

    sget-object v3, Lr5/p;->a:Lr5/p;

    invoke-static {v2, v3}, Lj7/p;->p(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object v2

    iget-object v3, p0, Ll5/r;->g:Ly6/l0;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lj7/p;->r(Lj7/h;Ljava/lang/Object;)Lj7/h;

    move-result-object v2

    iget-object p0, p0, Ll5/r;->i:Li5/r0;

    if-eqz p0, :cond_5d

    invoke-interface {p0}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    goto :goto_5e

    :cond_5d
    move-object p0, v1

    :goto_5e
    invoke-static {p0}, Li4/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v3, "<this>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "elements"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lj7/h;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {p0}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object p0

    aput-object p0, v3, p3

    invoke-static {v3}, Lj7/l;->j([Ljava/lang/Object;)Lj7/h;

    move-result-object p0

    invoke-static {p0}, Lj7/l;->h(Lj7/h;)Lj7/h;

    move-result-object p0

    check-cast p0, Lj7/f;

    new-instance v2, Lj7/f$a;

    invoke-direct {v2, p0}, Lj7/f$a;-><init>(Lj7/f;)V

    :cond_87
    invoke-virtual {v2}, Lj7/f$a;->a()Z

    move-result p0

    if-eqz p0, :cond_ad

    invoke-virtual {v2}, Lj7/f$a;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/l0;

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, p3

    if-eqz v3, :cond_a8

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    instance-of p0, p0, Lw5/i;

    if-nez p0, :cond_a8

    move p0, p3

    goto :goto_a9

    :cond_a8
    move p0, v4

    :goto_a9
    if-eqz p0, :cond_87

    move p0, p3

    goto :goto_ae

    :cond_ad
    move p0, v4

    :goto_ae
    if-eqz p0, :cond_b1

    return v0

    :cond_b1
    new-instance p0, Lw5/h;

    invoke-direct {p0, v1, p3}, Lw5/h;-><init>(Ly6/n1;I)V

    invoke-virtual {p0}, Ly6/t1;->c()Ly6/x1;

    move-result-object p0

    invoke-interface {p1, p0}, Li5/x0;->c(Ly6/x1;)Li5/m;

    move-result-object p0

    check-cast p0, Li5/a;

    if-nez p0, :cond_c3

    return v0

    :cond_c3
    instance-of p1, p0, Li5/u0;

    if-eqz p1, :cond_eb

    move-object p1, p0

    check-cast p1, Li5/u0;

    invoke-interface {p1}, Li5/a;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    const-string v2, "erasedSuper.typeParameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, p3

    if-eqz v1, :cond_eb

    invoke-interface {p1}, Li5/u0;->q()Li5/x$a;

    move-result-object p0

    sget-object p1, Li4/y;->a:Li4/y;

    invoke-interface {p0, p1}, Li5/x$a;->n(Ljava/util/List;)Li5/x$a;

    move-result-object p0

    invoke-interface {p0}, Li5/x$a;->build()Li5/x;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_eb
    sget-object p1, Lk6/o;->f:Lk6/o;

    invoke-virtual {p1, p0, p2, v4}, Lk6/o;->n(Li5/a;Li5/a;Z)Lk6/o$c;

    move-result-object p0

    invoke-virtual {p0}, Lk6/o$c;->c()Lk6/o$c$a;

    move-result-object p0

    const-string p1, "DEFAULT.isOverridableByW…Descriptor, false).result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lr5/o$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-ne p0, p3, :cond_105

    goto :goto_106

    :cond_105
    :goto_105
    move p3, v0

    :goto_106
    return p3
.end method

.method public b()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method
