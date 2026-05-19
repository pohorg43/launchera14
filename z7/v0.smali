.class public final Lz7/v0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final varargs a(Lz4/d;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz4/d<",
            "TT;>;[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lw7/d;

    const-class v3, Lkotlinx/serialization/KSerializer;

    const-string v4, "$this$constructSerializerForGivenTypeArgs"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_4d

    const-class v5, Lkotlinx/serialization/a;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-nez v5, :cond_30

    const-class v5, Lw7/c;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-nez v5, :cond_30

    move v5, v7

    goto :goto_31

    :cond_30
    move v5, v6

    :goto_31
    if-eqz v5, :cond_4d

    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lz7/s;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "canonicalName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Enum;

    invoke-direct {v1, v2, v0}, Lz7/s;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v1

    :cond_4d
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_7a

    invoke-static/range {p0 .. p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lkotlinx/serialization/a;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/a;

    if-eqz v1, :cond_74

    invoke-interface {v1}, Lkotlinx/serialization/a;->with()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_74
    new-instance v8, Lw7/d;

    invoke-direct {v8, v0}, Lw7/d;-><init>(Lz4/d;)V

    :cond_79
    return-object v8

    :cond_7a
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkotlinx/serialization/KSerializer;

    :try_start_81
    const-string v5, "Companion"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const-string v9, "companion"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_93
    .catchall {:try_start_81 .. :try_end_93} :catchall_94

    goto :goto_95

    :catchall_94
    move-object v5, v8

    :goto_95
    const-string v9, "serializer"

    if-eqz v5, :cond_ee

    :try_start_99
    array-length v10, v1

    if-nez v10, :cond_9e

    move v10, v7

    goto :goto_9f

    :cond_9e
    move v10, v6

    :goto_9f
    if-eqz v10, :cond_a4

    new-array v10, v6, [Ljava/lang/Class;

    goto :goto_b0

    :cond_a4
    array-length v10, v1

    new-array v11, v10, [Ljava/lang/Class;

    move v12, v6

    :goto_a8
    if-ge v12, v10, :cond_af

    aput-object v3, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_a8

    :cond_af
    move-object v10, v11

    :goto_b0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    array-length v12, v10

    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v11, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v11, v1

    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lkotlinx/serialization/KSerializer;

    if-nez v5, :cond_cd

    move-object v1, v8

    :cond_cd
    check-cast v1, Lkotlinx/serialization/KSerializer;
    :try_end_cf
    .catch Ljava/lang/NoSuchMethodException; {:try_start_99 .. :try_end_cf} :catch_ee
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_99 .. :try_end_cf} :catch_d0

    goto :goto_ef

    :catch_d0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_ed

    const-string v2, "e.cause ?: throw e"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e5

    goto :goto_e9

    :cond_e5
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_e9
    invoke-direct {v2, v1, v3}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v2

    :cond_ed
    throw v0

    :catch_ee
    :cond_ee
    move-object v1, v8

    :goto_ef
    if-eqz v1, :cond_f2

    return-object v1

    :cond_f2
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v5, "jClass.declaredFields"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v1

    move v10, v6

    move v11, v10

    move-object v12, v8

    :goto_ff
    const-string v13, "INSTANCE"

    const-string v14, "it"

    if-ge v10, v5, :cond_136

    aget-object v15, v1, v10

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12a

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12a

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_12a

    const/4 v7, 0x1

    goto :goto_12b

    :cond_12a
    move v7, v6

    :goto_12b
    if-eqz v7, :cond_132

    if-eqz v11, :cond_130

    goto :goto_138

    :cond_130
    move-object v12, v15

    const/4 v11, 0x1

    :cond_132
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    goto :goto_ff

    :cond_136
    if-nez v11, :cond_139

    :goto_138
    move-object v12, v8

    :cond_139
    if-eqz v12, :cond_19b

    invoke-virtual {v12, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v7, "jClass.methods"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v5

    move v10, v6

    move v11, v10

    move-object v12, v8

    :goto_14c
    if-ge v10, v7, :cond_187

    aget-object v15, v5, v10

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17a

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    const-string v6, "it.parameterTypes"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v8

    if-nez v6, :cond_16b

    const/4 v6, 0x1

    goto :goto_16c

    :cond_16b
    const/4 v6, 0x0

    :goto_16c
    if-eqz v6, :cond_17a

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17a

    const/4 v6, 0x1

    goto :goto_17b

    :cond_17a
    const/4 v6, 0x0

    :goto_17b
    if-eqz v6, :cond_182

    if-eqz v11, :cond_180

    goto :goto_189

    :cond_180
    move-object v12, v15

    const/4 v11, 0x1

    :cond_182
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_14c

    :cond_187
    if-nez v11, :cond_18a

    :goto_189
    const/4 v12, 0x0

    :cond_18a
    const/4 v3, 0x0

    if-eqz v12, :cond_19c

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lkotlinx/serialization/KSerializer;

    if-nez v5, :cond_198

    const/4 v1, 0x0

    :cond_198
    check-cast v1, Lkotlinx/serialization/KSerializer;

    goto :goto_19d

    :cond_19b
    move v3, v6

    :cond_19c
    const/4 v1, 0x0

    :goto_19d
    if-eqz v1, :cond_1a0

    return-object v1

    :cond_1a0
    :try_start_1a0
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    const-string v4, "jClass.declaredClasses"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v1

    move v6, v3

    const/4 v5, 0x0

    :goto_1ac
    if-ge v6, v4, :cond_1c7

    aget-object v7, v1, v6

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "$serializer"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c4

    if-eqz v3, :cond_1c2

    goto :goto_1c9

    :cond_1c2
    move-object v5, v7

    const/4 v3, 0x1

    :cond_1c4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1ac

    :cond_1c7
    if-nez v3, :cond_1ca

    :goto_1c9
    const/4 v5, 0x0

    :cond_1ca
    if-eqz v5, :cond_1d8

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_1d0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1a0 .. :try_end_1d0} :catch_1e2

    if-eqz v1, :cond_1d8

    const/4 v3, 0x0

    :try_start_1d3
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1da

    :cond_1d8
    const/4 v3, 0x0

    move-object v1, v3

    :goto_1da
    instance-of v4, v1, Lkotlinx/serialization/KSerializer;

    if-nez v4, :cond_1df

    move-object v1, v3

    :cond_1df
    check-cast v1, Lkotlinx/serialization/KSerializer;
    :try_end_1e1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1d3 .. :try_end_1e1} :catch_1e3

    goto :goto_1e4

    :catch_1e2
    const/4 v3, 0x0

    :catch_1e3
    move-object v1, v3

    :goto_1e4
    if-eqz v1, :cond_1e7

    return-object v1

    :cond_1e7
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lw7/c;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_1f9

    new-instance v8, Lw7/d;

    invoke-direct {v8, v0}, Lw7/d;-><init>(Lz4/d;)V

    goto :goto_21c

    :cond_1f9
    const-class v4, Lkotlinx/serialization/a;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/a;

    if-eqz v1, :cond_21b

    invoke-interface {v1}, Lkotlinx/serialization/a;->with()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21b

    new-instance v8, Lw7/d;

    invoke-direct {v8, v0}, Lw7/d;-><init>(Lz4/d;)V

    goto :goto_21c

    :cond_21b
    move-object v8, v3

    :goto_21c
    return-object v8
.end method

.method public static final b(Lz4/d;)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/d<",
            "*>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const-string v0, "$this$platformSpecificSerializerNotRegistered"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$serializerNotRegistered"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw7/g;

    const-string v1, "Serializer for class \'"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lz4/d;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not found.\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Mark the class as @Serializable or provide the serializer explicitly."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lw7/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method
