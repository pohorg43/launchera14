.class public final Ln5/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/lang/Class;)Lm6/f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lm6/f;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "currentClass.componentType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_79

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    new-instance p0, Lm6/f;

    sget-object v1, Lf5/j$a;->e:Lh6/d;

    invoke-virtual {v1}, Lh6/d;->i()Lh6/c;

    move-result-object v1

    invoke-static {v1}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v1

    const-string v2, "topLevel(StandardNames.FqNames.unit.toSafe())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lm6/f;-><init>(Lh6/b;I)V

    return-object p0

    :cond_36
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp6/d;->b(Ljava/lang/String;)Lp6/d;

    move-result-object p0

    invoke-virtual {p0}, Lp6/d;->e()Lf5/h;

    move-result-object p0

    const-string v1, "get(currentClass.name).primitiveType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v0, :cond_62

    new-instance v1, Lm6/f;

    iget-object p0, p0, Lf5/h;->d:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh6/c;

    invoke-static {p0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object p0

    const-string v2, "topLevel(primitiveType.arrayTypeFqName)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, p0, v0}, Lm6/f;-><init>(Lh6/b;I)V

    return-object v1

    :cond_62
    new-instance v1, Lm6/f;

    iget-object p0, p0, Lf5/h;->c:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh6/c;

    invoke-static {p0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object p0

    const-string v2, "topLevel(primitiveType.typeFqName)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lm6/f;-><init>(Lh6/b;I)V

    return-object v1

    :cond_79
    invoke-static {p0}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object p0

    sget-object v1, Lh5/c;->a:Lh5/c;

    invoke-virtual {p0}, Lh6/b;->b()Lh6/c;

    move-result-object v2

    const-string v3, "javaClassId.asSingleFqName()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lh5/c;->g(Lh6/c;)Lh6/b;

    move-result-object v1

    if-nez v1, :cond_8f

    goto :goto_90

    :cond_8f
    move-object p0, v1

    :goto_90
    new-instance v1, Lm6/f;

    invoke-direct {v1, p0, v0}, Lm6/f;-><init>(Lh6/b;I)V

    return-object v1
.end method

.method public static final b(La6/t$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/t$a;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    const-string v0, "annotationType.declaredMethods"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_18b

    aget-object v3, p2, v2

    :try_start_10
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_19} :catch_187

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v3

    const-string v5, "identifier(method.name)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "null cannot be cast to non-null type java.lang.Class<*>"

    if-eqz v6, :cond_42

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, Ln5/c;->a(Ljava/lang/Class;)Lm6/f;

    move-result-object v4

    invoke-interface {p0, v3, v4}, La6/t$a;->b(Lh6/f;Lm6/f;)V

    goto/16 :goto_187

    :cond_42
    sget-object v6, Ln5/g;->a:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {p0, v3, v4}, La6/t$a;->c(Lh6/f;Ljava/lang/Object;)V

    goto/16 :goto_187

    :cond_4f
    sget-object v6, Lo5/d;->a:Ljava/util/List;

    const-string v6, "<this>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    const-string v8, "null cannot be cast to non-null type kotlin.Enum<*>"

    if-eqz v6, :cond_8b

    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_67

    goto :goto_6b

    :cond_67
    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    :goto_6b
    const-string v6, "if (clazz.isEnum) clazz else clazz.enclosingClass"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v5

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v4

    const-string v6, "identifier((value as Enum<*>).name)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v3, v5, v4}, La6/t$a;->e(Lh6/f;Lh6/b;Lh6/f;)V

    goto/16 :goto_187

    :cond_8b
    const-class v6, Ljava/lang/annotation/Annotation;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    const-string v9, "null cannot be cast to non-null type kotlin.Annotation"

    if-eqz v6, :cond_bf

    invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    const-string v6, "clazz.interfaces"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Li4/k;->L([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    const-string v6, "annotationClass"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v6

    invoke-interface {p0, v3, v6}, La6/t$a;->f(Lh6/f;Lh6/b;)La6/t$a;

    move-result-object v3

    if-nez v3, :cond_b5

    goto/16 :goto_187

    :cond_b5
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/annotation/Annotation;

    invoke-static {v3, v4, v5}, Ln5/c;->b(La6/t$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto/16 :goto_187

    :cond_bf
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_168

    invoke-interface {p0, v3}, La6/t$a;->d(Lh6/f;)La6/t$b;

    move-result-object v3

    if-nez v3, :cond_cd

    goto/16 :goto_187

    :cond_cd
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    const-string v10, "componentType"

    const-string v11, "null cannot be cast to non-null type kotlin.Array<*>"

    if-eqz v6, :cond_105

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v5

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [Ljava/lang/Object;

    array-length v6, v4

    move v7, v1

    :goto_e9
    if-ge v7, v6, :cond_164

    aget-object v9, v4, v7

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v9

    const-string v10, "identifier((element as Enum<*>).name)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5, v9}, La6/t$b;->d(Lh6/b;Lh6/f;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e9

    :cond_105
    const-class v6, Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_127

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    move v6, v1

    :goto_114
    if-ge v6, v5, :cond_164

    aget-object v8, v4, v6

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Class;

    invoke-static {v8}, Ln5/c;->a(Ljava/lang/Class;)Lm6/f;

    move-result-object v8

    invoke-interface {v3, v8}, La6/t$b;->e(Lm6/f;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_114

    :cond_127
    const-class v6, Ljava/lang/annotation/Annotation;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_153

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [Ljava/lang/Object;

    array-length v6, v4

    move v7, v1

    :goto_136
    if-ge v7, v6, :cond_164

    aget-object v8, v4, v7

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object v11

    invoke-interface {v3, v11}, La6/t$b;->b(Lh6/b;)La6/t$a;

    move-result-object v11

    if-nez v11, :cond_148

    goto :goto_150

    :cond_148
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/annotation/Annotation;

    invoke-static {v11, v8, v5}, Ln5/c;->b(La6/t$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_150
    add-int/lit8 v7, v7, 0x1

    goto :goto_136

    :cond_153
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    move v6, v1

    :goto_15a
    if-ge v6, v5, :cond_164

    aget-object v7, v4, v6

    invoke-interface {v3, v7}, La6/t$b;->c(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_15a

    :cond_164
    invoke-interface {v3}, La6/t$b;->a()V

    goto :goto_187

    :cond_168
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported annotation argument value ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_187
    :goto_187
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    :cond_18b
    invoke-interface {p0}, La6/t$a;->a()V

    return-void
.end method
