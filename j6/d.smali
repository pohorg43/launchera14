.class public final Lj6/d;
.super Lj6/c;
.source ""

# interfaces
.implements Lj6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj6/d$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDescriptorRendererImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DescriptorRendererImpl.kt\norg/jetbrains/kotlin/renderer/DescriptorRendererImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1205:1\n2624#2,3:1206\n766#2:1209\n857#2,2:1210\n1549#2:1212\n1620#2,3:1213\n766#2:1216\n857#2,2:1217\n1549#2:1219\n1620#2,3:1220\n1549#2:1223\n1620#2,3:1224\n2624#2,3:1228\n2624#2,3:1231\n766#2:1234\n857#2,2:1235\n1620#2,3:1237\n1#3:1227\n*S KotlinDebug\n*F\n+ 1 DescriptorRendererImpl.kt\norg/jetbrains/kotlin/renderer/DescriptorRendererImpl\n*L\n183#1:1206,3\n483#1:1209\n483#1:1210,2\n484#1:1212\n484#1:1213,3\n486#1:1216\n486#1:1217,2\n486#1:1219\n486#1:1220,3\n488#1:1223\n488#1:1224,3\n587#1:1228,3\n589#1:1231,3\n805#1:1234\n805#1:1235,2\n828#1:1237,3\n*E\n"
    }
.end annotation


# instance fields
.field public final d:Lj6/j;

.field public final e:Lh4/f;


# direct methods
.method public constructor <init>(Lj6/j;)V
    .registers 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lj6/c;-><init>()V

    iput-object p1, p0, Lj6/d;->d:Lj6/j;

    new-instance p1, Lj6/d$c;

    invoke-direct {p1, p0}, Lj6/d$c;-><init>(Lj6/d;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lj6/d;->e:Lh4/f;

    return-void
.end method

.method public static synthetic Q(Lj6/d;Ljava/lang/StringBuilder;Lj5/a;Lj5/e;I)V
    .registers 5

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    return-void
.end method

.method public static final x(Lj6/d;Li5/o0;Ljava/lang/StringBuilder;)V
    .registers 10

    invoke-virtual {p0}, Lj6/d;->H()Z

    move-result v0

    const-string v1, "property.typeParameters"

    const/4 v2, 0x1

    if-nez v0, :cond_e2

    invoke-virtual {p0}, Lj6/d;->G()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_d2

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lj6/h;->g:Lj6/h;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_7a

    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    invoke-interface {p1}, Li5/o0;->p0()Li5/v;

    move-result-object v0

    if-eqz v0, :cond_2c

    sget-object v4, Lj5/e;->b:Lj5/e;

    invoke-virtual {p0, p2, v0, v4}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    :cond_2c
    invoke-interface {p1}, Li5/o0;->M()Li5/v;

    move-result-object v0

    if-eqz v0, :cond_37

    sget-object v4, Lj5/e;->j:Lj5/e;

    invoke-virtual {p0, p2, v0, v4}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    :cond_37
    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v4, v0, Lj6/j;->G:Lv4/c;

    sget-object v5, Lj6/j;->W:[Lz4/n;

    const/16 v6, 0x1f

    aget-object v5, v5, v6

    invoke-interface {v4, v0, v5}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/p;

    sget-object v4, Lj6/p;->c:Lj6/p;

    if-ne v0, v4, :cond_7a

    invoke-interface {p1}, Li5/o0;->getGetter()Li5/p0;

    move-result-object v0

    if-eqz v0, :cond_56

    sget-object v4, Lj5/e;->e:Lj5/e;

    invoke-virtual {p0, p2, v0, v4}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    :cond_56
    invoke-interface {p1}, Li5/o0;->getSetter()Li5/q0;

    move-result-object v0

    if-eqz v0, :cond_7a

    sget-object v4, Lj5/e;->f:Lj5/e;

    invoke-virtual {p0, p2, v0, v4}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    invoke-interface {v0}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    const-string v4, "setter.valueParameters"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/e1;

    const-string v4, "it"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lj5/e;->i:Lj5/e;

    invoke-virtual {p0, p2, v0, v4}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    :cond_7a
    :goto_7a
    invoke-interface {p1}, Li5/a;->q0()Ljava/util/List;

    move-result-object v0

    const-string v4, "property.contextReceiverParameters"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lj6/d;->T(Ljava/util/List;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v0

    const-string v4, "property.visibility"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lj6/d;->w0(Li5/t;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lj6/h;->n:Lj6/h;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {p1}, Li5/f1;->isConst()Z

    move-result v0

    if-eqz v0, :cond_a6

    move v0, v2

    goto :goto_a7

    :cond_a6
    move v0, v3

    :goto_a7
    const-string v4, "const"

    invoke-virtual {p0, p2, v0, v4}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->a0(Li5/c0;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->d0(Li5/b;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->i0(Li5/b;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lj6/h;->o:Lj6/h;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {p1}, Li5/f1;->r0()Z

    move-result v0

    if-eqz v0, :cond_c9

    move v0, v2

    goto :goto_ca

    :cond_c9
    move v0, v3

    :goto_ca
    const-string v4, "lateinit"

    invoke-virtual {p0, p2, v0, v4}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->Z(Li5/b;Ljava/lang/StringBuilder;)V

    :cond_d2
    invoke-virtual {p0, p1, p2, v3}, Lj6/d;->t0(Li5/f1;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, Li5/a;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v2}, Lj6/d;->s0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->l0(Li5/a;Ljava/lang/StringBuilder;)V

    :cond_e2
    invoke-virtual {p0, p1, p2, v2}, Lj6/d;->f0(Li5/l;Ljava/lang/StringBuilder;Z)V

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object v0

    const-string v2, "property.type"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lj6/d;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lj6/d;->m0(Li5/a;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->X(Li5/f1;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, Li5/a;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lj6/d;->x0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public A()Z
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->N:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public B()Z
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->U:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public C()Lj6/b;
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->b:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj6/b;

    return-object p0
.end method

.method public D()Z
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->R:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public E()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lj6/h;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->e:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public F()Z
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->z:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public G()Z
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->g:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public H()Z
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->f:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public I()Lj6/q;
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->C:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj6/q;

    return-object p0
.end method

.method public J()Lj6/c$l;
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->B:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj6/c$l;

    return-object p0
.end method

.method public K()Z
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->j:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public L()Z
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->v:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final M()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object p0

    const-string v0, ">"

    invoke-virtual {p0, v0}, Lj6/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final N(Li5/c0;)Li5/d0;
    .registers 8

    sget-object p0, Li5/d0;->c:Li5/d0;

    sget-object v0, Li5/d0;->d:Li5/d0;

    sget-object v1, Li5/f;->b:Li5/f;

    sget-object v2, Li5/d0;->a:Li5/d0;

    instance-of v3, p1, Li5/e;

    if-eqz v3, :cond_17

    check-cast p1, Li5/e;

    invoke-interface {p1}, Li5/e;->f()Li5/f;

    move-result-object p0

    if-ne p0, v1, :cond_15

    goto :goto_16

    :cond_15
    move-object v0, v2

    :goto_16
    return-object v0

    :cond_17
    invoke-interface {p1}, Li5/m;->b()Li5/l;

    move-result-object v3

    instance-of v4, v3, Li5/e;

    if-eqz v4, :cond_22

    check-cast v3, Li5/e;

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    if-nez v3, :cond_26

    return-object v2

    :cond_26
    instance-of v4, p1, Li5/b;

    if-nez v4, :cond_2b

    return-object v2

    :cond_2b
    check-cast p1, Li5/b;

    invoke-interface {p1}, Li5/b;->d()Ljava/util/Collection;

    move-result-object v4

    const-string v5, "this.overriddenDescriptors"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_45

    invoke-interface {v3}, Li5/e;->o()Li5/d0;

    move-result-object v4

    if-eq v4, v2, :cond_45

    return-object p0

    :cond_45
    invoke-interface {v3}, Li5/e;->f()Li5/f;

    move-result-object v3

    if-ne v3, v1, :cond_5f

    invoke-interface {p1}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v1

    sget-object v3, Li5/s;->a:Li5/t;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-interface {p1}, Li5/c0;->o()Li5/d0;

    move-result-object p1

    if-ne p1, v0, :cond_60

    move-object p0, v0

    goto :goto_60

    :cond_5f
    move-object p0, v2

    :cond_60
    :goto_60
    return-object p0
.end method

.method public final O()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object p0

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lj6/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V
    .registers 10

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj6/h;->g:Lj6/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    instance-of v0, p2, Ly6/l0;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->K:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_32

    :cond_22
    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->J:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_32
    iget-object v1, p0, Lj6/d;->d:Lj6/j;

    iget-object v2, v1, Lj6/j;->L:Lv4/c;

    sget-object v3, Lj6/j;->W:[Lz4/n;

    const/16 v4, 0x24

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4a
    :goto_4a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj5/c;

    invoke-interface {v2}, Lj5/c;->e()Lh6/c;

    move-result-object v3

    invoke-static {v0, v3}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-interface {v2}, Lj5/c;->e()Lh6/c;

    move-result-object v3

    sget-object v4, Lf5/j$a;->s:Lh6/c;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    if-eqz v1, :cond_7a

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4a

    :cond_7a
    invoke-virtual {p0, v2, p3}, Lj6/d;->q(Lj5/c;Lj5/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj6/d;->d:Lj6/j;

    iget-object v3, v2, Lj6/j;->I:Lv4/c;

    sget-object v4, Lj6/j;->W:[Lz4/n;

    const/16 v5, 0x21

    aget-object v4, v4, v5

    invoke-interface {v3, v2, v4}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a2

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "append(\'\\n\')"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4a

    :cond_a2
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_a8
    return-void
.end method

.method public final R(Li5/i;Ljava/lang/StringBuilder;)V
    .registers 6

    invoke-interface {p1}, Li5/i;->n()Ljava/util/List;

    move-result-object v0

    const-string v1, "classifier.declaredTypeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/h;->h()Ly6/j1;

    move-result-object v1

    invoke-interface {v1}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v1

    const-string v2, "classifier.typeConstructor.parameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lj6/d;->K()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p1}, Li5/i;->isInner()Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_45

    const-string p1, " /*captured type parameters: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lj6/d;->r0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p0, "*/"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    return-void
.end method

.method public final S(Lm6/g;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm6/g<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    instance-of v0, p1, Lm6/b;

    if-eqz v0, :cond_20

    check-cast p1, Lm6/b;

    iget-object p1, p1, Lm6/g;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lj6/d$d;

    invoke-direct {v6, p0}, Lj6/d$d;-><init>(Lj6/d;)V

    const/16 v7, 0x18

    const-string v1, ", "

    const-string v2, "{"

    const-string v3, "}"

    invoke-static/range {v0 .. v7}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_a1

    :cond_20
    instance-of v0, p1, Lm6/a;

    if-eqz v0, :cond_37

    check-cast p1, Lm6/a;

    iget-object p1, p1, Lm6/g;->a:Ljava/lang/Object;

    check-cast p1, Lj5/c;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lj6/c;->r(Lj6/c;Lj5/c;Lj5/e;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "@"

    invoke-static {p0, p1}, Lk7/q;->J(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a1

    :cond_37
    instance-of p0, p1, Lm6/r;

    if-eqz p0, :cond_9d

    check-cast p1, Lm6/r;

    iget-object p0, p1, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Lm6/r$a;

    instance-of p1, p0, Lm6/r$a$a;

    const-string v0, "::class"

    if-eqz p1, :cond_5b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Lm6/r$a$a;

    iget-object p0, p0, Lm6/r$a$a;->a:Ly6/l0;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a1

    :cond_5b
    instance-of p1, p0, Lm6/r$a$b;

    if-eqz p1, :cond_97

    check-cast p0, Lm6/r$a$b;

    iget-object p1, p0, Lm6/r$a$b;->a:Lm6/f;

    iget-object p1, p1, Lm6/f;->a:Lh6/b;

    invoke-virtual {p1}, Lh6/b;->b()Lh6/c;

    move-result-object p1

    invoke-virtual {p1}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "classValue.classId.asSingleFqName().asString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lm6/r$a$b;->a:Lm6/f;

    iget p0, p0, Lm6/f;->b:I

    const/4 v1, 0x0

    :goto_77
    if-ge v1, p0, :cond_92

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kotlin.Array<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    :cond_92
    invoke-static {p1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a1

    :cond_97
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_9d
    invoke-virtual {p1}, Lm6/g;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_a1
    return-object p0
.end method

.method public final T(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/r0;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_48

    const-string v0, "context("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/r0;

    sget-object v4, Lj5/e;->g:Lj5/e;

    invoke-virtual {p0, p2, v3, v4}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    invoke-interface {v3}, Li5/d1;->getType()Ly6/l0;

    move-result-object v3

    const-string v4, "contextReceiver.type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lj6/d;->W(Ly6/l0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Li4/o;->e(Ljava/util/List;)I

    move-result v3

    if-ne v1, v3, :cond_41

    const-string v1, ") "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    :cond_41
    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_46
    move v1, v2

    goto :goto_12

    :cond_48
    return-void
.end method

.method public final U(Ljava/lang/StringBuilder;Ly6/l0;)V
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    instance-of v1, p2, Ly6/u;

    if-eqz v1, :cond_c

    move-object v1, p2

    check-cast v1, Ly6/u;

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    if-eqz v1, :cond_12

    iget-object v1, v1, Ly6/u;->b:Ly6/s0;

    goto :goto_13

    :cond_12
    move-object v1, v0

    :goto_13
    invoke-static {p2}, Ly0/b;->c(Ly6/l0;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "<this>"

    if-eqz v2, :cond_94

    invoke-static {p2}, Ld7/c;->k(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->T:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v5, 0x2d

    aget-object v2, v2, v5

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, La7/j;->a:La7/j;

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ld7/c;->k(Ly6/l0;)Z

    invoke-virtual {p2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La7/h;

    iget-object v0, v0, La7/h;->b:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lj6/d;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e7

    :cond_5a
    instance-of v0, p2, La7/g;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->V:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7d

    move-object v0, p2

    check-cast v0, La7/g;

    iget-object v0, v0, La7/g;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    :cond_7d
    invoke-virtual {p2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_88
    invoke-virtual {p2}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj6/d;->o0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e7

    :cond_94
    instance-of v2, p2, Ly6/a1;

    if-eqz v2, :cond_a5

    move-object p0, p2

    check-cast p0, Ly6/a1;

    iget-object p0, p0, Ly6/f;->b:Lz6/n;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e7

    :cond_a5
    instance-of v2, v1, Ly6/a1;

    if-eqz v2, :cond_b5

    check-cast v1, Ly6/a1;

    iget-object p0, v1, Ly6/f;->b:Lz6/n;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e7

    :cond_b5
    invoke-virtual {p2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v1

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v2

    invoke-interface {v2}, Ly6/j1;->e()Li5/h;

    move-result-object v2

    instance-of v5, v2, Li5/i;

    if-eqz v5, :cond_cb

    move-object v0, v2

    check-cast v0, Li5/i;

    :cond_cb
    invoke-static {p2, v0, v3}, Li5/b1;->a(Ly6/l0;Li5/i;I)Li/g;

    move-result-object v0

    if-nez v0, :cond_e4

    invoke-virtual {p0, v1}, Lj6/d;->p0(Ly6/j1;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj6/d;->o0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e7

    :cond_e4
    invoke-virtual {p0, p1, v0}, Lj6/d;->k0(Ljava/lang/StringBuilder;Li/g;)V

    :goto_e7
    invoke-virtual {p2}, Ly6/l0;->G0()Z

    move-result p0

    if-eqz p0, :cond_f2

    const-string p0, "?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f2
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ly6/d2;

    instance-of p0, p2, Ly6/u;

    if-eqz p0, :cond_100

    const-string p0, " & Any"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_100
    return-void
.end method

.method public final V(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-ne p0, v0, :cond_16

    const-string p0, "<font color=red><b>"

    const-string v0, "</b></font>"

    invoke-static {p0, p1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_16
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method public final W(Ly6/l0;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lj6/d;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj6/d;->y0(Ly6/l0;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {p1}, Ly6/a2;->g(Ly6/l0;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_10
    instance-of p0, p1, Ly6/u;

    if-eqz p0, :cond_2a

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2a
    return-object v0
.end method

.method public final X(Li5/f1;Ljava/lang/StringBuilder;)V
    .registers 7

    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->u:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Li5/f1;->i0()Lm6/g;

    move-result-object p1

    if-eqz p1, :cond_2c

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lj6/d;->S(Lm6/g;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj6/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    return-void
.end method

.method public final Y(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Lj6/d;->B()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_23

    :cond_14
    const-string p0, "<b>"

    const-string v0, "</b>"

    invoke-static {p0, p1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :cond_1d
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_23
    :goto_23
    return-object p1
.end method

.method public final Z(Li5/b;Ljava/lang/StringBuilder;)V
    .registers 5

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj6/h;->i:Lj6/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Lj6/d;->K()Z

    move-result p0

    if-eqz p0, :cond_34

    invoke-interface {p1}, Li5/b;->f()Li5/b$a;

    move-result-object p0

    sget-object v0, Li5/b$a;->a:Li5/b$a;

    if-eq p0, v0, :cond_34

    const-string p0, "/*"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Li5/b;->f()Li5/b$a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg7/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*/ "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    return-void
.end method

.method public a(Z)V
    .registers 5

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->f:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method

.method public final a0(Li5/c0;Ljava/lang/StringBuilder;)V
    .registers 7

    invoke-interface {p1}, Li5/c0;->isExternal()Z

    move-result v0

    const-string v1, "external"

    invoke-virtual {p0, p2, v0, v1}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj6/h;->l:Lj6/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Li5/c0;->f0()Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    const-string v3, "expect"

    invoke-virtual {p0, p2, v0, v3}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lj6/h;->m:Lj6/h;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Li5/c0;->V()Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    const-string p1, "actual"

    invoke-virtual {p0, p2, v1, p1}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    invoke-virtual {p0, p1}, Lj6/j;->b(Z)V

    return-void
.end method

.method public b0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1b

    const-string p0, "<i>"

    const-string v0, "</i>"

    invoke-static {p0, p1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    :cond_1b
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_21
    :goto_21
    return-object p1
.end method

.method public c()Z
    .registers 4

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->m:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final c0(Li5/d0;Ljava/lang/StringBuilder;Li5/d0;)V
    .registers 8

    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->p:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    if-ne p1, p3, :cond_19

    return-void

    :cond_19
    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object p3

    sget-object v0, Lj6/h;->e:Lj6/h;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg7/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .registers 2

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    invoke-virtual {p0, p1}, Lj6/j;->d(Z)V

    return-void
.end method

.method public final d0(Li5/b;Ljava/lang/StringBuilder;)V
    .registers 7

    invoke-static {p1}, Lk6/i;->y(Li5/l;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Li5/c0;->o()Li5/d0;

    move-result-object v0

    sget-object v1, Li5/d0;->a:Li5/d0;

    if-eq v0, v1, :cond_47

    :cond_e
    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->A:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/n;

    sget-object v1, Lj6/n;->a:Lj6/n;

    if-ne v0, v1, :cond_37

    invoke-interface {p1}, Li5/c0;->o()Li5/d0;

    move-result-object v0

    sget-object v1, Li5/d0;->c:Li5/d0;

    if-ne v0, v1, :cond_37

    invoke-interface {p1}, Li5/b;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_37

    return-void

    :cond_37
    invoke-interface {p1}, Li5/c0;->o()Li5/d0;

    move-result-object v0

    const-string v1, "callable.modality"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lj6/d;->N(Li5/c0;)Li5/d0;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lj6/d;->c0(Li5/d0;Ljava/lang/StringBuilder;Li5/d0;)V

    :cond_47
    return-void
.end method

.method public e(Z)V
    .registers 5

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->E:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method

.method public final e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_e

    invoke-virtual {p0, p3}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    return-void
.end method

.method public f()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->K:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final f0(Li5/l;Ljava/lang/StringBuilder;Z)V
    .registers 5

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object p1

    const-string v0, "descriptor.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lj6/d;->u(Lh6/f;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public g()Z
    .registers 1

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    invoke-virtual {p0}, Lj6/j;->g()Z

    move-result p0

    return p0
.end method

.method public final g0(Ljava/lang/StringBuilder;Ly6/l0;)V
    .registers 7

    invoke-virtual {p2}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v0

    instance-of v1, v0, Ly6/a;

    if-eqz v1, :cond_b

    check-cast v0, Ly6/a;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_6b

    iget-object p2, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, p2, Lj6/j;->Q:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v3, 0x29

    aget-object v3, v2, v3

    invoke-interface {v1, p2, v3}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2a

    iget-object p2, v0, Ly6/a;->b:Ly6/s0;

    invoke-virtual {p0, p1, p2}, Lj6/d;->h0(Ljava/lang/StringBuilder;Ly6/l0;)V

    goto :goto_6a

    :cond_2a
    iget-object p2, v0, Ly6/a;->c:Ly6/s0;

    invoke-virtual {p0, p1, p2}, Lj6/d;->h0(Ljava/lang/StringBuilder;Ly6/l0;)V

    iget-object p2, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, p2, Lj6/j;->P:Lv4/c;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-interface {v1, p2, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object p2

    sget-object v1, Lj6/q;->b:Lj6/q;

    if-ne p2, v1, :cond_50

    const-string p2, "<font color=\"808080\"><i>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    const-string p2, " /* = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Ly6/a;->b:Ly6/s0;

    invoke-virtual {p0, p1, p2}, Lj6/d;->h0(Ljava/lang/StringBuilder;Ly6/l0;)V

    const-string p2, " */"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object p0

    if-ne p0, v1, :cond_6a

    const-string p0, "</i></font>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    invoke-virtual {p0, p1, p2}, Lj6/d;->h0(Ljava/lang/StringBuilder;Ly6/l0;)V

    return-void
.end method

.method public h(Lj6/o;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    invoke-virtual {p0, p1}, Lj6/j;->h(Lj6/o;)V

    return-void
.end method

.method public final h0(Ljava/lang/StringBuilder;Ly6/l0;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Ly6/f2;

    if-eqz v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lj6/d;->g()Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object v3, v2

    check-cast v3, Ly6/f2;

    invoke-virtual {v3}, Ly6/f2;->K0()Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v0, "<Not computed yet>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1f
    invoke-virtual/range {p2 .. p2}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v2

    instance-of v3, v2, Ly6/e0;

    if-eqz v3, :cond_32

    check-cast v2, Ly6/e0;

    invoke-virtual {v2, v0, v0}, Ly6/e0;->N0(Lj6/c;Lj6/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_24c

    :cond_32
    instance-of v3, v2, Ly6/s0;

    if-eqz v3, :cond_24c

    check-cast v2, Ly6/s0;

    sget-object v3, Ly6/a2;->b:Ly6/s0;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "???"

    if-nez v3, :cond_249

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_54

    invoke-virtual {v2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v6

    sget-object v7, Ly6/a2;->a:Ly6/s0;

    check-cast v7, La7/g;

    iget-object v7, v7, La7/g;->b:Ly6/j1;

    if-ne v6, v7, :cond_54

    move v6, v5

    goto :goto_55

    :cond_54
    move v6, v3

    :goto_55
    if-eqz v6, :cond_59

    goto/16 :goto_249

    :cond_59
    if-nez v2, :cond_5c

    goto :goto_6e

    :cond_5c
    invoke-virtual {v2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v6

    instance-of v7, v6, La7/h;

    if-eqz v7, :cond_6e

    check-cast v6, La7/h;

    iget-object v6, v6, La7/h;->a:La7/i;

    sget-object v7, La7/i;->y:La7/i;

    if-ne v6, v7, :cond_6e

    move v6, v5

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v6, v3

    :goto_6f
    if-eqz v6, :cond_a4

    iget-object v5, v0, Lj6/d;->d:Lj6/j;

    iget-object v6, v5, Lj6/j;->t:Lv4/c;

    sget-object v7, Lj6/j;->W:[Lz4/n;

    const/16 v8, 0x12

    aget-object v7, v7, v8

    invoke-interface {v6, v5, v7}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-virtual {v2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, La7/h;

    iget-object v2, v2, La7/h;->b:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lj6/d;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_24c

    :cond_9f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_24c

    :cond_a4
    invoke-static {v2}, Ly0/b;->c(Ly6/l0;)Z

    move-result v6

    if-eqz v6, :cond_af

    invoke-virtual {v0, v1, v2}, Lj6/d;->U(Ljava/lang/StringBuilder;Ly6/l0;)V

    goto/16 :goto_24c

    :cond_af
    invoke-virtual {v0, v2}, Lj6/d;->y0(Ly6/l0;)Z

    move-result v6

    if-eqz v6, :cond_245

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    iget-object v7, v0, Lj6/d;->e:Lh4/f;

    invoke-interface {v7}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj6/d;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, v1, v2, v9, v8}, Lj6/d;->Q(Lj6/d;Ljava/lang/StringBuilder;Lj5/a;Lj5/e;I)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eq v7, v6, :cond_ce

    move v7, v5

    goto :goto_cf

    :cond_ce
    move v7, v3

    :goto_cf
    invoke-static {v2}, Lf5/f;->f(Ly6/l0;)Ly6/l0;

    move-result-object v8

    invoke-static {v2}, Lf5/f;->d(Ly6/l0;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v5

    const-string v12, ", "

    const-string v13, ") "

    if-eqz v11, :cond_112

    const-string v11, "context("

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Li4/o;->e(Ljava/util/List;)I

    move-result v11

    invoke-interface {v10, v3, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_f3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_106

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ly6/l0;

    invoke-virtual {v0, v1, v14}, Lj6/d;->g0(Ljava/lang/StringBuilder;Ly6/l0;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f3

    :cond_106
    invoke-static {v10}, Li4/v;->O(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly6/l0;

    invoke-virtual {v0, v1, v10}, Lj6/d;->g0(Ljava/lang/StringBuilder;Ly6/l0;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_112
    invoke-static {v2}, Lf5/f;->k(Ly6/l0;)Z

    move-result v10

    invoke-virtual {v2}, Ly6/l0;->G0()Z

    move-result v11

    if-nez v11, :cond_123

    if-eqz v7, :cond_121

    if-eqz v8, :cond_121

    goto :goto_123

    :cond_121
    move v14, v3

    goto :goto_124

    :cond_123
    :goto_123
    move v14, v5

    :goto_124
    const-string v15, "("

    if-eqz v14, :cond_152

    if-eqz v10, :cond_130

    const/16 v7, 0x28

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_152

    :cond_130
    if-eqz v7, :cond_14f

    invoke-static/range {p1 .. p1}, Lk7/t;->Z(Ljava/lang/CharSequence;)C

    move-result v6

    invoke-static {v6}, Lk7/a;->c(C)Z

    invoke-static/range {p1 .. p1}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-eq v6, v7, :cond_14f

    invoke-static/range {p1 .. p1}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result v6

    const-string v7, "()"

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14f
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_152
    :goto_152
    const-string v6, "suspend"

    invoke-virtual {v0, v1, v10, v6}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v6, ")"

    if-eqz v8, :cond_197

    invoke-virtual {v0, v8}, Lj6/d;->y0(Ly6/l0;)Z

    move-result v7

    if-eqz v7, :cond_167

    invoke-virtual {v8}, Ly6/l0;->G0()Z

    move-result v7

    if-eqz v7, :cond_184

    :cond_167
    invoke-static {v8}, Lf5/f;->k(Ly6/l0;)Z

    move-result v7

    if-nez v7, :cond_17a

    invoke-virtual {v8}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v7

    invoke-interface {v7}, Lj5/h;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_178

    goto :goto_17a

    :cond_178
    move v7, v3

    goto :goto_17b

    :cond_17a
    :goto_17a
    move v7, v5

    :goto_17b
    if-nez v7, :cond_184

    instance-of v7, v8, Ly6/u;

    if-eqz v7, :cond_182

    goto :goto_184

    :cond_182
    move v7, v3

    goto :goto_185

    :cond_184
    :goto_184
    move v7, v5

    :goto_185
    if-eqz v7, :cond_18a

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18a
    invoke-virtual {v0, v1, v8}, Lj6/d;->g0(Ljava/lang/StringBuilder;Ly6/l0;)V

    if-eqz v7, :cond_192

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_192
    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_197
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lf5/f;->i(Ly6/l0;)Z

    move-result v7

    if-eqz v7, :cond_1ae

    invoke-virtual {v2}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_1ae

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_207

    :cond_1ae
    invoke-static {v2}, Lf5/f;->h(Ly6/l0;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v3

    :goto_1b7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_207

    add-int/lit8 v8, v7, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly6/q1;

    if-lez v7, :cond_1ca

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ca
    iget-object v7, v0, Lj6/d;->d:Lj6/j;

    iget-object v15, v7, Lj6/j;->S:Lv4/c;

    sget-object v16, Lj6/j;->W:[Lz4/n;

    const/16 v17, 0x2b

    aget-object v9, v16, v17

    invoke-interface {v15, v7, v9}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1ee

    invoke-interface {v10}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v7

    const-string v9, "typeProjection.type"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lf5/f;->c(Ly6/l0;)Lh6/f;

    move-result-object v7

    goto :goto_1ef

    :cond_1ee
    const/4 v7, 0x0

    :goto_1ef
    if-eqz v7, :cond_1fd

    invoke-virtual {v0, v7, v3}, Lj6/d;->u(Lh6/f;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1fd
    invoke-virtual {v0, v10}, Lj6/d;->w(Ly6/q1;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v8

    const/4 v9, 0x0

    goto :goto_1b7

    :cond_207
    :goto_207
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lj6/d;->I()Lj6/q;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_21f

    if-ne v3, v5, :cond_219

    const-string v3, "&rarr;"

    goto :goto_229

    :cond_219
    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/h;-><init>()V

    throw v0

    :cond_21f
    invoke-virtual/range {p0 .. p0}, Lj6/d;->I()Lj6/q;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Lj6/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_229
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lf5/f;->g(Ly6/l0;)Ly6/l0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lj6/d;->g0(Ljava/lang/StringBuilder;Ly6/l0;)V

    if-eqz v14, :cond_23d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23d
    if-eqz v11, :cond_24c

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24c

    :cond_245
    invoke-virtual {v0, v1, v2}, Lj6/d;->U(Ljava/lang/StringBuilder;Ly6/l0;)V

    goto :goto_24c

    :cond_249
    :goto_249
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24c
    :goto_24c
    return-void
.end method

.method public i(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lh6/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj6/j;->K:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method

.method public final i0(Li5/b;Ljava/lang/StringBuilder;)V
    .registers 8

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj6/h;->f:Lj6/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {p1}, Li5/b;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v2, v0, Lj6/j;->A:Lv4/c;

    sget-object v3, Lj6/j;->W:[Lz4/n;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    invoke-interface {v2, v0, v3}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/n;

    sget-object v2, Lj6/n;->b:Lj6/n;

    if-eq v0, v2, :cond_4d

    const-string v0, "override"

    invoke-virtual {p0, p2, v1, v0}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lj6/d;->K()Z

    move-result p0

    if-eqz p0, :cond_4d

    const-string p0, "/*"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Li5/b;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "*/ "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    return-void
.end method

.method public j(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lj6/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    invoke-virtual {p0, p1}, Lj6/j;->j(Ljava/util/Set;)V

    return-void
.end method

.method public final j0(Lh6/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 4

    invoke-virtual {p0, p2}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lh6/c;->j()Lh6/d;

    move-result-object p1

    const-string p2, "fqName.toUnsafe()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lj6/d;->t(Lh6/d;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    if-eqz p1, :cond_27

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    return-void
.end method

.method public k(Lj6/b;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    invoke-virtual {p0, p1}, Lj6/j;->k(Lj6/b;)V

    return-void
.end method

.method public final k0(Ljava/lang/StringBuilder;Li/g;)V
    .registers 5

    iget-object v0, p2, Li/g;->c:Ljava/lang/Object;

    check-cast v0, Li/g;

    if-eqz v0, :cond_24

    invoke-virtual {p0, p1, v0}, Lj6/d;->k0(Ljava/lang/StringBuilder;Li/g;)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p2, Li/g;->b:Ljava/lang/Object;

    check-cast v0, Li5/i;

    invoke-interface {v0}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    const-string v1, "possiblyInnerType.classifierDescriptor.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lj6/d;->u(Lh6/f;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_24
    iget-object v0, p2, Li/g;->b:Ljava/lang/Object;

    check-cast v0, Li5/i;

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object v0

    const-string v1, "possiblyInnerType.classi…escriptor.typeConstructor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lj6/d;->p0(Ly6/j1;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_38
    iget-object p2, p2, Li/g;->a:Ljava/util/List;

    invoke-virtual {p0, p2}, Lj6/d;->o0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public l(Z)V
    .registers 5

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->h:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method

.method public final l0(Li5/a;Ljava/lang/StringBuilder;)V
    .registers 4

    invoke-interface {p1}, Li5/a;->L()Li5/r0;

    move-result-object p1

    if-eqz p1, :cond_20

    sget-object v0, Lj5/e;->g:Lj5/e;

    invoke-virtual {p0, p2, p1, v0}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lj6/d;->W(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    return-void
.end method

.method public m(Z)V
    .registers 5

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->F:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method

.method public final m0(Li5/a;Ljava/lang/StringBuilder;)V
    .registers 7

    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->E:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-interface {p1}, Li5/a;->L()Li5/r0;

    move-result-object p1

    if-eqz p1, :cond_32

    const-string v0, " on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lj6/d;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    return-void
.end method

.method public n(Lj6/q;)V
    .registers 5

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj6/j;->C:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method

.method public final n0(Ljava/lang/StringBuilder;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 v0, 0x20

    if-eqz p0, :cond_10

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    if-eq p0, v0, :cond_13

    :cond_10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    return-void
.end method

.method public o(Z)V
    .registers 5

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v0, p0, Lj6/j;->v:Lv4/c;

    sget-object v1, Lj6/j;->W:[Lz4/n;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method

.method public o0(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "typeArguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, ""

    goto :goto_2d

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lj6/d;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p1}, Lj6/d;->y(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {p0}, Lj6/d;->M()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2d
    return-object p0
.end method

.method public p(Li5/l;)Ljava/lang/String;
    .registers 7

    const-string v0, "declarationDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lj6/d$a;

    invoke-direct {v1, p0}, Lj6/d$a;-><init>(Lj6/d;)V

    invoke-interface {p1, v1, v0}, Li5/l;->F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lj6/d;->d:Lj6/j;

    iget-object v2, v1, Lj6/j;->c:Lv4/c;

    sget-object v3, Lj6/j;->W:[Lz4/n;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-interface {v2, v1, v4}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8c

    instance-of v1, p1, Li5/h0;

    if-nez v1, :cond_8c

    instance-of v1, p1, Li5/l0;

    if-eqz v1, :cond_30

    goto :goto_8c

    :cond_30
    invoke-interface {p1}, Li5/l;->b()Li5/l;

    move-result-object v1

    if-eqz v1, :cond_8c

    instance-of v2, v1, Li5/e0;

    if-nez v2, :cond_8c

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "defined in"

    invoke-virtual {p0, v4}, Lj6/d;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object v2

    const-string v4, "getFqName(containingDeclaration)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lh6/d;->e()Z

    move-result v4

    if-eqz v4, :cond_5d

    const-string v2, "root package"

    goto :goto_61

    :cond_5d
    invoke-virtual {p0, v2}, Lj6/d;->t(Lh6/d;)Ljava/lang/String;

    move-result-object v2

    :goto_61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object v2, p0, Lj6/j;->d:Lv4/c;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-interface {v2, p0, v3}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8c

    instance-of p0, v1, Li5/h0;

    if-eqz p0, :cond_8c

    instance-of p0, p1, Li5/o;

    if-eqz p0, :cond_8c

    check-cast p1, Li5/o;

    invoke-interface {p1}, Li5/o;->getSource()Li5/v0;

    move-result-object p0

    invoke-interface {p0}, Li5/v0;->b()Li5/w0;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    :goto_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public p0(Ly6/j1;)Ljava/lang/String;
    .registers 5

    const-string v0, "typeConstructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    instance-of v1, v0, Li5/a1;

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_12

    :cond_10
    instance-of v1, v0, Li5/e;

    :goto_12
    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    instance-of v2, v0, Li5/z0;

    :goto_17
    if-eqz v2, :cond_36

    const-string p1, "klass"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, La7/j;->f(Li5/l;)Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :cond_2d
    invoke-virtual {p0}, Lj6/d;->C()Lj6/b;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Lj6/b;->a(Li5/h;Lj6/c;)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :cond_36
    if-nez v0, :cond_4a

    instance-of p0, p1, Ly6/j0;

    if-eqz p0, :cond_45

    check-cast p1, Ly6/j0;

    sget-object p0, Lj6/d$e;->a:Lj6/d$e;

    invoke-virtual {p1, p0}, Ly6/j0;->i(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :cond_45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_49
    return-object p0

    :cond_4a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected classifier: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public q(Lj5/c;Lj5/e;)Ljava/lang/String;
    .registers 13

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lj5/e;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-interface {p1}, Lj5/c;->getType()Ly6/l0;

    move-result-object p2

    invoke-virtual {p0, p2}, Lj6/d;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/d;->d:Lj6/j;

    invoke-virtual {v1}, Lj6/j;->p()Lj6/a;

    move-result-object v1

    iget-boolean v1, v1, Lj6/a;->a:Z

    if-eqz v1, :cond_1ae

    invoke-interface {p1}, Lj5/c;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lj6/d;->d:Lj6/j;

    iget-object v3, v2, Lj6/j;->H:Lv4/c;

    sget-object v4, Lj6/j;->W:[Lz4/n;

    const/16 v5, 0x20

    aget-object v4, v4, v5

    invoke-interface {v3, v2, v4}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5c

    invoke-static {p1}, Lo6/c;->d(Lj5/c;)Li5/e;

    move-result-object p1

    goto :goto_5d

    :cond_5c
    move-object p1, v3

    :goto_5d
    const/16 v2, 0xa

    if-eqz p1, :cond_af

    invoke-interface {p1}, Li5/e;->A()Li5/d;

    move-result-object p1

    if-eqz p1, :cond_af

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_af

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_76
    :goto_76
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Li5/e1;

    invoke-interface {v5}, Li5/e1;->t0()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    :cond_8d
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/e1;

    invoke-interface {v4}, Li5/l;->getName()Lh6/f;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    :cond_ae
    move-object v3, p1

    :cond_af
    if-nez v3, :cond_b3

    sget-object v3, Li4/y;->a:Li4/y;

    :cond_b3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_bc
    :goto_bc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_da

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lh6/f;

    const-string v8, "it"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v6, v7

    if-eqz v6, :cond_bc

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    :cond_da
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh6/f;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ..."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    :cond_10c
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh6/f;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm6/g;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_151

    invoke-virtual {p0, v2}, Lj6/d;->S(Lm6/g;)Ljava/lang/String;

    move-result-object v2

    goto :goto_153

    :cond_151
    const-string v2, "..."

    :goto_153
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11d

    :cond_15e
    invoke-static {v4, v1}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const-string v1, "<this>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v6, :cond_176

    invoke-static {p1}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :goto_174
    move-object v1, p1

    goto :goto_18e

    :cond_176
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Comparable;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [Ljava/lang/Comparable;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v2

    if-le v1, v6, :cond_189

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_189
    invoke-static {p1}, Li4/j;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_174

    :goto_18e
    iget-object p1, p0, Lj6/d;->d:Lj6/j;

    invoke-virtual {p1}, Lj6/j;->p()Lj6/a;

    move-result-object p1

    iget-boolean p1, p1, Lj6/a;->b:Z

    if-nez p1, :cond_19f

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v6

    if-eqz p1, :cond_1ae

    :cond_19f
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x70

    const-string v3, ", "

    const-string v4, "("

    const-string v5, ")"

    move-object v2, v0

    invoke-static/range {v1 .. v9}, Li4/v;->L(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    :cond_1ae
    invoke-virtual {p0}, Lj6/d;->K()Z

    move-result p0

    if-eqz p0, :cond_1cb

    invoke-static {p2}, Ly0/b;->c(Ly6/l0;)Z

    move-result p0

    if-nez p0, :cond_1c6

    invoke-virtual {p2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    instance-of p0, p0, Li5/g0$b;

    if-eqz p0, :cond_1cb

    :cond_1c6
    const-string p0, " /* annotation class not found */"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1cb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q0(Li5/a1;Ljava/lang/StringBuilder;Z)V
    .registers 12

    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lj6/d;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Lj6/d;->K()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "/*"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Li5/a1;->getIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    invoke-interface {p1}, Li5/a1;->u()Z

    move-result v0

    const-string v1, "reified"

    invoke-virtual {p0, p2, v0, v1}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {p1}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v0

    iget-object v0, v0, Ly6/e2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_39

    move v1, v3

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    invoke-virtual {p0, p2, v1, v0}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    invoke-virtual {p0, p1, p2, p3}, Lj6/d;->f0(Li5/l;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v4, "upperBound"

    const-string v5, " : "

    const/16 v6, 0x8d

    if-le v1, v3, :cond_56

    if-eqz p3, :cond_58

    :cond_56
    if-ne v1, v3, :cond_80

    :cond_58
    invoke-interface {p1}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/l0;

    if-eqz p1, :cond_7c

    invoke-static {p1}, Lf5/g;->I(Ly6/l0;)Z

    move-result v0

    if-nez v0, :cond_ba

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lj6/d;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ba

    :cond_7c
    invoke-static {v6}, Lf5/g;->a(I)V

    throw v0

    :cond_80
    if-eqz p3, :cond_ba

    invoke-interface {p1}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/l0;

    if-eqz v1, :cond_b6

    invoke-static {v1}, Lf5/g;->I(Ly6/l0;)Z

    move-result v7

    if-eqz v7, :cond_9f

    goto :goto_8a

    :cond_9f
    if-eqz v3, :cond_a5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    :cond_a5
    const-string v3, " & "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_aa
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lj6/d;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    goto :goto_8a

    :cond_b6
    invoke-static {v6}, Lf5/g;->a(I)V

    throw v0

    :cond_ba
    :goto_ba
    if-eqz p3, :cond_c3

    invoke-virtual {p0}, Lj6/d;->M()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c3
    return-void
.end method

.method public final r0(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/a1;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lj6/d;->q0(Li5/a1;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_20
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Lf5/g;)Ljava/lang/String;
    .registers 12

    const-string v0, "lowerRendered"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperRendered"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtIns"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lj6/r;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x2

    if-eqz v0, :cond_3d

    const/4 p0, 0x0

    const-string p3, "("

    invoke-static {p2, p3, p0, v2}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    if-eqz p0, :cond_36

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    const/16 p0, 0x21

    invoke-static {p1, p0}, Landroidx/exifinterface/media/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    invoke-virtual {p0}, Lj6/d;->C()Lj6/b;

    move-result-object v0

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lf5/j$a;->C:Lh6/c;

    invoke-virtual {p3, v3}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_111

    const-string v5, "builtIns.collection"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, p0}, Lj6/b;->a(Li5/h;Lj6/c;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Collection"

    invoke-static {v0, v3, v4, v2}, Lk7/q;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Mutable"

    invoke-static {v0, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, p2, v0, v6}, Lj6/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_80

    return-object v5

    :cond_80
    const-string v5, "MutableMap.MutableEntry"

    invoke-static {v0, v5}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Map.Entry"

    invoke-static {v0, v6}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(Mutable)Map.(Mutable)Entry"

    invoke-static {v0, v7}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v5, p2, v6, v0}, Lj6/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_99

    return-object v0

    :cond_99
    invoke-virtual {p0}, Lj6/d;->C()Lj6/b;

    move-result-object v0

    const-string v5, "Array"

    invoke-virtual {p3, v5}, Lf5/g;->k(Ljava/lang/String;)Li5/e;

    move-result-object p3

    const-string v6, "builtIns.array"

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p3, p0}, Lj6/b;->a(Li5/h;Lj6/c;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v5, v4, v2}, Lk7/q;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object v2

    const-string v4, "Array<"

    invoke-virtual {v2, v4}, Lj6/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object v4

    const-string v5, "Array<out "

    invoke-virtual {v4, v5}, Lj6/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object p0

    const-string v4, "Array<(out) "

    invoke-virtual {p0, v4}, Lj6/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p2, v2, p0}, Lj6/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f6

    return-object p0

    :cond_f6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_111
    const/16 p0, 0x22

    invoke-static {p0}, Lf5/g;->a(I)V

    throw v4
.end method

.method public final s0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lj6/d;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lj6/d;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p1}, Lj6/d;->r0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {p0}, Lj6/d;->M()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_27

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    return-void
.end method

.method public t(Lh6/d;)Ljava/lang/String;
    .registers 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lh6/d;->g()Ljava/util/List;

    move-result-object p1

    const-string v0, "fqName.pathSegments()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lj6/r;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj6/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final t0(Li5/f1;Ljava/lang/StringBuilder;Z)V
    .registers 4

    if-nez p3, :cond_6

    instance-of p3, p1, Li5/e1;

    if-nez p3, :cond_1d

    :cond_6
    invoke-interface {p1}, Li5/f1;->K()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "var"

    goto :goto_11

    :cond_f
    const-string p1, "val"

    :goto_11
    invoke-virtual {p0, p1}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    return-void
.end method

.method public u(Lh6/f;Z)Ljava/lang/String;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lj6/r;->a(Lh6/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj6/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lj6/d;->B()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object p0

    sget-object v0, Lj6/q;->b:Lj6/q;

    if-ne p0, v0, :cond_25

    if-eqz p2, :cond_25

    const-string p0, "<b>"

    const-string p2, "</b>"

    invoke-static {p0, p1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_25
    return-object p1
.end method

.method public final u0(Li5/e1;ZLjava/lang/StringBuilder;Z)V
    .registers 14

    if-eqz p4, :cond_10

    const-string v0, "value-parameter"

    invoke-virtual {p0, v0}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p0}, Lj6/d;->K()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "/*"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Li5/e1;->getIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, v0}, Lj6/d;->P(Ljava/lang/StringBuilder;Lj5/a;Lj5/e;)V

    invoke-interface {p1}, Li5/e1;->k0()Z

    move-result v1

    const-string v2, "crossinline"

    invoke-virtual {p0, p3, v1, v2}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {p1}, Li5/e1;->j0()Z

    move-result v1

    const-string v2, "noinline"

    invoke-virtual {p0, p3, v1, v2}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v1, p0, Lj6/d;->d:Lj6/j;

    iget-object v2, v1, Lj6/j;->r:Lv4/c;

    sget-object v3, Lj6/j;->W:[Lz4/n;

    const/16 v4, 0x10

    aget-object v4, v3, v4

    invoke-interface {v2, v1, v4}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6f

    invoke-interface {p1}, Li5/e1;->b()Li5/a;

    move-result-object v1

    instance-of v5, v1, Li5/d;

    if-eqz v5, :cond_60

    move-object v0, v1

    check-cast v0, Li5/d;

    :cond_60
    if-eqz v0, :cond_6a

    invoke-interface {v0}, Li5/k;->Y()Z

    move-result v0

    if-ne v0, v2, :cond_6a

    move v0, v2

    goto :goto_6b

    :cond_6a
    move v0, v4

    :goto_6b
    if-eqz v0, :cond_6f

    move v0, v2

    goto :goto_70

    :cond_6f
    move v0, v4

    :goto_70
    if-eqz v0, :cond_89

    iget-object v1, p0, Lj6/d;->d:Lj6/j;

    iget-object v5, v1, Lj6/j;->s:Lv4/c;

    const/16 v6, 0x11

    aget-object v6, v3, v6

    invoke-interface {v5, v1, v6}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v5, "actual"

    invoke-virtual {p0, p3, v1, v5}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_89
    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object v1

    const-string v5, "variable.type"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/e1;->n0()Ly6/l0;

    move-result-object v5

    if-nez v5, :cond_9a

    move-object v6, v1

    goto :goto_9b

    :cond_9a
    move-object v6, v5

    :goto_9b
    if-eqz v5, :cond_9f

    move v7, v2

    goto :goto_a0

    :cond_9f
    move v7, v4

    :goto_a0
    const-string v8, "vararg"

    invoke-virtual {p0, p3, v7, v8}, Lj6/d;->e0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v0, :cond_af

    if-eqz p4, :cond_b2

    invoke-virtual {p0}, Lj6/d;->H()Z

    move-result v7

    if-nez v7, :cond_b2

    :cond_af
    invoke-virtual {p0, p1, p3, v0}, Lj6/d;->t0(Li5/f1;Ljava/lang/StringBuilder;Z)V

    :cond_b2
    if-eqz p2, :cond_bc

    invoke-virtual {p0, p1, p3, p4}, Lj6/d;->f0(Li5/l;Ljava/lang/StringBuilder;Z)V

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_bc
    invoke-virtual {p0, v6}, Lj6/d;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p3}, Lj6/d;->X(Li5/f1;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lj6/d;->K()Z

    move-result p2

    if-eqz p2, :cond_df

    if-eqz v5, :cond_df

    const-string p2, " /*"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lj6/d;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "*/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_df
    iget-object p2, p0, Lj6/d;->d:Lj6/j;

    iget-object p4, p2, Lj6/j;->y:Lv4/c;

    const/16 v0, 0x17

    aget-object v1, v3, v0

    invoke-interface {p4, p2, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_101

    invoke-virtual {p0}, Lj6/d;->g()Z

    move-result p2

    if-eqz p2, :cond_fa

    invoke-interface {p1}, Li5/e1;->t0()Z

    move-result p2

    goto :goto_fe

    :cond_fa
    invoke-static {p1}, Lo6/c;->a(Li5/e1;)Z

    move-result p2

    :goto_fe
    if-eqz p2, :cond_101

    goto :goto_102

    :cond_101
    move v2, v4

    :goto_102
    if-eqz v2, :cond_129

    const-string p2, " = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lj6/d;->d:Lj6/j;

    iget-object p4, p0, Lj6/j;->y:Lv4/c;

    aget-object v0, v3, v0

    invoke-interface {p4, p0, v0}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_129
    return-void
.end method

.method public v(Ly6/l0;)Ljava/lang/String;
    .registers 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj6/d;->d:Lj6/j;

    iget-object v2, v1, Lj6/j;->x:Lv4/c;

    sget-object v3, Lj6/j;->W:[Lz4/n;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/l0;

    invoke-virtual {p0, v0, p1}, Lj6/d;->g0(Ljava/lang/StringBuilder;Ly6/l0;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Li5/e1;",
            ">;Z",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v1, v0, Lj6/j;->D:Lv4/c;

    sget-object v2, Lj6/j;->W:[Lz4/n;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj6/o;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    if-eq v0, v1, :cond_24

    const/4 p2, 0x2

    if-ne v0, p2, :cond_1e

    goto :goto_27

    :cond_1e
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_24
    if-nez p2, :cond_27

    goto :goto_28

    :cond_27
    :goto_27
    move v1, v2

    :cond_28
    :goto_28
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-virtual {p0}, Lj6/d;->J()Lj6/c$l;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lj6/c$l;->c(ILjava/lang/StringBuilder;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/e1;

    invoke-virtual {p0}, Lj6/d;->J()Lj6/c$l;

    move-result-object v5

    invoke-interface {v5, v4, v0, p2, p3}, Lj6/c$l;->a(Li5/e1;IILjava/lang/StringBuilder;)V

    invoke-virtual {p0, v4, v1, p3, v2}, Lj6/d;->u0(Li5/e1;ZLjava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, Lj6/d;->J()Lj6/c$l;

    move-result-object v5

    invoke-interface {v5, v4, v0, p2, p3}, Lj6/c$l;->b(Li5/e1;IILjava/lang/StringBuilder;)V

    move v0, v3

    goto :goto_38

    :cond_59
    invoke-virtual {p0}, Lj6/d;->J()Lj6/c$l;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lj6/c$l;->d(ILjava/lang/StringBuilder;)V

    return-void
.end method

.method public w(Ly6/q1;)Ljava/lang/String;
    .registers 3

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lj6/d;->y(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w0(Li5/t;Ljava/lang/StringBuilder;)Z
    .registers 8

    invoke-virtual {p0}, Lj6/d;->E()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj6/h;->d:Lj6/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v2, v0, Lj6/j;->n:Lv4/c;

    sget-object v3, Lj6/j;->W:[Lz4/n;

    const/16 v4, 0xc

    aget-object v4, v3, v4

    invoke-interface {v2, v0, v4}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Li5/t;->d()Li5/t;

    move-result-object p1

    :cond_28
    iget-object v0, p0, Lj6/d;->d:Lj6/j;

    iget-object v2, v0, Lj6/j;->o:Lv4/c;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-interface {v2, v0, v3}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Li5/s;->k:Li5/t;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    return v1

    :cond_45
    invoke-virtual {p1}, Li5/t;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public final x0(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lj6/d;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/a1;

    invoke-interface {v2}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v4

    const-string v5, "typeParameter.upperBounds"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Li4/v;->A(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6/l0;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Li5/l;->getName()Lh6/f;

    move-result-object v6

    const-string v7, "typeParameter.name"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lj6/d;->u(Lh6/f;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "it"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lj6/d;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_69
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_8e

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "where"

    invoke-virtual {p0, v0}, Lj6/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const-string v3, ", "

    move-object v2, p2

    invoke-static/range {v1 .. v9}, Li4/v;->L(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    :cond_8e
    return-void
.end method

.method public final y(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Lj6/d$b;

    invoke-direct {v7, p0}, Lj6/d$b;-><init>(Lj6/d;)V

    const-string v2, ", "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x3c

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Li4/v;->L(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    return-void
.end method

.method public final y0(Ly6/l0;)Z
    .registers 4

    invoke-static {p1}, Lf5/f;->j(Ly6/l0;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_32

    invoke-virtual {p1}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_18

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_16
    move p0, v1

    goto :goto_2f

    :cond_18
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/q1;

    invoke-interface {p1}, Ly6/q1;->b()Z

    move-result p1

    if-eqz p1, :cond_1c

    move p0, v0

    :goto_2f
    if-eqz p0, :cond_32

    move v0, v1

    :cond_32
    return v0
.end method

.method public final z(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lj6/d;->I()Lj6/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Lj6/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
