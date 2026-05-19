.class public final Lo5/s;
.super Lo5/w;
.source ""

# interfaces
.implements Ly5/d;
.implements Ly5/s;
.implements Ly5/g;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaClass.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaClass.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaClass\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,201:1\n179#2,2:202\n1#3:204\n1549#4:205\n1620#4,3:206\n11335#5:209\n11670#5,3:210\n11335#5:214\n11670#5,3:215\n11335#5:218\n11670#5,3:219\n26#6:213\n*S KotlinDebug\n*F\n+ 1 ReflectJavaClass.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaClass\n*L\n51#1:202,2\n64#1:205\n64#1:206,3\n111#1:209\n111#1:210,3\n124#1:214\n124#1:215,3\n131#1:218\n131#1:219,3\n124#1:213\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
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
            "*>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/w;-><init>()V

    iput-object p1, p0, Lo5/s;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public F()Z
    .registers 1

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    return p0
.end method

.method public K(Lh6/c;)Lo5/e;
    .registers 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-static {p0, p1}, Lo5/h;->a([Ljava/lang/annotation/Annotation;Lh6/c;)Lo5/e;

    move-result-object p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
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

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-static {p0}, Lo5/h;->b([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object p0

    goto :goto_11

    :cond_f
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_11
    return-object p0
.end method

.method public M()I
    .registers 1

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    return p0
.end method

.method public b()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly5/j;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    iget-object v1, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_d
    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    iget-object v2, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object v0, v2

    :goto_1d
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "klass.genericInterfaces"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/reflect/Type;

    invoke-virtual {v1, p0}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    new-instance v2, Lo5/u;

    invoke-direct {v2, v1}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_60
    return-object v0
.end method

.method public e()Lh6/c;
    .registers 2

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-static {p0}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object p0

    invoke-virtual {p0}, Lh6/b;->b()Lh6/c;

    move-result-object p0

    const-string v0, "klass.classId.asSingleFqName()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lo5/s;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    check-cast p1, Lo5/s;

    iget-object p1, p1, Lo5/s;->a:Ljava/lang/Class;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public bridge synthetic f(Lh6/c;)Ly5/a;
    .registers 2

    invoke-virtual {p0, p1}, Lo5/s;->K(Lh6/c;)Lo5/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Collection;
    .registers 1

    invoke-virtual {p0}, Lo5/s;->L()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getName()Lh6/f;
    .registers 2

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    const-string v0, "identifier(klass.simpleName)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo5/g0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    const-string v0, "klass.typeParameters"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    new-instance v4, Lo5/g0;

    invoke-direct {v4, v3}, Lo5/g0;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_22
    return-object v0
.end method

.method public getVisibility()Li5/i1;
    .registers 2

    invoke-virtual {p0}, Lo5/s;->M()I

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

.method public h()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    move-result p0

    return p0
.end method

.method public i()Ljava/util/Collection;
    .registers 2

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    const-string v0, "klass.declaredConstructors"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/k;->n([Ljava/lang/Object;)Lj7/h;

    move-result-object p0

    sget-object v0, Lo5/k;->a:Lo5/k;

    invoke-static {p0, v0}, Lj7/p;->n(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    sget-object v0, Lo5/l;->a:Lo5/l;

    invoke-static {p0, v0}, Lj7/p;->p(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    invoke-static {p0}, Lj7/p;->s(Lj7/h;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAbstract()Z
    .registers 1

    invoke-virtual {p0}, Lo5/s;->M()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    return p0
.end method

.method public isFinal()Z
    .registers 1

    invoke-virtual {p0}, Lo5/s;->M()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    return p0
.end method

.method public isSealed()Z
    .registers 10

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo5/b;->a:Lo5/b$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3d

    const-class v0, Ljava/lang/Class;

    :try_start_f
    new-instance v3, Lo5/b$a;

    const-string v4, "isSealed"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "getPermittedSubclasses"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "isRecord"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "getRecordComponents"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lo5/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_34} :catch_36

    move-object v0, v3

    goto :goto_3b

    :catch_36
    new-instance v0, Lo5/b$a;

    invoke-direct {v0, v1, v1, v1, v1}, Lo5/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_3b
    sput-object v0, Lo5/b;->a:Lo5/b$a;

    :cond_3d
    iget-object v0, v0, Lo5/b$a;->a:Ljava/lang/reflect/Method;

    if-nez v0, :cond_42

    goto :goto_50

    :cond_42
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/Boolean;

    :goto_50
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_56
    return v2
.end method

.method public isStatic()Z
    .registers 1

    invoke-virtual {p0}, Lo5/s;->M()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    return p0
.end method

.method public j()Ly5/g;
    .registers 2

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_e

    new-instance v0, Lo5/s;

    invoke-direct {v0, p0}, Lo5/s;-><init>(Ljava/lang/Class;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method public k()Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly5/w;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo5/b;->a:Lo5/b$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3d

    const-class v0, Ljava/lang/Class;

    :try_start_f
    new-instance v3, Lo5/b$a;

    const-string v4, "isSealed"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "getPermittedSubclasses"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "isRecord"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "getRecordComponents"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lo5/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_34} :catch_36

    move-object v0, v3

    goto :goto_3b

    :catch_36
    new-instance v0, Lo5/b$a;

    invoke-direct {v0, v1, v1, v1, v1}, Lo5/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_3b
    sput-object v0, Lo5/b;->a:Lo5/b$a;

    :cond_3d
    iget-object v0, v0, Lo5/b$a;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_42

    goto :goto_4b

    :cond_42
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    :goto_4b
    if-nez v1, :cond_4f

    new-array v1, v2, [Ljava/lang/Object;

    :cond_4f
    new-instance p0, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, v1

    :goto_56
    if-ge v2, v0, :cond_65

    aget-object v3, v1, v2

    new-instance v4, Lo5/e0;

    invoke-direct {v4, v3}, Lo5/e0;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_65
    return-object p0
.end method

.method public m()Z
    .registers 1

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result p0

    return p0
.end method

.method public n()Z
    .registers 10

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo5/b;->a:Lo5/b$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3d

    const-class v0, Ljava/lang/Class;

    :try_start_f
    new-instance v3, Lo5/b$a;

    const-string v4, "isSealed"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "getPermittedSubclasses"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "isRecord"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "getRecordComponents"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lo5/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_34} :catch_36

    move-object v0, v3

    goto :goto_3b

    :catch_36
    new-instance v0, Lo5/b$a;

    invoke-direct {v0, v1, v1, v1, v1}, Lo5/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_3b
    sput-object v0, Lo5/b;->a:Lo5/b$a;

    :cond_3d
    iget-object v0, v0, Lo5/b$a;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_42

    goto :goto_50

    :cond_42
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/Boolean;

    :goto_50
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_56
    return v2
.end method

.method public o()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public s()Z
    .registers 1

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lo5/s;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Ljava/util/Collection;
    .registers 2

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    const-string v0, "klass.declaredFields"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/k;->n([Ljava/lang/Object;)Lj7/h;

    move-result-object p0

    sget-object v0, Lo5/m;->a:Lo5/m;

    invoke-static {p0, v0}, Lj7/p;->n(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    sget-object v0, Lo5/n;->a:Lo5/n;

    invoke-static {p0, v0}, Lj7/p;->p(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    invoke-static {p0}, Lj7/p;->s(Lj7/h;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public w()Ljava/util/Collection;
    .registers 2

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object p0

    const-string v0, "klass.declaredClasses"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/k;->n([Ljava/lang/Object;)Lj7/h;

    move-result-object p0

    sget-object v0, Lo5/o;->a:Lo5/o;

    invoke-static {p0, v0}, Lj7/p;->n(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    sget-object v0, Lo5/p;->a:Lo5/p;

    invoke-static {p0, v0}, Lj7/p;->q(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    invoke-static {p0}, Lj7/p;->s(Lj7/h;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public x()Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "klass.declaredMethods"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li4/k;->n([Ljava/lang/Object;)Lj7/h;

    move-result-object v0

    new-instance v1, Lo5/q;

    invoke-direct {v1, p0}, Lo5/q;-><init>(Lo5/s;)V

    invoke-static {v0, v1}, Lj7/p;->m(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    sget-object v0, Lo5/r;->a:Lo5/r;

    invoke-static {p0, v0}, Lj7/p;->p(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    invoke-static {p0}, Lj7/p;->s(Lj7/h;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public y()Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly5/j;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo5/b;->a:Lo5/b$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3d

    const-class v0, Ljava/lang/Class;

    :try_start_f
    new-instance v3, Lo5/b$a;

    const-string v4, "isSealed"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "getPermittedSubclasses"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "isRecord"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "getRecordComponents"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lo5/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_34} :catch_36

    move-object v0, v3

    goto :goto_3b

    :catch_36
    new-instance v0, Lo5/b$a;

    invoke-direct {v0, v1, v1, v1, v1}, Lo5/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_3b
    sput-object v0, Lo5/b;->a:Lo5/b$a;

    :cond_3d
    iget-object v0, v0, Lo5/b$a;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_42

    goto :goto_50

    :cond_42
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Array<java.lang.Class<*>>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, [Ljava/lang/Class;

    :goto_50
    if-eqz v1, :cond_68

    new-instance p0, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, v1

    :goto_59
    if-ge v2, v0, :cond_6a

    aget-object v3, v1, v2

    new-instance v4, Lo5/u;

    invoke-direct {v4, v3}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_68
    sget-object p0, Li4/y;->a:Li4/y;

    :cond_6a
    return-object p0
.end method

.method public z()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
