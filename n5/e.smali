.class public final Ln5/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/t;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lb6/a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lb6/a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/e;->a:Ljava/lang/Class;

    iput-object p2, p0, Ln5/e;->b:Lb6/a;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Ln5/e;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ln5/e;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "klass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lb6/b;

    invoke-direct {v2}, Lb6/b;-><init>()V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "visitor"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v3, "klass.declaredAnnotations"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_20
    if-ge v5, v3, :cond_46

    aget-object v6, v1, v5

    const-string v7, "annotation"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v8

    new-instance v9, Ln5/b;

    invoke-direct {v9, v6}, Ln5/b;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-interface {v2, v8, v9}, La6/t$c;->b(Lh6/b;Li5/v0;)La6/t$a;

    move-result-object v8

    if-eqz v8, :cond_43

    invoke-static {v8, v6, v7}, Ln5/c;->b(La6/t$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_46
    new-instance v1, Ln5/e;

    sget-object v3, Lg6/e;->g:Lg6/e;

    iget-object v5, v2, Lb6/b;->h:Lb6/a$a;

    const/4 v6, 0x0

    if-eqz v5, :cond_aa

    iget-object v5, v2, Lb6/b;->a:[I

    if-nez v5, :cond_54

    goto :goto_aa

    :cond_54
    new-instance v9, Lg6/e;

    iget-object v5, v2, Lb6/b;->a:[I

    iget v7, v2, Lb6/b;->c:I

    and-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    if-eqz v7, :cond_61

    move v7, v8

    goto :goto_62

    :cond_61
    move v7, v4

    :goto_62
    invoke-direct {v9, v5, v7}, Lg6/e;-><init>([IZ)V

    invoke-virtual {v9, v3}, Lg6/e;->b(Lg6/e;)Z

    move-result v3

    if-nez v3, :cond_72

    iget-object v3, v2, Lb6/b;->e:[Ljava/lang/String;

    iput-object v3, v2, Lb6/b;->g:[Ljava/lang/String;

    iput-object v6, v2, Lb6/b;->e:[Ljava/lang/String;

    goto :goto_88

    :cond_72
    iget-object v3, v2, Lb6/b;->h:Lb6/a$a;

    sget-object v5, Lb6/a$a;->d:Lb6/a$a;

    if-eq v3, v5, :cond_80

    sget-object v5, Lb6/a$a;->e:Lb6/a$a;

    if-eq v3, v5, :cond_80

    sget-object v5, Lb6/a$a;->h:Lb6/a$a;

    if-ne v3, v5, :cond_81

    :cond_80
    move v4, v8

    :cond_81
    if-eqz v4, :cond_88

    iget-object v3, v2, Lb6/b;->e:[Ljava/lang/String;

    if-nez v3, :cond_88

    goto :goto_aa

    :cond_88
    :goto_88
    iget-object v3, v2, Lb6/b;->i:[Ljava/lang/String;

    if-eqz v3, :cond_93

    invoke-static {v3}, Lg6/a;->b([Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_95

    :cond_93
    move-object/from16 v16, v6

    :goto_95
    new-instance v3, Lb6/a;

    iget-object v8, v2, Lb6/b;->h:Lb6/a$a;

    iget-object v10, v2, Lb6/b;->e:[Ljava/lang/String;

    iget-object v11, v2, Lb6/b;->g:[Ljava/lang/String;

    iget-object v12, v2, Lb6/b;->f:[Ljava/lang/String;

    iget-object v13, v2, Lb6/b;->b:Ljava/lang/String;

    iget v14, v2, Lb6/b;->c:I

    iget-object v15, v2, Lb6/b;->d:Ljava/lang/String;

    move-object v7, v3

    invoke-direct/range {v7 .. v16}, Lb6/a;-><init>(Lb6/a$a;Lg6/e;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)V

    goto :goto_ab

    :cond_aa
    :goto_aa
    move-object v3, v6

    :goto_ab
    if-nez v3, :cond_ae

    return-object v6

    :cond_ae
    invoke-direct {v1, v0, v3, v6}, Ln5/e;-><init>(Ljava/lang/Class;Lb6/a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method


# virtual methods
.method public c()Lh6/b;
    .registers 1

    iget-object p0, p0, Ln5/e;->a:Ljava/lang/Class;

    invoke-static {p0}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Ln5/e;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "klass.name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {p0, v1, v2, v3, v4}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".class"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Lb6/a;
    .registers 1

    iget-object p0, p0, Ln5/e;->b:Lb6/a;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ln5/e;

    if-eqz v0, :cond_12

    iget-object p0, p0, Ln5/e;->a:Ljava/lang/Class;

    check-cast p1, Ln5/e;

    iget-object p1, p1, Ln5/e;->a:Ljava/lang/Class;

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

.method public f(La6/t$d;[B)V
    .registers 25

    move-object/from16 v0, p1

    const-string v1, "visitor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v1, v1, Ln5/e;->a:Ljava/lang/Class;

    const-string v2, "klass"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "memberVisitor"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "klass.declaredMethods"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_20
    const-string v5, "annotations"

    const-string v6, "parameterType"

    const-string v7, "sb.toString()"

    const-string v8, "("

    const-string v9, "annotation"

    if-ge v4, v3, :cond_115

    aget-object v10, v2, v4

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v11

    const-string v12, "identifier(method.name)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "method"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    const-string v13, "method.parameterTypes"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v13, v12

    const/4 v14, 0x0

    :goto_52
    if-ge v14, v13, :cond_63

    aget-object v15, v12, v14

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15}, Lo5/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_52

    :cond_63
    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-string v12, "method.returnType"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo5/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, La6/b;

    invoke-virtual {v7, v11, v6}, La6/b;->b(Lh6/f;Ljava/lang/String;)La6/t$e;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v8, "method.declaredAnnotations"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v7

    const/4 v11, 0x0

    :goto_91
    if-ge v11, v8, :cond_bc

    aget-object v12, v7, v11

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v14

    new-instance v15, Ln5/b;

    invoke-direct {v15, v12}, Ln5/b;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object/from16 p0, v2

    move-object v2, v6

    check-cast v2, La6/b$b;

    invoke-virtual {v2, v14, v15}, La6/b$b;->b(Lh6/b;Li5/v0;)La6/t$a;

    move-result-object v2

    if-eqz v2, :cond_b7

    invoke-static {v2, v12, v13}, Ln5/c;->b(La6/t$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_b7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p0

    goto :goto_91

    :cond_bc
    move-object/from16 p0, v2

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    const-string v7, "method.parameterAnnotations"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v2

    const/4 v8, 0x0

    :goto_c9
    if-ge v8, v7, :cond_108

    aget-object v10, v2, v8

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v11, v10

    const/4 v12, 0x0

    :goto_d2
    if-ge v12, v11, :cond_101

    aget-object v13, v10, v12

    invoke-static {v13}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v15

    move-object/from16 p2, v2

    new-instance v2, Ln5/b;

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v13}, Ln5/b;-><init>(Ljava/lang/annotation/Annotation;)V

    move/from16 v16, v3

    move-object v3, v6

    check-cast v3, La6/b$a;

    invoke-virtual {v3, v8, v15, v2}, La6/b$a;->c(ILh6/b;Li5/v0;)La6/t$a;

    move-result-object v2

    if-eqz v2, :cond_fa

    invoke-static {v2, v13, v14}, Ln5/c;->b(La6/t$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_fa
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    move/from16 v3, v16

    goto :goto_d2

    :cond_101
    move-object/from16 p2, v2

    move/from16 v16, v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_c9

    :cond_108
    move/from16 v16, v3

    check-cast v6, La6/b$b;

    invoke-virtual {v6}, La6/b$b;->a()V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p0

    goto/16 :goto_20

    :cond_115
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v3, "klass.declaredConstructors"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_120
    if-ge v4, v3, :cond_22d

    aget-object v10, v2, v4

    sget-object v11, Lh6/h;->f:Lh6/f;

    const-string v12, "constructor"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    const-string v14, "constructor.parameterTypes"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v14, v13

    const/4 v15, 0x0

    :goto_141
    if-ge v15, v14, :cond_156

    move-object/from16 p0, v2

    aget-object v2, v13, v15

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo5/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p0

    goto :goto_141

    :cond_156
    move-object/from16 p0, v2

    const-string v2, ")V"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v0

    check-cast v12, La6/b;

    invoke-virtual {v12, v11, v2}, La6/b;->b(Lh6/f;Ljava/lang/String;)La6/t$e;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v11

    const-string v12, "constructor.declaredAnnotations"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v12, v11

    const/4 v13, 0x0

    :goto_176
    if-ge v13, v12, :cond_1a9

    aget-object v14, v11, v13

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v15

    move/from16 v16, v3

    invoke-static {v15}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v3

    move-object/from16 p2, v6

    new-instance v6, Ln5/b;

    invoke-direct {v6, v14}, Ln5/b;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object/from16 v17, v7

    move-object v7, v2

    check-cast v7, La6/b$b;

    invoke-virtual {v7, v3, v6}, La6/b$b;->b(Lh6/b;Li5/v0;)La6/t$a;

    move-result-object v3

    if-eqz v3, :cond_1a0

    invoke-static {v3, v14, v15}, Ln5/c;->b(La6/t$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_1a0
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, p2

    move/from16 v3, v16

    move-object/from16 v7, v17

    goto :goto_176

    :cond_1a9
    move/from16 v16, v3

    move-object/from16 p2, v6

    move-object/from16 v17, v7

    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    const-string v6, "parameterAnnotations"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v3

    const/4 v7, 0x1

    if-nez v6, :cond_1be

    move v6, v7

    goto :goto_1bf

    :cond_1be
    const/4 v6, 0x0

    :goto_1bf
    xor-int/2addr v6, v7

    if-eqz v6, :cond_218

    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    array-length v7, v3

    sub-int/2addr v6, v7

    array-length v7, v3

    const/4 v10, 0x0

    :goto_1cb
    if-ge v10, v7, :cond_218

    aget-object v11, v3, v10

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1d4
    if-ge v13, v12, :cond_20d

    aget-object v14, v11, v13

    invoke-static {v14}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v18, v3

    add-int v3, v10, v6

    move-object/from16 v19, v5

    invoke-static {v15}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v5

    move/from16 v20, v6

    new-instance v6, Ln5/b;

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v14}, Ln5/b;-><init>(Ljava/lang/annotation/Annotation;)V

    move/from16 v21, v7

    move-object v7, v2

    check-cast v7, La6/b$a;

    invoke-virtual {v7, v3, v5, v6}, La6/b$a;->c(ILh6/b;Li5/v0;)La6/t$a;

    move-result-object v3

    if-eqz v3, :cond_202

    invoke-static {v3, v14, v15}, Ln5/c;->b(La6/t$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_202
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    goto :goto_1d4

    :cond_20d
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_1cb

    :cond_218
    move-object/from16 v19, v5

    check-cast v2, La6/b$b;

    invoke-virtual {v2}, La6/b$b;->a()V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move/from16 v3, v16

    move-object/from16 v7, v17

    move-object/from16 v5, v19

    goto/16 :goto_120

    :cond_22d
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "klass.declaredFields"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_238
    if-ge v3, v2, :cond_2a0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v5

    const-string v6, "identifier(field.name)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "field"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "field.type"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo5/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v0

    check-cast v8, La6/b;

    invoke-virtual {v8, v5, v6, v7}, La6/b;->a(Lh6/f;Ljava/lang/String;Ljava/lang/Object;)La6/t$c;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    const-string v6, "field.declaredAnnotations"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v4

    const/4 v7, 0x0

    :goto_271
    if-ge v7, v6, :cond_298

    aget-object v8, v4, v7

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v11

    new-instance v12, Ln5/b;

    invoke-direct {v12, v8}, Ln5/b;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object v13, v5

    check-cast v13, La6/b$b;

    invoke-virtual {v13, v11, v12}, La6/b$b;->b(Lh6/b;Li5/v0;)La6/t$a;

    move-result-object v11

    if-eqz v11, :cond_295

    invoke-static {v11, v8, v10}, Ln5/c;->b(La6/t$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_295
    add-int/lit8 v7, v7, 0x1

    goto :goto_271

    :cond_298
    check-cast v5, La6/b$b;

    invoke-virtual {v5}, La6/b$b;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_238

    :cond_2a0
    return-void
.end method

.method public g(La6/t$c;[B)V
    .registers 8

    const-string p2, "visitor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ln5/e;->a:Ljava/lang/Class;

    const-string v0, "klass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    const-string p2, "klass.declaredAnnotations"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p0

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p2, :cond_40

    aget-object v1, p0, v0

    const-string v2, "annotation"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lz4/d;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v3

    new-instance v4, Ln5/b;

    invoke-direct {v4, v1}, Ln5/b;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-interface {p1, v3, v4}, La6/t$c;->b(Lh6/b;Li5/v0;)La6/t$a;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-static {v3, v1, v2}, Ln5/c;->b(La6/t$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_40
    invoke-interface {p1}, La6/t$c;->a()V

    return-void
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Ln5/e;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ln5/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln5/e;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
