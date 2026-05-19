.class public final Lv3/z;
.super Lv3/b0;
.source ""


# static fields
.field public static final i:[Ljava/lang/String;


# instance fields
.field public final g:Lokio/BufferedSink;

.field public h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lv3/z;->i:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_22

    sget-object v2, Lv3/z;->i:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    sget-object v0, Lv3/z;->i:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSink;)V
    .registers 3

    invoke-direct {p0}, Lv3/b0;-><init>()V

    const-string v0, "sink == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lv3/z;->g:Lokio/BufferedSink;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lv3/b0;->j(I)V

    return-void
.end method

.method public static s(Lokio/BufferedSink;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lv3/z;->i:[Ljava/lang/String;

    const/16 v1, 0x22

    invoke-interface {p0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v3, v2, :cond_36

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_1c

    aget-object v5, v0, v5

    if-nez v5, :cond_29

    goto :goto_33

    :cond_1c
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_23

    const-string v5, "\\u2028"

    goto :goto_29

    :cond_23
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_33

    const-string v5, "\\u2029"

    :cond_29
    :goto_29
    if-ge v4, v3, :cond_2e

    invoke-interface {p0, p1, v4, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    :cond_2e
    invoke-interface {p0, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v4, v3, 0x1

    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_36
    if-ge v4, v2, :cond_3b

    invoke-interface {p0, p1, v4, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    :cond_3b
    invoke-interface {p0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void
.end method


# virtual methods
.method public a()Lv3/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lv3/z;->t()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x5b

    invoke-virtual {p0, v0, v1, v2}, Lv3/z;->r(IIC)Lv3/b0;

    return-object p0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array cannot be used as a map key in JSON at path "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/b0;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lv3/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lv3/z;->t()V

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v2, 0x7b

    invoke-virtual {p0, v0, v1, v2}, Lv3/z;->r(IIC)Lv3/b0;

    return-object p0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object cannot be used as a map key in JSON at path "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/b0;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lv3/z;->g:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/Sink;->close()V

    iget v0, p0, Lv3/b0;->a:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_18

    if-ne v0, v1, :cond_14

    iget-object v2, p0, Lv3/b0;->b:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Lv3/b0;->a:I

    return-void

    :cond_18
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Incomplete document"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Lv3/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x5d

    invoke-virtual {p0, v0, v1, v2}, Lv3/z;->q(IIC)Lv3/b0;

    return-object p0
.end method

.method public e()Lv3/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/b0;->e:Z

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v2, 0x7d

    invoke-virtual {p0, v0, v1, v2}, Lv3/z;->q(IIC)Lv3/b0;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lv3/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Lv3/b0;->a:I

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lv3/b0;->h()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v1, 0x5

    if-ne v0, v1, :cond_26

    :cond_13
    iget-object v0, p0, Lv3/z;->h:Ljava/lang/String;

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-nez v0, :cond_26

    iput-object p1, p0, Lv3/z;->h:Ljava/lang/String;

    iget-object v0, p0, Lv3/b0;->c:[Ljava/lang/String;

    iget v1, p0, Lv3/b0;->a:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-object p0

    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nesting problem."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "JsonWriter is closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/b0;->a:I

    if-eqz v0, :cond_a

    iget-object p0, p0, Lv3/z;->g:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g()Lv3/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lv3/z;->h:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/z;->h:Ljava/lang/String;

    return-object p0

    :cond_c
    invoke-virtual {p0}, Lv3/z;->p()V

    iget-object v0, p0, Lv3/z;->g:Lokio/BufferedSink;

    const-string v1, "null"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object v0, p0, Lv3/b0;->d:[I

    iget v1, p0, Lv3/b0;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-object p0

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null cannot be used as a map key in JSON at path "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/b0;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(D)Lv3/b0;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/b0;->e:Z

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/z;->f(Ljava/lang/String;)Lv3/b0;

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Lv3/z;->t()V

    invoke-virtual {p0}, Lv3/z;->p()V

    iget-object v0, p0, Lv3/z;->g:Lokio/BufferedSink;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object p1, p0, Lv3/b0;->d:[I

    iget p2, p0, Lv3/b0;->a:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return-object p0

    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric values must be finite, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l(J)Lv3/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/b0;->e:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/z;->f(Ljava/lang/String;)Lv3/b0;

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lv3/z;->t()V

    invoke-virtual {p0}, Lv3/z;->p()V

    iget-object v0, p0, Lv3/z;->g:Lokio/BufferedSink;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object p1, p0, Lv3/b0;->d:[I

    iget p2, p0, Lv3/b0;->a:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return-object p0
.end method

.method public m(Ljava/lang/Number;)Lv3/b0;
    .registers 4
    .param p1  # Ljava/lang/Number;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-boolean p1, p0, Lv3/b0;->e:Z

    if-eqz p1, :cond_27

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv3/b0;->e:Z

    invoke-virtual {p0, v0}, Lv3/z;->f(Ljava/lang/String;)Lv3/b0;

    return-object p0

    :cond_27
    invoke-virtual {p0}, Lv3/z;->t()V

    invoke-virtual {p0}, Lv3/z;->p()V

    iget-object p1, p0, Lv3/z;->g:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object p1, p0, Lv3/b0;->d:[I

    iget v0, p0, Lv3/b0;->a:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0

    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric values must be finite, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n(Ljava/lang/String;)Lv3/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lv3/z;->g()Lv3/b0;

    return-object p0

    :cond_6
    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/b0;->e:Z

    invoke-virtual {p0, p1}, Lv3/z;->f(Ljava/lang/String;)Lv3/b0;

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lv3/z;->t()V

    invoke-virtual {p0}, Lv3/z;->p()V

    iget-object v0, p0, Lv3/z;->g:Lokio/BufferedSink;

    invoke-static {v0, p1}, Lv3/z;->s(Lokio/BufferedSink;Ljava/lang/String;)V

    iget-object p1, p0, Lv3/b0;->d:[I

    iget v0, p0, Lv3/b0;->a:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0
.end method

.method public o(Z)Lv3/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lv3/z;->t()V

    invoke-virtual {p0}, Lv3/z;->p()V

    iget-object v0, p0, Lv3/z;->g:Lokio/BufferedSink;

    if-eqz p1, :cond_11

    const-string p1, "true"

    goto :goto_13

    :cond_11
    const-string p1, "false"

    :goto_13
    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object p1, p0, Lv3/b0;->d:[I

    iget v0, p0, Lv3/b0;->a:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0

    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Boolean cannot be used as a map key in JSON at path "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lv3/b0;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lv3/b0;->h()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3f

    if-eq v0, v3, :cond_38

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x9

    if-eq v0, v1, :cond_27

    const/4 v1, 0x6

    if-eq v0, v1, :cond_40

    if-ne v0, v2, :cond_1f

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must have only one top-level value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Sink from valueSink() was not closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    const/4 v2, 0x5

    iget-object v0, p0, Lv3/z;->g:Lokio/BufferedSink;

    const-string v1, ":"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    goto :goto_40

    :cond_38
    iget-object v0, p0, Lv3/z;->g:Lokio/BufferedSink;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    :cond_3f
    move v2, v3

    :cond_40
    :goto_40
    iget-object v0, p0, Lv3/b0;->b:[I

    iget p0, p0, Lv3/b0;->a:I

    add-int/lit8 p0, p0, -0x1

    aput v2, v0, p0

    return-void
.end method

.method public final q(IIC)Lv3/b0;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lv3/b0;->h()I

    move-result v0

    if-eq v0, p2, :cond_11

    if-ne v0, p1, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nesting problem."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    iget-object p1, p0, Lv3/z;->h:Ljava/lang/String;

    if-nez p1, :cond_39

    iget p1, p0, Lv3/b0;->a:I

    iget p2, p0, Lv3/b0;->f:I

    not-int v0, p2

    if-ne p1, v0, :cond_20

    not-int p1, p2

    iput p1, p0, Lv3/b0;->f:I

    return-object p0

    :cond_20
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lv3/b0;->a:I

    iget-object p2, p0, Lv3/b0;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v0, p2, p1

    iget-object p2, p0, Lv3/b0;->d:[I

    add-int/lit8 p1, p1, -0x1

    aget v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p1

    iget-object p1, p0, Lv3/z;->g:Lokio/BufferedSink;

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-object p0

    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Dangling name: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lv3/z;->h:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(IIC)Lv3/b0;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/b0;->a:I

    iget v1, p0, Lv3/b0;->f:I

    if-ne v0, v1, :cond_18

    iget-object v2, p0, Lv3/b0;->b:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    if-eq v3, p1, :cond_14

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    if-ne v0, p2, :cond_18

    :cond_14
    not-int p1, v1

    iput p1, p0, Lv3/b0;->f:I

    return-object p0

    :cond_18
    invoke-virtual {p0}, Lv3/z;->p()V

    invoke-virtual {p0}, Lv3/b0;->c()Z

    iget-object p2, p0, Lv3/b0;->b:[I

    iget v0, p0, Lv3/b0;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lv3/b0;->a:I

    aput p1, p2, v0

    iget-object p1, p0, Lv3/b0;->d:[I

    add-int/lit8 v1, v1, -0x1

    const/4 p2, 0x0

    aput p2, p1, v1

    iget-object p1, p0, Lv3/z;->g:Lokio/BufferedSink;

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-object p0
.end method

.method public final t()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lv3/z;->h:Ljava/lang/String;

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lv3/b0;->h()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lv3/z;->g:Lokio/BufferedSink;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_16

    :cond_13
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    :goto_16
    const/4 v0, 0x4

    iget-object v1, p0, Lv3/b0;->b:[I

    iget v2, p0, Lv3/b0;->a:I

    add-int/lit8 v2, v2, -0x1

    aput v0, v1, v2

    iget-object v0, p0, Lv3/z;->g:Lokio/BufferedSink;

    iget-object v1, p0, Lv3/z;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lv3/z;->s(Lokio/BufferedSink;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/z;->h:Ljava/lang/String;

    goto :goto_32

    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    return-void
.end method
