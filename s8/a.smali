.class public Ls8/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Ljava/nio/IntBuffer;

.field public final c:[B

.field public d:Ljava/io/InputStream;

.field public e:Z

.field public f:J

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1040

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ls8/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Ls8/a;->b:Ljava/nio/IntBuffer;

    new-array v0, v0, [B

    iput-object v0, p0, Ls8/a;->c:[B

    const/4 v0, 0x0

    iput v0, p0, Ls8/a;->i:I

    return-void
.end method

.method public static a(Ls8/a;)V
    .registers 7

    iget v0, p0, Ls8/a;->g:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1f

    iget-object v0, p0, Ls8/a;->b:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    int-to-long v2, v0

    shl-long/2addr v2, v1

    iget-wide v4, p0, Ls8/a;->f:J

    ushr-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Ls8/a;->f:J

    iget v0, p0, Ls8/a;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Ls8/a;->g:I

    iget v0, p0, Ls8/a;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ls8/a;->h:I

    :cond_1f
    return-void
.end method

.method public static b(Ls8/a;)V
    .registers 2

    iget v0, p0, Ls8/a;->g:I

    rsub-int/lit8 v0, v0, 0x40

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_17

    invoke-static {p0, v0}, Ls8/a;->c(Ls8/a;I)I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_17

    :cond_f
    new-instance p0, Ls8/c;

    const-string v0, "Corrupted padding bits "

    invoke-direct {p0, v0}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_17
    return-void
.end method

.method public static c(Ls8/a;I)I
    .registers 6

    invoke-static {p0}, Ls8/a;->a(Ls8/a;)V

    iget-wide v0, p0, Ls8/a;->f:J

    iget v2, p0, Ls8/a;->g:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    shl-int v3, v1, p1

    sub-int/2addr v3, v1

    and-int/2addr v0, v3

    add-int/2addr v2, p1

    iput v2, p0, Ls8/a;->g:I

    return v0
.end method

.method public static d(Ls8/a;)V
    .registers 6

    iget v0, p0, Ls8/a;->h:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_7

    return-void

    :cond_7
    iget-boolean v1, p0, Ls8/a;->e:Z

    if-eqz v1, :cond_17

    const/4 p0, 0x4

    if-le v0, p0, :cond_f

    return-void

    :cond_f
    new-instance p0, Ls8/c;

    const-string v0, "No more input"

    invoke-direct {p0, v0}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    iget-object v0, p0, Ls8/a;->b:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    rsub-int v1, v0, 0x1000

    iget-object v2, p0, Ls8/a;->c:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_27
    const/16 v0, 0x1000

    if-ge v1, v0, :cond_54

    :try_start_2b
    iget-object v0, p0, Ls8/a;->d:Ljava/io/InputStream;

    iget-object v2, p0, Ls8/a;->c:[B

    rsub-int v4, v1, 0x1000

    invoke-virtual {v0, v2, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_49

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls8/a;->e:Z

    iget-object v0, p0, Ls8/a;->c:[B

    const/16 v2, 0x40

    invoke-static {v0, v1, v2}, Ls8/l;->a([BII)V

    add-int/lit8 v1, v1, 0x40

    and-int/lit8 v0, v1, 0x3

    iput v0, p0, Ls8/a;->i:I
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_48} :catch_4b

    goto :goto_54

    :cond_49
    add-int/2addr v1, v0

    goto :goto_27

    :catch_4b
    move-exception p0

    new-instance v0, Ls8/c;

    const-string v1, "Failed to read input"

    invoke-direct {v0, v1, p0}, Ls8/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_54
    :goto_54
    iget-object v0, p0, Ls8/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Ls8/a;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ls8/a;->c:[B

    const v4, 0xfffc

    and-int/2addr v4, v1

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Ls8/a;->b:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    shr-int/lit8 v0, v1, 0x2

    iput v0, p0, Ls8/a;->h:I

    return-void
.end method
