.class public Lkotlin/jvm/internal/Reflection;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EMPTY_K_CLASS_ARRAY:[Lz4/d;

.field public static final REFLECTION_NOT_AVAILABLE:Ljava/lang/String; = " (Kotlin reflection is not available)"

.field private static final factory:Lkotlin/jvm/internal/ReflectionFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lc5/q0;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/internal/ReflectionFactory;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_9} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_9} :catch_a
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_9} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_9} :catch_a

    move-object v0, v1

    :catch_a
    if-eqz v0, :cond_d

    goto :goto_12

    :cond_d
    new-instance v0, Lkotlin/jvm/internal/ReflectionFactory;

    invoke-direct {v0}, Lkotlin/jvm/internal/ReflectionFactory;-><init>()V

    :goto_12
    sput-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const/4 v0, 0x0

    new-array v0, v0, [Lz4/d;

    sput-object v0, Lkotlin/jvm/internal/Reflection;->EMPTY_K_CLASS_ARRAY:[Lz4/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKotlinClass(Ljava/lang/Class;)Lz4/d;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->createKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    return-object p0
.end method

.method public static createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lz4/d;
    .registers 3

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lz4/d;

    move-result-object p0

    return-object p0
.end method

.method public static function(Lkotlin/jvm/internal/FunctionReference;)Lz4/h;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->function(Lkotlin/jvm/internal/FunctionReference;)Lz4/h;

    move-result-object p0

    return-object p0
.end method

.method public static getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    return-object p0
.end method

.method public static getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lz4/d;
    .registers 3

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lz4/d;

    move-result-object p0

    return-object p0
.end method

.method public static getOrCreateKotlinClasses([Ljava/lang/Class;)[Lz4/d;
    .registers 5

    array-length v0, p0

    if-nez v0, :cond_6

    sget-object p0, Lkotlin/jvm/internal/Reflection;->EMPTY_K_CLASS_ARRAY:[Lz4/d;

    return-object p0

    :cond_6
    new-array v1, v0, [Lz4/d;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_16

    aget-object v3, p0, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    return-object v1
.end method

.method public static getOrCreateKotlinPackage(Ljava/lang/Class;)Lz4/g;
    .registers 3

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lz4/g;

    move-result-object p0

    return-object p0
.end method

.method public static getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lz4/g;
    .registers 3

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lz4/g;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCollectionType(Lz4/r;)Lz4/r;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableCollectionType(Lz4/r;)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lz4/j;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lz4/j;

    move-result-object p0

    return-object p0
.end method

.method public static mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lz4/k;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lz4/k;

    move-result-object p0

    return-object p0
.end method

.method public static mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lz4/l;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lz4/l;

    move-result-object p0

    return-object p0
.end method

.method public static nothingType(Lz4/r;)Lz4/r;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->nothingType(Lz4/r;)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static nullableTypeOf(Ljava/lang/Class;)Lz4/r;
    .registers 4

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static nullableTypeOf(Ljava/lang/Class;Lz4/t;)Lz4/r;
    .registers 4

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/ReflectionFactory;->typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static nullableTypeOf(Ljava/lang/Class;Lz4/t;Lz4/t;)Lz4/r;
    .registers 6

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Lz4/t;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p0, p2, p1}, Lkotlin/jvm/internal/ReflectionFactory;->typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static varargs nullableTypeOf(Ljava/lang/Class;[Lz4/t;)Lz4/r;
    .registers 4

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {p1}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/ReflectionFactory;->typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static nullableTypeOf(Lz4/f;)Lz4/r;
    .registers 4

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static platformType(Lz4/r;Lz4/r;)Lz4/r;
    .registers 3

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->platformType(Lz4/r;Lz4/r;)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static property0(Lkotlin/jvm/internal/PropertyReference0;)Lz4/o;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lz4/o;

    move-result-object p0

    return-object p0
.end method

.method public static property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object p0

    return-object p0
.end method

.method public static property2(Lkotlin/jvm/internal/PropertyReference2;)Lz4/q;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->property2(Lkotlin/jvm/internal/PropertyReference2;)Lz4/q;

    move-result-object p0

    return-object p0
.end method

.method public static renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setUpperBounds(Lz4/s;Lz4/r;)V
    .registers 3

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->setUpperBounds(Lz4/s;Ljava/util/List;)V

    return-void
.end method

.method public static varargs setUpperBounds(Lz4/s;[Lz4/r;)V
    .registers 3

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {p1}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->setUpperBounds(Lz4/s;Ljava/util/List;)V

    return-void
.end method

.method public static typeOf(Ljava/lang/Class;)Lz4/r;
    .registers 4

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static typeOf(Ljava/lang/Class;Lz4/t;)Lz4/r;
    .registers 4

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/ReflectionFactory;->typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static typeOf(Ljava/lang/Class;Lz4/t;Lz4/t;)Lz4/r;
    .registers 6

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Lz4/t;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static varargs typeOf(Ljava/lang/Class;[Lz4/t;)Lz4/r;
    .registers 4

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {p1}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/ReflectionFactory;->typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static typeOf(Lz4/f;)Lz4/r;
    .registers 4

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public static typeParameter(Ljava/lang/Object;Ljava/lang/String;Lz4/u;Z)Lz4/s;
    .registers 5

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lkotlin/jvm/internal/ReflectionFactory;->typeParameter(Ljava/lang/Object;Ljava/lang/String;Lz4/u;Z)Lz4/s;

    move-result-object p0

    return-object p0
.end method
