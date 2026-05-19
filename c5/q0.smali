.class public Lc5/q0;
.super Lkotlin/jvm/internal/ReflectionFactory;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/jvm/internal/ReflectionFactory;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/jvm/internal/CallableReference;)Lc5/t;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getOwner()Lz4/g;

    move-result-object p0

    instance-of v0, p0, Lc5/t;

    if-eqz v0, :cond_b

    check-cast p0, Lc5/t;

    goto :goto_d

    :cond_b
    sget-object p0, Lc5/f;->c:Lc5/f;

    :goto_d
    return-object p0
.end method


# virtual methods
.method public createKotlinClass(Ljava/lang/Class;)Lz4/d;
    .registers 2

    new-instance p0, Lc5/o;

    invoke-direct {p0, p1}, Lc5/o;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lz4/d;
    .registers 3

    new-instance p0, Lc5/o;

    invoke-direct {p0, p1}, Lc5/o;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public function(Lkotlin/jvm/internal/FunctionReference;)Lz4/h;
    .registers 8

    new-instance p0, Lc5/x;

    invoke-static {p1}, Lc5/q0;->a(Lkotlin/jvm/internal/CallableReference;)Lc5/t;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v5

    const-string p1, "container"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "signature"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc5/x;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Li5/x;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;
    .registers 2

    invoke-static {p1}, Lc5/c;->a(Ljava/lang/Class;)Lc5/o;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lz4/d;
    .registers 3

    invoke-static {p1}, Lc5/c;->a(Ljava/lang/Class;)Lc5/o;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lz4/g;
    .registers 3

    sget-object p0, Lc5/c;->a:Lc5/a;

    const-string p0, "jClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lc5/c;->b:Lc5/a;

    invoke-virtual {p0, p1}, Lc5/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz4/g;

    return-object p0
.end method

.method public mutableCollectionType(Lz4/r;)Lz4/r;
    .registers 11

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Lc5/k0;

    iget-object p0, p0, Lc5/k0;->a:Ly6/l0;

    instance-of v0, p0, Ly6/s0;

    if-eqz v0, :cond_84

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    instance-of v1, v0, Li5/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    check-cast v0, Li5/e;

    goto :goto_1f

    :cond_1e
    move-object v0, v2

    :goto_1f
    if-eqz v0, :cond_6d

    new-instance p1, Lc5/k0;

    move-object v3, p0

    check-cast v3, Ly6/s0;

    const/4 v4, 0x0

    sget-object p0, Lh5/c;->a:Lh5/c;

    invoke-static {v0}, Lo6/c;->h(Li5/l;)Lh6/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lh5/c;->i(Lh6/d;)Lh6/c;

    move-result-object p0

    if-eqz p0, :cond_56

    invoke-static {v0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object p0

    const-string v0, "builtIns.getBuiltInClassByFqName(fqName)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/h;->h()Ly6/j1;

    move-result-object v5

    const-string p0, "classifier.readOnlyToMutable().typeConstructor"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1a

    invoke-static/range {v3 .. v8}, Ly6/m0;->g(Ly6/s0;Ly6/g1;Ly6/j1;Ljava/util/List;ZI)Ly6/s0;

    move-result-object p0

    const/4 v0, 0x2

    invoke-direct {p1, p0, v2, v0}, Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;I)V

    return-object p1

    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a readonly collection: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-class type cannot be a mutable collection type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non-simple type cannot be a mutable collection type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lz4/j;
    .registers 5

    new-instance p0, Lc5/y;

    invoke-static {p1}, Lc5/q0;->a(Lkotlin/jvm/internal/CallableReference;)Lc5/t;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lc5/y;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lz4/k;
    .registers 5

    new-instance p0, Lc5/z;

    invoke-static {p1}, Lc5/q0;->a(Lkotlin/jvm/internal/CallableReference;)Lc5/t;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lc5/z;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lz4/l;
    .registers 4

    new-instance p0, Lc5/a0;

    invoke-static {p1}, Lc5/q0;->a(Lkotlin/jvm/internal/CallableReference;)Lc5/t;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lc5/a0;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public nothingType(Lz4/r;)Lz4/r;
    .registers 8

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Lc5/k0;

    iget-object p0, p0, Lc5/k0;->a:Ly6/l0;

    instance-of v0, p0, Ly6/s0;

    if-eqz v0, :cond_35

    new-instance p1, Lc5/k0;

    move-object v0, p0

    check-cast v0, Ly6/s0;

    const/4 v1, 0x0

    invoke-static {p0}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object p0

    const-string v2, "Nothing"

    invoke-virtual {p0, v2}, Lf5/g;->k(Ljava/lang/String;)Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/h;->h()Ly6/j1;

    move-result-object v2

    const-string p0, "kotlinType.builtIns.nothing.typeConstructor"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1a

    invoke-static/range {v0 .. v5}, Ly6/m0;->g(Ly6/s0;Ly6/g1;Ly6/j1;Ljava/util/List;ZI)Ly6/s0;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p1, p0, v0, v1}, Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;I)V

    return-object p1

    :cond_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non-simple type cannot be a Nothing type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public platformType(Lz4/r;Lz4/r;)Lz4/r;
    .registers 4

    const-string p0, "lowerBound"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "upperBound"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lc5/k0;

    check-cast p1, Lc5/k0;

    iget-object p1, p1, Lc5/k0;->a:Ly6/l0;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ly6/s0;

    check-cast p2, Lc5/k0;

    iget-object p2, p2, Lc5/k0;->a:Ly6/l0;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ly6/s0;

    invoke-static {p1, p2}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lc5/k0;-><init>(Ly6/l0;Lkotlin/jvm/functions/Function0;I)V

    return-object p0
.end method

.method public property0(Lkotlin/jvm/internal/PropertyReference0;)Lz4/o;
    .registers 5

    new-instance p0, Lc5/d0;

    invoke-static {p1}, Lc5/q0;->a(Lkotlin/jvm/internal/CallableReference;)Lc5/t;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lc5/d0;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;
    .registers 5

    new-instance p0, Lc5/e0;

    invoke-static {p1}, Lc5/q0;->a(Lkotlin/jvm/internal/CallableReference;)Lc5/t;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lc5/e0;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public property2(Lkotlin/jvm/internal/PropertyReference2;)Lz4/q;
    .registers 4

    new-instance p0, Lc5/f0;

    invoke-static {p1}, Lc5/q0;->a(Lkotlin/jvm/internal/CallableReference;)Lc5/t;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lc5/f0;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;
    .registers 14

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lkotlin/Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkotlin/Metadata;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    goto/16 :goto_8a

    :cond_16
    invoke-interface {v0}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_21

    move v3, v4

    goto :goto_22

    :cond_21
    move v3, v5

    :goto_22
    if-nez v3, :cond_25

    goto :goto_26

    :cond_25
    move-object v2, v1

    :goto_26
    if-nez v2, :cond_29

    goto :goto_8a

    :cond_29
    invoke-interface {v0}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lg6/h;->a:Lg6/h;

    const-string v3, "data"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "strings"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {v2}, Lg6/a;->b([Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v2, Lg6/h;->a:Lg6/h;

    invoke-virtual {v2, v3, v1}, Lg6/h;->g(Ljava/io/InputStream;[Ljava/lang/String;)Lg6/f;

    move-result-object v8

    sget-object v1, Lg6/h;->b:Li6/f;

    sget-object v2, Lc6/i;->v:Li6/r;

    check-cast v2, Li6/b;

    invoke-virtual {v2, v3, v1}, Li6/b;->d(Ljava/io/InputStream;Li6/f;)Li6/p;

    move-result-object v1

    invoke-virtual {v2, v1}, Li6/b;->b(Li6/p;)Li6/p;

    move-object v7, v1

    check-cast v7, Lc6/i;

    new-instance v10, Lg6/e;

    invoke-interface {v0}, Lkotlin/Metadata;->mv()[I

    move-result-object v1

    invoke-interface {v0}, Lkotlin/Metadata;->xi()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_67

    goto :goto_68

    :cond_67
    move v4, v5

    :goto_68
    invoke-direct {v10, v1, v4}, Lg6/e;-><init>([IZ)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v9, Le6/g;

    iget-object v0, v7, Lc6/i;->p:Lc6/t;

    const-string v1, "proto.typeTable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v0}, Le6/g;-><init>(Lc6/t;)V

    sget-object v11, Lb5/d;->a:Lb5/d;

    invoke-static/range {v6 .. v11}, Lc5/w0;->f(Ljava/lang/Class;Li6/p;Le6/c;Le6/g;Le6/a;Lkotlin/jvm/functions/Function2;)Li5/a;

    move-result-object v0

    check-cast v0, Li5/u0;

    new-instance v1, Lc5/x;

    sget-object v2, Lc5/f;->c:Lc5/f;

    invoke-direct {v1, v2, v0}, Lc5/x;-><init>(Lc5/t;Li5/x;)V

    :goto_8a
    if-eqz v1, :cond_db

    invoke-static {v1}, Lc5/w0;->b(Ljava/lang/Object;)Lc5/x;

    move-result-object v0

    if-eqz v0, :cond_db

    sget-object p0, Lc5/r0;->a:Lc5/r0;

    invoke-virtual {v0}, Lc5/x;->o()Li5/x;

    move-result-object p0

    const-string p1, "invoke"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p0}, Lc5/r0;->b(Ljava/lang/StringBuilder;Li5/a;)V

    invoke-interface {p0}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    const-string v1, "invoke.valueParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lc5/s0;->a:Lc5/s0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x30

    const-string v2, ", "

    const-string v3, "("

    const-string v4, ")"

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Li4/v;->L(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lc5/r0;->e(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_db
    invoke-super {p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lc5/q0;->renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setUpperBounds(Lz4/s;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/s;",
            "Ljava/util/List<",
            "Lz4/r;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/f;",
            "Ljava/util/List<",
            "Lz4/t;",
            ">;Z)",
            "Lz4/r;"
        }
    .end annotation

    instance-of p0, p1, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    if-eqz p0, :cond_62

    check-cast p1, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {p1}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    sget-object p1, Lc5/c;->a:Lc5/a;

    const-string p1, "jClass"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "arguments"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_30

    if-eqz p3, :cond_27

    sget-object p1, Lc5/c;->d:Lc5/a;

    invoke-virtual {p1, p0}, Lc5/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz4/r;

    goto :goto_61

    :cond_27
    sget-object p1, Lc5/c;->c:Lc5/a;

    invoke-virtual {p1, p0}, Lc5/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz4/r;

    goto :goto_61

    :cond_30
    sget-object p1, Lc5/c;->e:Lc5/a;

    invoke-virtual {p1, p0}, Lc5/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lh4/j;

    invoke-direct {v1, p2, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_59

    invoke-static {p0}, Lc5/c;->a(Ljava/lang/Class;)Lc5/o;

    move-result-object p0

    sget-object v0, Li4/y;->a:Li4/y;

    invoke-static {p0, p2, p3, v0}, La5/c;->a(Lz4/f;Ljava/util/List;ZLjava/util/List;)Lz4/r;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_58

    goto :goto_59

    :cond_58
    move-object v0, p0

    :cond_59
    :goto_59
    const-string p0, "cache.getOrPut(arguments…lable, emptyList())\n    }"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v0

    check-cast p0, Lz4/r;

    :goto_61
    return-object p0

    :cond_62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, La5/c;->a(Lz4/f;Ljava/util/List;ZLjava/util/List;)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public typeParameter(Ljava/lang/Object;Ljava/lang/String;Lz4/u;Z)Lz4/s;
    .registers 5

    instance-of p0, p1, Lz4/d;

    if-eqz p0, :cond_c

    move-object p0, p1

    check-cast p0, Lz4/d;

    invoke-interface {p0}, Lz4/d;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    goto :goto_17

    :cond_c
    instance-of p0, p1, Lz4/c;

    if-eqz p0, :cond_51

    move-object p0, p1

    check-cast p0, Lz4/c;

    invoke-interface {p0}, Lz4/c;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz4/s;

    invoke-interface {p3}, Lz4/s;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1b

    return-object p3

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Type parameter "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not found in container: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Type parameter container must be a class or a callable: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
