.class public final Lv3/e0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/r$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv3/e0$a;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lv3/e0$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lv3/e0$a;
    .registers 25

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_10
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_1ca

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1b
    if-ge v6, v5, :cond_1c4

    aget-object v15, v4, v6

    const-class v8, Lv3/h0;

    invoke-virtual {v15, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    const-string v14, "\n    "

    const-string v13, "Unexpected signature for "

    const/4 v9, 0x1

    if-eqz v8, :cond_f8

    invoke-virtual {v15, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v8

    array-length v9, v11

    const/4 v10, 0x2

    if-lt v9, v10, :cond_72

    aget-object v7, v11, v7

    const-class v9, Lv3/b0;

    if-ne v7, v9, :cond_72

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v12, v7, :cond_72

    invoke-static {v10, v11}, Lv3/a;->c(I[Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_72

    const/4 v7, 0x1

    aget-object v8, v8, v7

    invoke-static {v8}, Lw3/b;->g([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v10

    new-instance v16, Lv3/b;

    aget-object v9, v11, v7

    array-length v7, v11

    const/16 v17, 0x2

    const/16 v18, 0x1

    move-object/from16 v8, v16

    move-object/from16 v11, p1

    move-object v12, v15

    move-object/from16 v20, v13

    move v13, v7

    move-object v7, v14

    move/from16 v14, v17

    move-object/from16 v21, v15

    move/from16 v15, v18

    invoke-direct/range {v8 .. v15}, Lv3/b;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    goto :goto_ab

    :cond_72
    move-object/from16 v20, v13

    move-object v7, v14

    move-object/from16 v21, v15

    array-length v9, v11

    const/4 v10, 0x1

    if-ne v9, v10, :cond_da

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v12, v9, :cond_da

    sget-object v9, Lw3/b;->a:Ljava/util/Set;

    invoke-interface/range {v21 .. v21}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    invoke-static {v9}, Lw3/b;->g([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v19

    const/4 v9, 0x0

    aget-object v10, v8, v9

    invoke-static {v10}, Lw3/b;->g([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v18

    aget-object v8, v8, v9

    invoke-static {v8}, Lw3/b;->e([Ljava/lang/annotation/Annotation;)Z

    move-result v15

    new-instance v22, Lv3/c;

    aget-object v9, v11, v9

    array-length v13, v11

    const/4 v14, 0x1

    move-object/from16 v8, v22

    move-object/from16 v10, v18

    move-object/from16 v16, v11

    move-object/from16 v11, p1

    move-object/from16 v17, v12

    move-object/from16 v12, v21

    invoke-direct/range {v8 .. v19}, Lv3/c;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V

    :goto_ab
    iget-object v9, v8, Lv3/a$b;->a:Ljava/lang/reflect/Type;

    iget-object v10, v8, Lv3/a$b;->b:Ljava/util/Set;

    invoke-static {v1, v9, v10}, Lv3/a;->b(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/a$b;

    move-result-object v9

    if-nez v9, :cond_bd

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v20

    move-object/from16 v12, v21

    goto :goto_fb

    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Conflicting @ToJson methods:\n    "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lv3/a$b;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lv3/a$b;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_da
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v20

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v21

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".\n@ToJson method signatures may have one of the following structures:\n    <any access modifier> void toJson(JsonWriter writer, T value) throws <any>;\n    <any access modifier> void toJson(JsonWriter writer, T value, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R toJson(T value) throws <any>;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f8
    move-object v8, v13

    move-object v7, v14

    move-object v12, v15

    :goto_fb
    const-class v9, Lv3/p;

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1bf

    const/4 v9, 0x1

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v15

    sget-object v10, Lw3/b;->a:Ljava/util/Set;

    invoke-interface {v12}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v10

    invoke-static {v10}, Lw3/b;->g([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v19

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v10

    array-length v11, v14

    if-lt v11, v9, :cond_147

    const/4 v11, 0x0

    aget-object v11, v14, v11

    const-class v13, Lv3/w;

    if-ne v11, v13, :cond_147

    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v15, v11, :cond_147

    invoke-static {v9, v14}, Lv3/a;->c(I[Ljava/lang/reflect/Type;)Z

    move-result v11

    if-eqz v11, :cond_147

    new-instance v16, Lv3/d;

    array-length v13, v14

    const/4 v14, 0x1

    const/16 v17, 0x1

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v19

    move-object/from16 v11, p1

    move/from16 v15, v17

    invoke-direct/range {v8 .. v15}, Lv3/d;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    const/4 v8, 0x0

    move-object/from16 v9, v16

    goto :goto_179

    :cond_147
    array-length v11, v14

    if-ne v11, v9, :cond_1a5

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v15, v9, :cond_1a5

    const/16 v20, 0x0

    aget-object v8, v10, v20

    invoke-static {v8}, Lw3/b;->g([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v18

    aget-object v8, v10, v20

    invoke-static {v8}, Lw3/b;->e([Ljava/lang/annotation/Annotation;)Z

    move-result v16

    new-instance v21, Lv3/e;

    array-length v13, v14

    const/16 v17, 0x1

    move-object/from16 v8, v21

    move-object v9, v15

    move-object/from16 v10, v19

    move-object/from16 v11, p1

    move-object/from16 v22, v14

    move/from16 v14, v17

    move-object/from16 v17, v15

    move/from16 v15, v16

    move-object/from16 v16, v22

    invoke-direct/range {v8 .. v19}, Lv3/e;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V

    move/from16 v8, v20

    move-object/from16 v9, v21

    :goto_179
    iget-object v10, v9, Lv3/a$b;->a:Ljava/lang/reflect/Type;

    iget-object v11, v9, Lv3/a$b;->b:Ljava/util/Set;

    invoke-static {v2, v10, v11}, Lv3/a;->b(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/a$b;

    move-result-object v10

    if-nez v10, :cond_188

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v8

    goto :goto_1c0

    :cond_188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Conflicting @FromJson methods:\n    "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lv3/a$b;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lv3/a$b;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".\n@FromJson method signatures may have one of the following structures:\n    <any access modifier> R fromJson(JsonReader jsonReader) throws <any>;\n    <any access modifier> R fromJson(JsonReader jsonReader, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R fromJson(T value) throws <any>;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1bf
    const/4 v7, 0x0

    :goto_1c0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1b

    :cond_1c4
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto/16 :goto_10

    :cond_1ca
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d7

    goto :goto_1f2

    :cond_1d7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected at least one @ToJson or @FromJson method on "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f2
    :goto_1f2
    new-instance v3, Lv3/a;

    invoke-direct {v3, v1, v2}, Lv3/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lv3/e0$a;->b(Lv3/r$a;)Lv3/e0$a;

    return-object v0
.end method

.method public b(Lv3/r$a;)Lv3/e0$a;
    .registers 5

    iget-object v0, p0, Lv3/e0$a;->a:Ljava/util/List;

    iget v1, p0, Lv3/e0$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lv3/e0$a;->b:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method
