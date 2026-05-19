.class public final Lc5/o;
.super Lc5/t;
.source ""

# interfaces
.implements Lz4/d;
.implements Lc5/r;
.implements Lc5/m0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/o$a;,
        Lc5/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/t;",
        "Lz4/d<",
        "TT;>;",
        "Lc5/r;",
        "Lc5/m0;"
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lc5/p0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/p0$b<",
            "Lc5/o<",
            "TT;>.a;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lc5/t;-><init>()V

    iput-object p1, p0, Lc5/o;->c:Ljava/lang/Class;

    new-instance p1, Lc5/o$c;

    invoke-direct {p1, p0}, Lc5/o$c;-><init>(Lc5/o;)V

    invoke-static {p1}, Lc5/p0;->b(Lkotlin/jvm/functions/Function0;)Lc5/p0$b;

    move-result-object p1

    const-string v0, "lazy { Data() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc5/o;->d:Lc5/p0$b;

    return-void
.end method


# virtual methods
.method public e()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/k;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc5/o;->s()Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->f()Li5/f;

    move-result-object v0

    sget-object v1, Li5/f;->b:Li5/f;

    if-eq v0, v1, :cond_1f

    invoke-interface {p0}, Li5/e;->f()Li5/f;

    move-result-object v0

    sget-object v1, Li5/f;->f:Li5/f;

    if-ne v0, v1, :cond_15

    goto :goto_1f

    :cond_15
    invoke-interface {p0}, Li5/e;->i()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "descriptor.constructors"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1f
    :goto_1f
    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lc5/o;

    if-eqz v0, :cond_16

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lz4/d;)Ljava/lang/Class;

    move-result-object p0

    check-cast p1, Lz4/d;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lz4/d;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public g(Lh6/f;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Ljava/util/Collection<",
            "Li5/x;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc5/o;->t()Lr6/i;

    move-result-object v0

    sget-object v1, Lq5/d;->h:Lq5/d;

    invoke-interface {v0, p1, v1}, Lr6/i;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lc5/o;->u()Lr6/i;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lr6/i;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {v0, p0}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lc5/o;->d:Lc5/p0$b;

    invoke-virtual {p0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/o$a;

    iget-object p0, p0, Lc5/o$a;->d:Lc5/p0$a;

    sget-object v0, Lc5/o$a;->q:[Lz4/n;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-annotations>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic getDescriptor()Li5/h;
    .registers 1

    invoke-virtual {p0}, Lc5/o;->s()Li5/e;

    move-result-object p0

    return-object p0
.end method

.method public getJClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lc5/o;->c:Ljava/lang/Class;

    return-object p0
.end method

.method public getMembers()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lz4/c<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lc5/o;->d:Lc5/p0$b;

    invoke-virtual {p0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/o$a;

    iget-object p0, p0, Lc5/o$a;->p:Lc5/p0$a;

    sget-object v0, Lc5/o$a;->q:[Lz4/n;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-allMembers>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public getObjectInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lc5/o;->d:Lc5/p0$b;

    invoke-virtual {p0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/o$a;

    iget-object p0, p0, Lc5/o$a;->h:Lc5/p0$b;

    sget-object v0, Lc5/o$a;->q:[Lz4/n;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lc5/o;->d:Lc5/p0$b;

    invoke-virtual {p0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/o$a;

    iget-object p0, p0, Lc5/o$a;->f:Lc5/p0$a;

    sget-object v0, Lc5/o$a;->q:[Lz4/n;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSimpleName()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lc5/o;->d:Lc5/p0$b;

    invoke-virtual {p0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/o$a;

    iget-object p0, p0, Lc5/o$a;->e:Lc5/p0$a;

    sget-object v0, Lc5/o$a;->q:[Lz4/n;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz4/s;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lc5/o;->d:Lc5/p0$b;

    invoke-virtual {p0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/o$a;

    iget-object p0, p0, Lc5/o$a;->i:Lc5/p0$a;

    sget-object v0, Lc5/o$a;->q:[Lz4/n;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-typeParameters>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public h(I)Li5/o0;
    .registers 11

    iget-object v0, p0, Lc5/o;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultImpls"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lc5/o;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc5/o;

    invoke-virtual {p0, p1}, Lc5/o;->h(I)Li5/o0;

    move-result-object p0

    return-object p0

    :cond_2c
    invoke-virtual {p0}, Lc5/o;->s()Li5/e;

    move-result-object v0

    instance-of v1, v0, Lw6/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    check-cast v0, Lw6/d;

    goto :goto_39

    :cond_38
    move-object v0, v2

    :goto_39
    if-eqz v0, :cond_60

    iget-object v1, v0, Lw6/d;->e:Lc6/b;

    sget-object v3, Lf6/a;->j:Li6/h$f;

    const-string v4, "classLocalVariable"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, p1}, Le6/e;->b(Li6/h$d;Li6/h$f;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lc6/n;

    if-eqz v4, :cond_60

    iget-object v3, p0, Lc5/o;->c:Ljava/lang/Class;

    iget-object p0, v0, Lw6/d;->l:Lu6/m;

    iget-object v5, p0, Lu6/m;->b:Le6/c;

    iget-object v6, p0, Lu6/m;->d:Le6/g;

    iget-object v7, v0, Lw6/d;->f:Le6/a;

    sget-object v8, Lc5/o$d;->a:Lc5/o$d;

    invoke-static/range {v3 .. v8}, Lc5/w0;->f(Ljava/lang/Class;Li6/p;Le6/c;Le6/g;Le6/a;Lkotlin/jvm/functions/Function2;)Li5/a;

    move-result-object p0

    check-cast p0, Li5/o0;

    move-object v2, p0

    :cond_60
    return-object v2
.end method

.method public hashCode()I
    .registers 1

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lz4/d;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    move-result p0

    return p0
.end method

.method public isAbstract()Z
    .registers 2

    invoke-virtual {p0}, Lc5/o;->s()Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->o()Li5/d0;

    move-result-object p0

    sget-object v0, Li5/d0;->d:Li5/d0;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isInner()Z
    .registers 1

    invoke-virtual {p0}, Lc5/o;->s()Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/i;->isInner()Z

    move-result p0

    return p0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lc5/o;->c:Ljava/lang/Class;

    sget-object v1, Lo5/d;->a:Ljava/util/List;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo5/d;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    :cond_1c
    iget-object v0, p0, Lc5/o;->c:Ljava/lang/Class;

    invoke-static {v0}, Lo5/d;->e(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lc5/o;->c:Ljava/lang/Class;

    :cond_26
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSealed()Z
    .registers 2

    invoke-virtual {p0}, Lc5/o;->s()Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->o()Li5/d0;

    move-result-object p0

    sget-object v0, Li5/d0;->b:Li5/d0;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isValue()Z
    .registers 1

    invoke-virtual {p0}, Lc5/o;->s()Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->isValue()Z

    move-result p0

    return p0
.end method

.method public k(Lh6/f;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc5/o;->t()Lr6/i;

    move-result-object v0

    sget-object v1, Lq5/d;->h:Lq5/d;

    invoke-interface {v0, p1, v1}, Lr6/i;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lc5/o;->u()Lr6/i;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lr6/i;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {v0, p0}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final r()Lh6/b;
    .registers 4

    sget-object v0, Lc5/t0;->a:Lc5/t0;

    iget-object p0, p0, Lc5/o;->c:Ljava/lang/Class;

    const-string v0, "klass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "klass.componentType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/t0;->a(Ljava/lang/Class;)Lf5/h;

    move-result-object p0

    if-eqz p0, :cond_28

    new-instance v0, Lh6/b;

    sget-object v1, Lf5/j;->k:Lh6/c;

    iget-object p0, p0, Lf5/h;->b:Lh6/f;

    invoke-direct {v0, v1, p0}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    goto :goto_6e

    :cond_28
    sget-object p0, Lf5/j$a;->h:Lh6/d;

    invoke-virtual {p0}, Lh6/d;->i()Lh6/c;

    move-result-object p0

    invoke-static {p0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v0

    const-string p0, "topLevel(StandardNames.FqNames.array.toSafe())"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6e

    :cond_38
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lc5/t0;->b:Lh6/b;

    goto :goto_6e

    :cond_43
    invoke-static {p0}, Lc5/t0;->a(Ljava/lang/Class;)Lf5/h;

    move-result-object v0

    if-eqz v0, :cond_54

    new-instance p0, Lh6/b;

    sget-object v1, Lf5/j;->k:Lh6/c;

    iget-object v0, v0, Lf5/h;->a:Lh6/f;

    invoke-direct {p0, v1, v0}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    :goto_52
    move-object v0, p0

    goto :goto_6e

    :cond_54
    invoke-static {p0}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v0

    iget-boolean p0, v0, Lh6/b;->c:Z

    if-nez p0, :cond_6e

    sget-object p0, Lh5/c;->a:Lh5/c;

    invoke-virtual {v0}, Lh6/b;->b()Lh6/c;

    move-result-object v1

    const-string v2, "classId.asSingleFqName()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lh5/c;->g(Lh6/c;)Lh6/b;

    move-result-object p0

    if-eqz p0, :cond_6e

    goto :goto_52

    :cond_6e
    :goto_6e
    return-object v0
.end method

.method public s()Li5/e;
    .registers 1

    iget-object p0, p0, Lc5/o;->d:Lc5/p0$b;

    invoke-virtual {p0}, Lc5/p0$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/o$a;

    invoke-virtual {p0}, Lc5/o$a;->a()Li5/e;

    move-result-object p0

    return-object p0
.end method

.method public final t()Lr6/i;
    .registers 1

    invoke-virtual {p0}, Lc5/o;->s()Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->l()Lr6/i;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-string v0, "class "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc5/o;->r()Lh6/b;

    move-result-object p0

    invoke-virtual {p0}, Lh6/b;->h()Lh6/c;

    move-result-object v1

    const-string v2, "classId.packageFqName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lh6/c;->d()Z

    move-result v2

    const/16 v3, 0x2e

    if-eqz v2, :cond_1e

    const-string v1, ""

    goto :goto_31

    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_31
    invoke-virtual {p0}, Lh6/b;->i()Lh6/c;

    move-result-object p0

    invoke-virtual {p0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p0

    const-string v2, "classId.relativeClassName.asString()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x24

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {p0, v3, v2, v4, v5}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Lr6/i;
    .registers 2

    invoke-virtual {p0}, Lc5/o;->s()Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->g0()Lr6/i;

    move-result-object p0

    const-string v0, "descriptor.staticScope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
