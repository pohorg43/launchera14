.class public abstract Lo5/a0;
.super Lo5/w;
.source ""

# interfaces
.implements Ly5/d;
.implements Ly5/s;
.implements Ly5/q;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaMember.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaMember.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaMember\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lo5/w;-><init>()V

    return-void
.end method


# virtual methods
.method public J()Ly5/g;
    .registers 3

    new-instance v0, Lo5/s;

    invoke-virtual {p0}, Lo5/a0;->N()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "member.declaringClass"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lo5/s;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public K(Lh6/c;)Lo5/e;
    .registers 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo5/a0;->M()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0, p1}, Lo5/h;->a([Ljava/lang/annotation/Annotation;Lh6/c;)Lo5/e;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public L()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo5/e;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lo5/a0;->M()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-static {p0}, Lo5/h;->b([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object p0

    goto :goto_13

    :cond_11
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_13
    return-object p0
.end method

.method public M()Ljava/lang/reflect/AnnotatedElement;
    .registers 2

    invoke-virtual {p0}, Lo5/a0;->N()Ljava/lang/reflect/Member;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.reflect.AnnotatedElement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/reflect/AnnotatedElement;

    return-object p0
.end method

.method public abstract N()Ljava/lang/reflect/Member;
.end method

.method public O()I
    .registers 1

    invoke-virtual {p0}, Lo5/a0;->N()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p0

    return p0
.end method

.method public final P([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "[[",
            "Ljava/lang/annotation/Annotation;",
            "Z)",
            "Ljava/util/List<",
            "Ly5/a0;",
            ">;"
        }
    .end annotation

    const-string v0, "parameterTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterAnnotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lo5/c;->a:Lo5/c;

    invoke-virtual {p0}, Lo5/a0;->N()Ljava/lang/reflect/Member;

    move-result-object v2

    const-string v3, "member"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo5/c;->b:Lo5/c$a;

    if-nez v3, :cond_2f

    monitor-enter v1

    :try_start_20
    sget-object v3, Lo5/c;->b:Lo5/c$a;

    if-nez v3, :cond_2a

    invoke-virtual {v1, v2}, Lo5/c;->a(Ljava/lang/reflect/Member;)Lo5/c$a;

    move-result-object v3

    sput-object v3, Lo5/c;->b:Lo5/c$a;
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2c

    :cond_2a
    monitor-exit v1

    goto :goto_2f

    :catchall_2c
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_2f
    :goto_2f
    iget-object v1, v3, Lo5/c$a;->a:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_36

    goto :goto_3a

    :cond_36
    iget-object v3, v3, Lo5/c$a;->b:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3c

    :goto_3a
    move-object v2, v4

    goto :goto_68

    :cond_3c
    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v1

    move v7, v5

    :goto_51
    if-ge v7, v6, :cond_68

    aget-object v8, v1, v7

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    :cond_68
    :goto_68
    if-eqz v2, :cond_71

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    array-length v3, p1

    sub-int/2addr v1, v3

    goto :goto_72

    :cond_71
    move v1, v5

    :goto_72
    array-length v3, p1

    move v6, v5

    :goto_74
    if-ge v6, v3, :cond_11e

    aget-object v7, p1, v6

    const-string v8, "type"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v8, v7, Ljava/lang/Class;

    if-eqz v8, :cond_90

    move-object v9, v7

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_90

    new-instance v7, Lo5/d0;

    invoke-direct {v7, v9}, Lo5/d0;-><init>(Ljava/lang/Class;)V

    goto :goto_b8

    :cond_90
    instance-of v9, v7, Ljava/lang/reflect/GenericArrayType;

    if-nez v9, :cond_b2

    if-eqz v8, :cond_a0

    move-object v8, v7

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_a0

    goto :goto_b2

    :cond_a0
    instance-of v8, v7, Ljava/lang/reflect/WildcardType;

    if-eqz v8, :cond_ac

    new-instance v8, Lo5/i0;

    check-cast v7, Ljava/lang/reflect/WildcardType;

    invoke-direct {v8, v7}, Lo5/i0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_b7

    :cond_ac
    new-instance v8, Lo5/u;

    invoke-direct {v8, v7}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_b7

    :cond_b2
    :goto_b2
    new-instance v8, Lo5/j;

    invoke-direct {v8, v7}, Lo5/j;-><init>(Ljava/lang/reflect/Type;)V

    :goto_b7
    move-object v7, v8

    :goto_b8
    if-eqz v2, :cond_104

    add-int v8, v6, v1

    invoke-static {v2, v8}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_c5

    goto :goto_105

    :cond_c5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No parameter with index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2b

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (name="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo5/a0;->getName()Lh6/f;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " type="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_104
    move-object v8, v4

    :goto_105
    if-eqz p3, :cond_10f

    invoke-static {p1}, Li4/k;->A([Ljava/lang/Object;)I

    move-result v9

    if-ne v6, v9, :cond_10f

    const/4 v9, 0x1

    goto :goto_110

    :cond_10f
    move v9, v5

    :goto_110
    new-instance v10, Lo5/h0;

    aget-object v11, p2, v6

    invoke-direct {v10, v7, v11, v8, v9}, Lo5/h0;-><init>(Lo5/f0;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_74

    :cond_11e
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lo5/a0;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lo5/a0;->N()Ljava/lang/reflect/Member;

    move-result-object p0

    check-cast p1, Lo5/a0;

    invoke-virtual {p1}, Lo5/a0;->N()Ljava/lang/reflect/Member;

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

.method public bridge synthetic f(Lh6/c;)Ly5/a;
    .registers 2

    invoke-virtual {p0, p1}, Lo5/a0;->K(Lh6/c;)Lo5/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Collection;
    .registers 1

    invoke-virtual {p0}, Lo5/a0;->L()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getName()Lh6/f;
    .registers 1

    invoke-virtual {p0}, Lo5/a0;->N()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-nez p0, :cond_14

    sget-object p0, Lh6/h;->b:Lh6/f;

    :cond_14
    return-object p0
.end method

.method public getVisibility()Li5/i1;
    .registers 2

    invoke-virtual {p0}, Lo5/a0;->O()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Li5/h1$h;->c:Li5/h1$h;

    goto :goto_2a

    :cond_d
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Li5/h1$e;->c:Li5/h1$e;

    goto :goto_2a

    :cond_16
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-eqz p0, :cond_25

    sget-object p0, Lm5/c;->c:Lm5/c;

    goto :goto_2a

    :cond_25
    sget-object p0, Lm5/b;->c:Lm5/b;

    goto :goto_2a

    :cond_28
    sget-object p0, Lm5/a;->c:Lm5/a;

    :goto_2a
    return-object p0
.end method

.method public hashCode()I
    .registers 1

    invoke-virtual {p0}, Lo5/a0;->N()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isAbstract()Z
    .registers 1

    invoke-virtual {p0}, Lo5/a0;->O()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    return p0
.end method

.method public isFinal()Z
    .registers 1

    invoke-virtual {p0}, Lo5/a0;->O()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    return p0
.end method

.method public isStatic()Z
    .registers 1

    invoke-virtual {p0}, Lo5/a0;->O()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo5/a0;->N()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
