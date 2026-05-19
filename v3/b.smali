.class public Lv3/b;
.super Lv3/a$b;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lv3/a$b;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    return-void
.end method


# virtual methods
.method public d(Lv3/e0;Lv3/b0;Ljava/lang/Object;)V
    .registers 7
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

    iget-object p1, p0, Lv3/a$b;->f:[Lv3/r;

    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 p2, 0x1

    aput-object p3, v0, p2

    array-length p2, p1

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_11
    iget-object p1, p0, Lv3/a$b;->d:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lv3/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_18} :catch_19

    return-void

    :catch_19
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
