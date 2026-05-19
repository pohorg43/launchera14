.class public Lv3/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv3/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;Ljava/util/Set;Lv3/e0;)Lv3/r;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lv3/e0;",
            ")",
            "Lv3/r<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-class v0, Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_c

    return-object v2

    :cond_c
    invoke-static {p1}, Lv3/i0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_289

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto/16 :goto_289

    :cond_1e
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_25

    return-object v2

    :cond_25
    invoke-static {v1}, Lw3/b;->f(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_74

    const-class p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lv3/l$a;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    const-class p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lv3/l$a;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    const-class p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lv3/l$a;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    const-class p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lv3/l$a;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Platform "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_68

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " requires explicit JsonAdapter to be registered"

    invoke-static {p0, p2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    invoke-virtual {v1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result p0

    if-nez p0, :cond_272

    invoke-virtual {v1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p0

    if-nez p0, :cond_25b

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_a8

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-eqz p0, :cond_91

    goto :goto_a8

    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot serialize non-static nested class "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a8
    :goto_a8
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    if-nez p0, :cond_244

    sget-object p0, Lw3/b;->c:Ljava/lang/Class;

    const/4 p2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_c0

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_c0

    move p0, p2

    goto :goto_c1

    :cond_c0
    move p0, v3

    :goto_c1
    if-nez p0, :cond_228

    const-string p0, "newInstance"

    :try_start_c5
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-instance v5, Lv3/g;

    invoke-direct {v5, v4, v1}, Lv3/g;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    :try_end_d3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c5 .. :try_end_d3} :catch_d5

    goto/16 :goto_14d

    :catch_d5
    :try_start_d5
    const-string v4, "sun.misc.Unsafe"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "theUnsafe"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "allocateInstance"

    new-array v7, p2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v6, Lv3/h;

    invoke-direct {v6, v4, v5, v1}, Lv3/h;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_f9
    .catch Ljava/lang/IllegalAccessException; {:try_start_d5 .. :try_end_f9} :catch_222
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d5 .. :try_end_f9} :catch_fb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d5 .. :try_end_f9} :catch_fb
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d5 .. :try_end_f9} :catch_fb

    move-object v5, v6

    goto :goto_14d

    :catch_fb
    const/4 v4, 0x2

    :try_start_fc
    const-class v5, Ljava/io/ObjectStreamClass;

    const-string v6, "getConstructorId"

    new-array v7, p2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, p2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-class v6, Ljava/io/ObjectStreamClass;

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, p2

    invoke-virtual {v6, p0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v7, Lv3/i;

    invoke-direct {v7, v6, v1, v5}, Lv3/i;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;I)V
    :try_end_133
    .catch Ljava/lang/IllegalAccessException; {:try_start_fc .. :try_end_133} :catch_21c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_fc .. :try_end_133} :catch_217
    .catch Ljava/lang/NoSuchMethodException; {:try_start_fc .. :try_end_133} :catch_135

    move-object v5, v7

    goto :goto_14d

    :catch_135
    :try_start_135
    const-class v2, Ljava/io/ObjectInputStream;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v3

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, p2

    invoke-virtual {v2, p0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v5, Lv3/j;

    invoke-direct {v5, p0, v1}, Lv3/j;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_14d} :catch_200

    :goto_14d
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    :goto_152
    if-eq p1, v0, :cond_1f6

    invoke-static {p1}, Lv3/i0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lw3/b;->f(Ljava/lang/Class;)Z

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v6, v4

    move v7, v3

    :goto_162
    if-ge v3, v6, :cond_1e7

    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-nez v10, :cond_186

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v10

    if-eqz v10, :cond_177

    goto :goto_186

    :cond_177
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    if-nez v10, :cond_185

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v9

    if-nez v9, :cond_185

    if-nez v2, :cond_186

    :cond_185
    move v7, p2

    :cond_186
    :goto_186
    if-nez v7, :cond_189

    goto :goto_1c6

    :cond_189
    const-class v7, Lv3/q;

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lv3/q;

    if-eqz v7, :cond_19a

    invoke-interface {v7}, Lv3/q;->ignore()Z

    move-result v9

    if-eqz v9, :cond_19a

    goto :goto_1c6

    :cond_19a
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {p1, v1, v9}, Lw3/b;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v8}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v10

    invoke-static {v10}, Lw3/b;->g([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p3, v9, v10, v11}, Lv3/e0;->d(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lv3/r;

    move-result-object v9

    invoke-virtual {v8, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {v11, v7}, Lw3/b;->h(Ljava/lang/String;Lv3/q;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lv3/l$b;

    invoke-direct {v10, v7, v8, v9}, Lv3/l$b;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;Lv3/r;)V

    invoke-virtual {p0, v7, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv3/l$b;

    if-nez v7, :cond_1ca

    :goto_1c6
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    goto :goto_162

    :cond_1ca
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Conflicting fields:\n    "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v7, Lv3/l$b;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n    "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e7
    invoke-static {p1}, Lv3/i0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lw3/b;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v3, 0x0

    goto/16 :goto_152

    :cond_1f6
    new-instance p1, Lv3/l;

    invoke-direct {p1, v5, p0}, Lv3/l;-><init>(Lv3/k;Ljava/util/Map;)V

    invoke-virtual {p1}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :catch_200
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot construct instances of "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_217
    move-exception p0

    invoke-static {p0}, Lw3/b;->l(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;

    throw v2

    :catch_21c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catch_222
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_228
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot serialize Kotlin type "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Reflective serialization of Kotlin classes without using kotlin-reflect has undefined and unexpected behavior. Please use KotlinJsonAdapterFactory from the moshi-kotlin artifact or use code gen from the moshi-kotlin-codegen artifact."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_244
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot serialize abstract class "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot serialize local class "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_272
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot serialize anonymous class "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_289
    :goto_289
    return-object v2
.end method

.method public final b(Ljava/lang/reflect/Type;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lv3/i0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No JsonAdapter for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", you should probably use "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instead of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Moshi only supports the collection interfaces by default) or else register a custom JsonAdapter."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
