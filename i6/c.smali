.class public abstract Li6/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/c$b;,
        Li6/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Li6/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Li6/c;

    new-instance v0, Li6/o;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Li6/o;-><init>([B)V

    sput-object v0, Li6/c;->a:Li6/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Iterator;I)Li6/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Li6/c;",
            ">;I)",
            "Li6/c;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li6/c;

    goto :goto_19

    :cond_a
    ushr-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Li6/c;->a(Ljava/util/Iterator;I)Li6/c;

    move-result-object v1

    sub-int/2addr p1, v0

    invoke-static {p0, p1}, Li6/c;->a(Ljava/util/Iterator;I)Li6/c;

    move-result-object p0

    invoke-virtual {v1, p0}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p0

    :goto_19
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Li6/c;
    .registers 3

    :try_start_0
    new-instance v0, Li6/o;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Li6/o;-><init>([B)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static m()Li6/c$b;
    .registers 2

    new-instance v0, Li6/c$b;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Li6/c$b;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public c(Li6/c;)Li6/c;
    .registers 8

    invoke-virtual {p0}, Li6/c;->size()I

    move-result v0

    invoke-virtual {p1}, Li6/c;->size()I

    move-result v1

    int-to-long v2, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_cc

    sget-object v0, Li6/s;->h:[I

    instance-of v0, p0, Li6/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    move-object v0, p0

    check-cast v0, Li6/s;

    goto :goto_1e

    :cond_1d
    move-object v0, v1

    :goto_1e
    invoke-virtual {p1}, Li6/c;->size()I

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_cb

    :cond_26
    invoke-virtual {p0}, Li6/c;->size()I

    move-result v2

    if-nez v2, :cond_2f

    :goto_2c
    move-object p0, p1

    goto/16 :goto_cb

    :cond_2f
    invoke-virtual {p0}, Li6/c;->size()I

    move-result v2

    invoke-virtual {p1}, Li6/c;->size()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x80

    if-ge v3, v2, :cond_42

    invoke-static {p0, p1}, Li6/s;->t(Li6/c;Li6/c;)Li6/o;

    move-result-object p0

    goto/16 :goto_cb

    :cond_42
    if-eqz v0, :cond_5f

    iget-object v4, v0, Li6/s;->d:Li6/c;

    invoke-virtual {v4}, Li6/c;->size()I

    move-result v4

    invoke-virtual {p1}, Li6/c;->size()I

    move-result v5

    add-int/2addr v5, v4

    if-ge v5, v2, :cond_5f

    iget-object p0, v0, Li6/s;->d:Li6/c;

    invoke-static {p0, p1}, Li6/s;->t(Li6/c;Li6/c;)Li6/o;

    move-result-object p0

    new-instance p1, Li6/s;

    iget-object v0, v0, Li6/s;->c:Li6/c;

    invoke-direct {p1, v0, p0}, Li6/s;-><init>(Li6/c;Li6/c;)V

    goto :goto_2c

    :cond_5f
    if-eqz v0, :cond_86

    iget-object v2, v0, Li6/s;->c:Li6/c;

    invoke-virtual {v2}, Li6/c;->i()I

    move-result v2

    iget-object v4, v0, Li6/s;->d:Li6/c;

    invoke-virtual {v4}, Li6/c;->i()I

    move-result v4

    if-le v2, v4, :cond_86

    iget v2, v0, Li6/s;->f:I

    invoke-virtual {p1}, Li6/c;->i()I

    move-result v4

    if-le v2, v4, :cond_86

    new-instance p0, Li6/s;

    iget-object v1, v0, Li6/s;->d:Li6/c;

    invoke-direct {p0, v1, p1}, Li6/s;-><init>(Li6/c;Li6/c;)V

    new-instance p1, Li6/s;

    iget-object v0, v0, Li6/s;->c:Li6/c;

    invoke-direct {p1, v0, p0}, Li6/s;-><init>(Li6/c;Li6/c;)V

    goto :goto_2c

    :cond_86
    invoke-virtual {p0}, Li6/c;->i()I

    move-result v0

    invoke-virtual {p1}, Li6/c;->i()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v2, Li6/s;->h:[I

    aget v0, v2, v0

    if-lt v3, v0, :cond_a1

    new-instance v0, Li6/s;

    invoke-direct {v0, p0, p1}, Li6/s;-><init>(Li6/c;Li6/c;)V

    move-object p0, v0

    goto :goto_cb

    :cond_a1
    new-instance v0, Li6/s$b;

    invoke-direct {v0, v1}, Li6/s$b;-><init>(Li6/s$a;)V

    invoke-virtual {v0, p0}, Li6/s$b;->a(Li6/c;)V

    invoke-virtual {v0, p1}, Li6/s$b;->a(Li6/c;)V

    iget-object p0, v0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li6/c;

    :goto_b4
    iget-object p1, v0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_cb

    iget-object p1, v0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li6/c;

    new-instance v1, Li6/s;

    invoke-direct {v1, p1, p0}, Li6/s;-><init>(Li6/c;Li6/c;)V

    move-object p0, v1

    goto :goto_b4

    :cond_cb
    :goto_cb
    return-object p0

    :cond_cc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x35

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ByteString would be too long: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e([BIII)V
    .registers 8

    const/16 v0, 0x1e

    if-ltz p2, :cond_7b

    if-ltz p3, :cond_64

    if-ltz p4, :cond_4b

    add-int v0, p2, p4

    invoke-virtual {p0}, Li6/c;->size()I

    move-result v1

    const/16 v2, 0x22

    if-gt v0, v1, :cond_34

    add-int v0, p3, p4

    array-length v1, p1

    if-gt v0, v1, :cond_1d

    if-lez p4, :cond_1c

    invoke-virtual {p0, p1, p2, p3, p4}, Li6/c;->h([BIII)V

    :cond_1c
    return-void

    :cond_1d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Target end offset < 0: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Source end offset < 0: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x17

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length < 0: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_64
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Target offset < 0: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source offset < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract h([BIII)V
.end method

.method public abstract i()I
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 1

    invoke-virtual {p0}, Li6/c;->l()Li6/c$a;

    move-result-object p0

    return-object p0
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public abstract l()Li6/c$a;
.end method

.method public abstract n(III)I
.end method

.method public abstract o(III)I
.end method

.method public abstract p()I
.end method

.method public abstract q(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public r()Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Li6/c;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract s(Ljava/io/OutputStream;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Li6/c;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "<ByteString@%s size=%d>"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
