.class public Ls8/b;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public final d:Ls8/j;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ls8/j;

    invoke-direct {v0}, Ls8/j;-><init>()V

    iput-object v0, p0, Ls8/b;->d:Ls8/j;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, p0, Ls8/b;->a:[B

    const/4 v1, 0x0

    iput v1, p0, Ls8/b;->b:I

    iput v1, p0, Ls8/b;->c:I

    :try_start_15
    invoke-static {v0, p1}, Ls8/j;->a(Ls8/j;Ljava/io/InputStream;)V
    :try_end_18
    .catch Ls8/c; {:try_start_15 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Ls8/b;->d:Ls8/j;

    iget-object v0, p0, Ls8/j;->a:Ls8/i;

    sget-object v1, Ls8/i;->a:Ls8/i;

    if-eq v0, v1, :cond_1c

    sget-object v1, Ls8/i;->l:Ls8/i;

    if-ne v0, v1, :cond_d

    goto :goto_1b

    :cond_d
    iput-object v1, p0, Ls8/j;->a:Ls8/i;

    iget-object p0, p0, Ls8/j;->c:Ls8/a;

    iget-object v0, p0, Ls8/a;->d:Ljava/io/InputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Ls8/a;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State MUST be initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Ls8/b;->c:I

    iget v1, p0, Ls8/b;->b:I

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Ls8/b;->a:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ls8/b;->read([BII)I

    move-result v0

    iput v0, p0, Ls8/b;->b:I

    iput v2, p0, Ls8/b;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    return v1

    :cond_16
    iget-object v0, p0, Ls8/b;->a:[B

    iget v1, p0, Ls8/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ls8/b;->c:I

    aget-byte p0, v0, v1
    :try_end_20
    .catch Ls8/c; {:try_start_0 .. :try_end_20} :catch_23

    and-int/lit16 p0, p0, 0xff

    return p0

    :catch_23
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public read([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_6d

    if-ltz p3, :cond_61

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4b

    const/4 v0, 0x0

    if-nez p3, :cond_d

    return v0

    :cond_d
    iget v1, p0, Ls8/b;->b:I

    iget v2, p0, Ls8/b;->c:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Ls8/b;->a:[B

    iget v3, p0, Ls8/b;->c:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Ls8/b;->c:I

    add-int/2addr v2, v1

    iput v2, p0, Ls8/b;->c:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    if-nez p3, :cond_2d

    return v1

    :cond_2d
    :try_start_2d
    iget-object v2, p0, Ls8/b;->d:Ls8/j;

    iput-object p1, v2, Ls8/j;->Y:[B

    iput p2, v2, Ls8/j;->T:I

    iput p3, v2, Ls8/j;->U:I

    iput v0, v2, Ls8/j;->V:I

    invoke-static {v2}, Ls8/e;->e(Ls8/j;)V

    iget-object p0, p0, Ls8/b;->d:Ls8/j;

    iget p0, p0, Ls8/j;->V:I
    :try_end_3e
    .catch Ls8/c; {:try_start_2d .. :try_end_3e} :catch_44

    if-nez p0, :cond_42

    const/4 p0, -0x1

    return p0

    :cond_42
    add-int/2addr p0, v1

    return p0

    :catch_44
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer overflow: "

    const-string p3, " > "

    invoke-static {p2, v0, p3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad length: "

    invoke-static {p1, p3}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad offset: "

    invoke-static {p1, p2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
