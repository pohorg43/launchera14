.class public final Lz4/y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz4/y$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypesJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypesJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,230:1\n1#2:231\n1549#3:232\n1620#3,3:233\n1549#3:236\n1620#3,3:237\n1549#3:240\n1620#3,3:241\n*S KotlinDebug\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypesJVMKt\n*L\n69#1:232\n69#1:233,3\n71#1:236\n71#1:237,3\n77#1:240\n77#1:241,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 5

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_63

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object v0, Lz4/z;->a:Lz4/z;

    invoke-static {p0, v0}, Lj7/l;->i(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2b

    :cond_36
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lj7/p;->l(Lj7/h;)I

    move-result p0

    const-string v1, "[]"

    invoke-static {v1, p0}, Lk7/m;->o(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5d

    :cond_51
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Sequence is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_5d
    const-string v0, "{\n        if (type.isArr…   } else type.name\n    }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_67

    :cond_63
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_67
    return-object p0
.end method

.method public static final b(Lz4/r;Z)Ljava/lang/reflect/Type;
    .registers 5

    invoke-interface {p0}, Lz4/r;->getClassifier()Lz4/f;

    move-result-object v0

    instance-of v1, v0, Lz4/s;

    if-eqz v1, :cond_10

    new-instance p0, Lz4/x;

    check-cast v0, Lz4/s;

    invoke-direct {p0, v0}, Lz4/x;-><init>(Lz4/s;)V

    return-object p0

    :cond_10
    instance-of v1, v0, Lz4/d;

    if-eqz v1, :cond_97

    check-cast v0, Lz4/d;

    if-eqz p1, :cond_1d

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lz4/d;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_21

    :cond_1d
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object p1

    :goto_21
    invoke-interface {p0}, Lz4/r;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    return-object p1

    :cond_2c
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3d

    return-object p1

    :cond_3d
    invoke-static {v0}, Li4/v;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/t;

    if-eqz v0, :cond_7b

    iget-object p0, v0, Lz4/t;->a:Lz4/u;

    iget-object v0, v0, Lz4/t;->b:Lz4/r;

    const/4 v1, -0x1

    if-nez p0, :cond_4e

    move p0, v1

    goto :goto_56

    :cond_4e
    sget-object v2, Lz4/y$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    :goto_56
    if-eq p0, v1, :cond_7a

    const/4 v1, 0x1

    if-eq p0, v1, :cond_7a

    const/4 v2, 0x2

    if-eq p0, v2, :cond_68

    const/4 v2, 0x3

    if-ne p0, v2, :cond_62

    goto :goto_68

    :cond_62
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_68
    :goto_68
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1}, Lz4/y;->c(Lz4/r;ZI)Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_75

    goto :goto_7a

    :cond_75
    new-instance p1, Lz4/a;

    invoke-direct {p1, p0}, Lz4/a;-><init>(Ljava/lang/reflect/Type;)V

    :cond_7a
    :goto_7a
    return-object p1

    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kotlin.Array must have exactly one type argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_92
    invoke-static {p1, v0}, Lz4/y;->d(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_97
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type classifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic c(Lz4/r;ZI)Ljava/lang/reflect/Type;
    .registers 3

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lz4/y;->b(Lz4/r;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lz4/t;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_30

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/t;

    invoke-static {v1}, Lz4/y;->e(Lz4/t;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2a
    new-instance p1, Lz4/w;

    invoke-direct {p1, p0, v0, v2}, Lz4/w;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V

    return-object p1

    :cond_30
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_61

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/t;

    invoke-static {v1}, Lz4/y;->e(Lz4/t;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_5b
    new-instance p1, Lz4/w;

    invoke-direct {p1, p0, v0, v2}, Lz4/w;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V

    return-object p1

    :cond_61
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lz4/y;->d(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_84
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/t;

    invoke-static {v1}, Lz4/y;->e(Lz4/t;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_98
    new-instance p1, Lz4/w;

    invoke-direct {p1, p0, v0, v2}, Lz4/w;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V

    return-object p1
.end method

.method public static final e(Lz4/t;)Ljava/lang/reflect/Type;
    .registers 5

    iget-object v0, p0, Lz4/t;->a:Lz4/u;

    if-nez v0, :cond_7

    sget-object p0, Lz4/a0;->c:Lz4/a0;

    return-object p0

    :cond_7
    iget-object p0, p0, Lz4/t;->b:Lz4/r;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    const/4 v2, 0x0

    if-eq v0, v1, :cond_29

    const/4 v3, 0x2

    if-ne v0, v3, :cond_23

    new-instance v0, Lz4/a0;

    invoke-static {p0, v1}, Lz4/y;->b(Lz4/r;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Lz4/a0;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_37

    :cond_23
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_29
    new-instance v0, Lz4/a0;

    invoke-static {p0, v1}, Lz4/y;->b(Lz4/r;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lz4/a0;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_37

    :cond_33
    invoke-static {p0, v1}, Lz4/y;->b(Lz4/r;Z)Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_37
    return-object v0
.end method
