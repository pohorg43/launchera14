.class public Lkotlin/jvm/internal/ReflectionFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KOTLIN_JVM_FUNCTIONS:Ljava/lang/String; = "kotlin.jvm.functions."


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createKotlinClass(Ljava/lang/Class;)Lz4/d;
    .registers 2

    new-instance p0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lz4/d;
    .registers 3

    new-instance p0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public function(Lkotlin/jvm/internal/FunctionReference;)Lz4/h;
    .registers 2

    return-object p1
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;
    .registers 2

    new-instance p0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lz4/d;
    .registers 3

    new-instance p0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lz4/g;
    .registers 3

    new-instance p0, Lkotlin/jvm/internal/PackageReference;

    invoke-direct {p0, p1, p2}, Lkotlin/jvm/internal/PackageReference;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object p0
.end method

.method public mutableCollectionType(Lz4/r;)Lz4/r;
    .registers 5

    move-object p0, p1

    check-cast p0, Lkotlin/jvm/internal/TypeReference;

    new-instance v0, Lkotlin/jvm/internal/TypeReference;

    invoke-interface {p1}, Lz4/r;->getClassifier()Lz4/f;

    move-result-object v1

    invoke-interface {p1}, Lz4/r;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getPlatformTypeUpperBound$kotlin_stdlib()Lz4/r;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getFlags$kotlin_stdlib()I

    move-result p0

    or-int/lit8 p0, p0, 0x2

    invoke-direct {v0, v1, p1, v2, p0}, Lkotlin/jvm/internal/TypeReference;-><init>(Lz4/f;Ljava/util/List;Lz4/r;I)V

    return-object v0
.end method

.method public mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lz4/j;
    .registers 2

    return-object p1
.end method

.method public mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lz4/k;
    .registers 2

    return-object p1
.end method

.method public mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lz4/l;
    .registers 2

    return-object p1
.end method

.method public nothingType(Lz4/r;)Lz4/r;
    .registers 5

    move-object p0, p1

    check-cast p0, Lkotlin/jvm/internal/TypeReference;

    new-instance v0, Lkotlin/jvm/internal/TypeReference;

    invoke-interface {p1}, Lz4/r;->getClassifier()Lz4/f;

    move-result-object v1

    invoke-interface {p1}, Lz4/r;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getPlatformTypeUpperBound$kotlin_stdlib()Lz4/r;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getFlags$kotlin_stdlib()I

    move-result p0

    or-int/lit8 p0, p0, 0x4

    invoke-direct {v0, v1, p1, v2, p0}, Lkotlin/jvm/internal/TypeReference;-><init>(Lz4/f;Ljava/util/List;Lz4/r;I)V

    return-object v0
.end method

.method public platformType(Lz4/r;Lz4/r;)Lz4/r;
    .registers 5

    new-instance p0, Lkotlin/jvm/internal/TypeReference;

    invoke-interface {p1}, Lz4/r;->getClassifier()Lz4/f;

    move-result-object v0

    invoke-interface {p1}, Lz4/r;->getArguments()Ljava/util/List;

    move-result-object v1

    check-cast p1, Lkotlin/jvm/internal/TypeReference;

    invoke-virtual {p1}, Lkotlin/jvm/internal/TypeReference;->getFlags$kotlin_stdlib()I

    move-result p1

    invoke-direct {p0, v0, v1, p2, p1}, Lkotlin/jvm/internal/TypeReference;-><init>(Lz4/f;Ljava/util/List;Lz4/r;I)V

    return-object p0
.end method

.method public property0(Lkotlin/jvm/internal/PropertyReference0;)Lz4/o;
    .registers 2

    return-object p1
.end method

.method public property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;
    .registers 2

    return-object p1
.end method

.method public property2(Lkotlin/jvm/internal/PropertyReference2;)Lz4/q;
    .registers 2

    return-object p1
.end method

.method public renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "kotlin.jvm.functions."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1d
    return-object p0
.end method

.method public renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

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

    check-cast p1, Lkotlin/jvm/internal/TypeParameterReference;

    invoke-virtual {p1, p2}, Lkotlin/jvm/internal/TypeParameterReference;->setUpperBounds(Ljava/util/List;)V

    return-void
.end method

.method public typeOf(Lz4/f;Ljava/util/List;Z)Lz4/r;
    .registers 4
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

    new-instance p0, Lkotlin/jvm/internal/TypeReference;

    invoke-direct {p0, p1, p2, p3}, Lkotlin/jvm/internal/TypeReference;-><init>(Lz4/f;Ljava/util/List;Z)V

    return-object p0
.end method

.method public typeParameter(Ljava/lang/Object;Ljava/lang/String;Lz4/u;Z)Lz4/s;
    .registers 5

    new-instance p0, Lkotlin/jvm/internal/TypeParameterReference;

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/jvm/internal/TypeParameterReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Lz4/u;Z)V

    return-object p0
.end method
