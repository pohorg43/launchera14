.class public final Lo5/u;
.super Lo5/f0;
.source ""

# interfaces
.implements Ly5/j;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaClassifierType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaClassifierType.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaClassifierType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1#2:65\n1549#3:66\n1620#3,3:67\n*S KotlinDebug\n*F\n+ 1 ReflectJavaClassifierType.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaClassifierType\n*L\n50#1:66\n50#1:67,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ly5/i;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 4

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/f0;-><init>()V

    iput-object p1, p0, Lo5/u;->a:Ljava/lang/reflect/Type;

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_16

    new-instance v0, Lo5/s;

    check-cast p1, Ljava/lang/Class;

    invoke-direct {v0, p1}, Lo5/s;-><init>(Ljava/lang/Class;)V

    goto :goto_38

    :cond_16
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_22

    new-instance v0, Lo5/g0;

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v0, p1}, Lo5/g0;-><init>(Ljava/lang/reflect/TypeVariable;)V

    goto :goto_38

    :cond_22
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3b

    new-instance v0, Lo5/s;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Class;

    invoke-direct {v0, p1}, Lo5/s;-><init>(Ljava/lang/Class;)V

    :goto_38
    iput-object v0, p0, Lo5/u;->b:Ly5/i;

    return-void

    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a classifier type ("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lo5/u;->a:Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public D()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Type not found: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lo5/u;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public K()Ljava/lang/reflect/Type;
    .registers 1

    iget-object p0, p0, Lo5/u;->a:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public f(Lh6/c;)Ly5/a;
    .registers 2

    const-string p0, "fqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAnnotations()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly5/a;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public getClassifier()Ly5/i;
    .registers 1

    iget-object p0, p0, Lo5/u;->b:Ly5/i;

    return-object p0
.end method

.method public p()Z
    .registers 4

    iget-object p0, p0, Lo5/u;->a:Ljava/lang/reflect/Type;

    instance-of v0, p0, Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    const-string v0, "getTypeParameters()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    if-nez p0, :cond_18

    move p0, v2

    goto :goto_19

    :cond_18
    move p0, v1

    :goto_19
    xor-int/2addr p0, v2

    if-eqz p0, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method public v()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly5/x;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo5/u;->a:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lo5/d;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    const-string v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_39

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_39

    new-instance v1, Lo5/d0;

    invoke-direct {v1, v3}, Lo5/d0;-><init>(Ljava/lang/Class;)V

    goto :goto_61

    :cond_39
    instance-of v3, v1, Ljava/lang/reflect/GenericArrayType;

    if-nez v3, :cond_5b

    if-eqz v2, :cond_49

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_5b

    :cond_49
    instance-of v2, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_55

    new-instance v2, Lo5/i0;

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-direct {v2, v1}, Lo5/i0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_60

    :cond_55
    new-instance v2, Lo5/u;

    invoke-direct {v2, v1}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_60

    :cond_5b
    :goto_5b
    new-instance v2, Lo5/j;

    invoke-direct {v2, v1}, Lo5/j;-><init>(Ljava/lang/reflect/Type;)V

    :goto_60
    move-object v1, v2

    :goto_61
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_65
    return-object v0
.end method

.method public z()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
