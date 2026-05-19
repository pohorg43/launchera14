.class public final Lv5/f;
.super Ll5/j;
.source ""

# interfaces
.implements Lt5/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv5/f$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaClassDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaClassDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassDescriptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n1747#2,3:323\n1747#2,3:326\n1603#2,9:329\n1855#2:338\n1856#2:340\n1612#2:341\n1045#2:342\n1#3:339\n*S KotlinDebug\n*F\n+ 1 LazyJavaClassDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassDescriptor\n*L\n185#1:323,3\n188#1:326,3\n200#1:329,9\n200#1:338\n200#1:340\n200#1:341\n202#1:342\n200#1:339\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lu5/g;

.field public final i:Ly5/g;

.field public final j:Li5/e;

.field public final k:Lu5/g;

.field public final l:Lh4/f;

.field public final m:Li5/f;

.field public final n:Li5/d0;

.field public final o:Li5/i1;

.field public final p:Z

.field public final q:Lv5/f$a;

.field public final r:Lv5/h;

.field public final s:Li5/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li5/s0<",
            "Lv5/h;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lr6/g;

.field public final u:Lv5/r;

.field public final v:Lj5/h;

.field public final w:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const-string v0, "equals"

    const-string v1, "hashCode"

    const-string v2, "getClass"

    const-string v3, "wait"

    const-string v4, "notify"

    const-string v5, "notifyAll"

    const-string v6, "toString"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lu5/g;Li5/l;Ly5/g;Li5/e;)V
    .registers 13

    sget-object v0, Li5/d0;->a:Li5/d0;

    const-string v1, "outerContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "containingDeclaration"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jClass"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lu5/g;->a:Lu5/c;

    iget-object v3, v1, Lu5/c;->a:Lx6/m;

    invoke-interface {p3}, Ly5/t;->getName()Lh6/f;

    move-result-object v5

    iget-object v1, p1, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->j:Lx5/b;

    invoke-interface {v1, p3}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Ll5/j;-><init>(Lx6/m;Li5/l;Lh6/f;Li5/v0;Z)V

    iput-object p1, p0, Lv5/f;->h:Lu5/g;

    iput-object p3, p0, Lv5/f;->i:Ly5/g;

    iput-object p4, p0, Lv5/f;->j:Li5/e;

    const/4 p2, 0x0

    const/4 v1, 0x4

    invoke-static {p1, p0, p3, p2, v1}, Lu5/b;->a(Lu5/g;Li5/g;Ly5/z;II)Lu5/g;

    move-result-object p1

    iput-object p1, p0, Lv5/f;->k:Lu5/g;

    iget-object v1, p1, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->g:Ls5/g;

    check-cast v1, Ls5/g$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Ly5/g;->h()I

    new-instance v1, Lv5/f$d;

    invoke-direct {v1, p0}, Lv5/f$d;-><init>(Lv5/f;)V

    invoke-static {v1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lv5/f;->l:Lh4/f;

    invoke-interface {p3}, Ly5/g;->m()Z

    move-result v1

    if-eqz v1, :cond_55

    sget-object v1, Li5/f;->e:Li5/f;

    goto :goto_69

    :cond_55
    invoke-interface {p3}, Ly5/g;->F()Z

    move-result v1

    if-eqz v1, :cond_5e

    sget-object v1, Li5/f;->b:Li5/f;

    goto :goto_69

    :cond_5e
    invoke-interface {p3}, Ly5/g;->s()Z

    move-result v1

    if-eqz v1, :cond_67

    sget-object v1, Li5/f;->c:Li5/f;

    goto :goto_69

    :cond_67
    sget-object v1, Li5/f;->a:Li5/f;

    :goto_69
    iput-object v1, p0, Lv5/f;->m:Li5/f;

    invoke-interface {p3}, Ly5/g;->m()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_a6

    invoke-interface {p3}, Ly5/g;->s()Z

    move-result v1

    if-eqz v1, :cond_79

    goto :goto_a6

    :cond_79
    invoke-interface {p3}, Ly5/g;->isSealed()Z

    move-result v1

    invoke-interface {p3}, Ly5/g;->isSealed()Z

    move-result v3

    if-nez v3, :cond_92

    invoke-interface {p3}, Ly5/s;->isAbstract()Z

    move-result v3

    if-nez v3, :cond_92

    invoke-interface {p3}, Ly5/g;->F()Z

    move-result v3

    if-eqz v3, :cond_90

    goto :goto_92

    :cond_90
    move v3, p2

    goto :goto_93

    :cond_92
    :goto_92
    move v3, v2

    :goto_93
    invoke-interface {p3}, Ly5/s;->isFinal()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v1, :cond_9d

    sget-object v0, Li5/d0;->b:Li5/d0;

    goto :goto_a6

    :cond_9d
    if-eqz v3, :cond_a2

    sget-object v0, Li5/d0;->d:Li5/d0;

    goto :goto_a6

    :cond_a2
    if-eqz v4, :cond_a6

    sget-object v0, Li5/d0;->c:Li5/d0;

    :cond_a6
    :goto_a6
    iput-object v0, p0, Lv5/f;->n:Li5/d0;

    invoke-interface {p3}, Ly5/s;->getVisibility()Li5/i1;

    move-result-object v0

    iput-object v0, p0, Lv5/f;->o:Li5/i1;

    invoke-interface {p3}, Ly5/g;->j()Ly5/g;

    move-result-object v0

    if-eqz v0, :cond_bc

    invoke-interface {p3}, Ly5/s;->isStatic()Z

    move-result v0

    if-nez v0, :cond_bc

    move v0, v2

    goto :goto_bd

    :cond_bc
    move v0, p2

    :goto_bd
    iput-boolean v0, p0, Lv5/f;->p:Z

    new-instance v0, Lv5/f$a;

    invoke-direct {v0, p0}, Lv5/f$a;-><init>(Lv5/f;)V

    iput-object v0, p0, Lv5/f;->q:Lv5/f$a;

    new-instance v0, Lv5/h;

    if-eqz p4, :cond_cc

    move v6, v2

    goto :goto_cd

    :cond_cc
    move v6, p2

    :goto_cd
    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lv5/h;-><init>(Lu5/g;Li5/e;Ly5/g;ZLv5/h;)V

    iput-object v0, p0, Lv5/f;->r:Lv5/h;

    sget-object p2, Li5/s0;->e:Li5/s0$a;

    iget-object p4, p1, Lu5/g;->a:Lu5/c;

    iget-object v1, p4, Lu5/c;->a:Lx6/m;

    iget-object p4, p4, Lu5/c;->u:Lz6/l;

    invoke-interface {p4}, Lz6/l;->c()Lz6/f;

    move-result-object p4

    new-instance v2, Lv5/f$e;

    invoke-direct {v2, p0}, Lv5/f$e;-><init>(Lv5/f;)V

    invoke-virtual {p2, p0, v1, p4, v2}, Li5/s0$a;->a(Li5/e;Lx6/m;Lz6/f;Lkotlin/jvm/functions/Function1;)Li5/s0;

    move-result-object p2

    iput-object p2, p0, Lv5/f;->s:Li5/s0;

    new-instance p2, Lr6/g;

    invoke-direct {p2, v0}, Lr6/g;-><init>(Lr6/i;)V

    iput-object p2, p0, Lv5/f;->t:Lr6/g;

    new-instance p2, Lv5/r;

    invoke-direct {p2, p1, p3, p0}, Lv5/r;-><init>(Lu5/g;Ly5/g;Lt5/c;)V

    iput-object p2, p0, Lv5/f;->u:Lv5/r;

    invoke-static {p1, p3}, Ly1/a;->a(Lu5/g;Ly5/d;)Lj5/h;

    move-result-object p2

    iput-object p2, p0, Lv5/f;->v:Lj5/h;

    iget-object p1, p1, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->a:Lx6/m;

    new-instance p2, Lv5/f$b;

    invoke-direct {p2, p0}, Lv5/f$b;-><init>(Lv5/f;)V

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lv5/f;->w:Lx6/i;

    return-void
.end method


# virtual methods
.method public A()Li5/d;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public B0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public D0()Lv5/h;
    .registers 2

    invoke-super {p0}, Ll5/b;->U()Lr6/i;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.lazy.descriptors.LazyJavaClassMemberScope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lv5/h;

    return-object p0
.end method

.method public R()Lr6/i;
    .registers 1

    iget-object p0, p0, Lv5/f;->t:Lr6/g;

    return-object p0
.end method

.method public S()Li5/c1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/c1<",
            "Ly6/s0;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic U()Lr6/i;
    .registers 1

    invoke-virtual {p0}, Lv5/f;->D0()Lv5/h;

    move-result-object p0

    return-object p0
.end method

.method public V()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public X()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public a0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public d0(Lz6/f;)Lr6/i;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv5/f;->s:Li5/s0;

    invoke-virtual {p0, p1}, Li5/s0;->a(Lz6/f;)Lr6/i;

    move-result-object p0

    check-cast p0, Lv5/h;

    return-object p0
.end method

.method public f()Li5/f;
    .registers 1

    iget-object p0, p0, Lv5/f;->m:Li5/f;

    return-object p0
.end method

.method public f0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public g0()Lr6/i;
    .registers 1

    iget-object p0, p0, Lv5/f;->u:Lv5/r;

    return-object p0
.end method

.method public getAnnotations()Lj5/h;
    .registers 1

    iget-object p0, p0, Lv5/f;->v:Lj5/h;

    return-object p0
.end method

.method public getVisibility()Li5/t;
    .registers 3

    iget-object v0, p0, Lv5/f;->o:Li5/i1;

    sget-object v1, Li5/s;->a:Li5/t;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lv5/f;->i:Ly5/g;

    invoke-interface {v0}, Ly5/g;->j()Ly5/g;

    move-result-object v0

    if-nez v0, :cond_1a

    sget-object p0, Lr5/v;->a:Li5/t;

    const-string v0, "{\n            JavaDescri…KAGE_VISIBILITY\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_20

    :cond_1a
    iget-object p0, p0, Lv5/f;->o:Li5/i1;

    invoke-static {p0}, Lr5/n0;->a(Li5/i1;)Li5/t;

    move-result-object p0

    :goto_20
    return-object p0
.end method

.method public h()Ly6/j1;
    .registers 1

    iget-object p0, p0, Lv5/f;->q:Lv5/f$a;

    return-object p0
.end method

.method public h0()Li5/e;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public i()Ljava/util/Collection;
    .registers 1

    iget-object p0, p0, Lv5/f;->r:Lv5/h;

    iget-object p0, p0, Lv5/h;->q:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public isInline()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInner()Z
    .registers 1

    iget-boolean p0, p0, Lv5/f;->p:Z

    return p0
.end method

.method public isValue()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public n()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lv5/f;->w:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public o()Li5/d0;
    .registers 1

    iget-object p0, p0, Lv5/f;->n:Li5/d0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Lazy Java class "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lo6/c;->h(Li5/l;)Lh6/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v()Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv5/f;->n:Li5/d0;

    sget-object v1, Li5/d0;->b:Li5/d0;

    if-ne v0, v1, :cond_52

    sget-object v0, Ly6/z1;->b:Ly6/z1;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v2, v3, v1}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v0

    iget-object v1, p0, Lv5/f;->i:Ly5/g;

    invoke-interface {v1}, Ly5/g;->y()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly5/j;

    iget-object v5, p0, Lv5/f;->k:Lu5/g;

    iget-object v5, v5, Lu5/g;->e:Lw5/e;

    invoke-virtual {v5, v4, v0}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v4

    invoke-virtual {v4}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v4

    invoke-interface {v4}, Ly6/j1;->e()Li5/h;

    move-result-object v4

    instance-of v5, v4, Li5/e;

    if-eqz v5, :cond_41

    check-cast v4, Li5/e;

    goto :goto_42

    :cond_41
    move-object v4, v3

    :goto_42
    if-eqz v4, :cond_1e

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_48
    new-instance p0, Lv5/f$c;

    invoke-direct {p0}, Lv5/f$c;-><init>()V

    invoke-static {v2, p0}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_54

    :cond_52
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_54
    return-object p0
.end method
