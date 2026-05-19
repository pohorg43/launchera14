.class public abstract Lv3/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:I

.field public final f:[Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/squareup/moshi/JsonAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw3/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lv3/a$b;->a:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lv3/a$b;->b:Ljava/util/Set;

    iput-object p3, p0, Lv3/a$b;->c:Ljava/lang/Object;

    iput-object p4, p0, Lv3/a$b;->d:Ljava/lang/reflect/Method;

    iput p6, p0, Lv3/a$b;->e:I

    sub-int/2addr p5, p6

    new-array p1, p5, [Lv3/r;

    iput-object p1, p0, Lv3/a$b;->f:[Lv3/r;

    iput-boolean p7, p0, Lv3/a$b;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lv3/e0;Lv3/r$a;)V
    .registers 12

    iget-object v0, p0, Lv3/a$b;->f:[Lv3/r;

    array-length v0, v0

    if-lez v0, :cond_4b

    iget-object v0, p0, Lv3/a$b;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lv3/a$b;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    iget v2, p0, Lv3/a$b;->e:I

    array-length v3, v0

    :goto_14
    if-ge v2, v3, :cond_4b

    aget-object v4, v0, v2

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-object v5, v1, v2

    invoke-static {v5}, Lw3/b;->g([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lv3/a$b;->f:[Lv3/r;

    iget v7, p0, Lv3/a$b;->e:I

    sub-int v7, v2, v7

    iget-object v8, p0, Lv3/a$b;->a:Ljava/lang/reflect/Type;

    invoke-static {v8, v4}, Lv3/i0;->b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v8

    if-eqz v8, :cond_42

    iget-object v8, p0, Lv3/a$b;->b:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    invoke-virtual {p1, p2, v4, v5}, Lv3/e0;->e(Lv3/r$a;Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/r;

    move-result-object v4

    goto :goto_46

    :cond_42
    invoke-virtual {p1, v4, v5}, Lv3/e0;->c(Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/r;

    move-result-object v4

    :goto_46
    aput-object v4, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_4b
    return-void
.end method

.method public b(Lv3/e0;Lv3/w;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lv3/a$b;->f:[Lv3/r;

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    array-length p1, v0

    invoke-static {v0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_e
    iget-object p1, p0, Lv3/a$b;->d:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lv3/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public d(Lv3/e0;Lv3/b0;Ljava/lang/Object;)V
    .registers 4
    .param p3  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
