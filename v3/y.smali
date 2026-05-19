.class public final Lv3/y;
.super Lv3/w;
.source ""


# static fields
.field public static final k:Lokio/ByteString;

.field public static final l:Lokio/ByteString;

.field public static final m:Lokio/ByteString;

.field public static final n:Lokio/ByteString;

.field public static final o:Lokio/ByteString;


# instance fields
.field public final e:Lokio/BufferedSource;

.field public final f:Lokio/Buffer;

.field public g:I

.field public h:J

.field public i:I

.field public j:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "\'\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lv3/y;->k:Lokio/ByteString;

    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lv3/y;->l:Lokio/ByteString;

    const-string v0, "{}[]:, \n\t\r\f/\\;#="

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lv3/y;->m:Lokio/ByteString;

    const-string v0, "\n\r"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lv3/y;->n:Lokio/ByteString;

    const-string v0, "*/"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lv3/y;->o:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .registers 3

    invoke-direct {p0}, Lv3/w;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv3/y;->g:I

    const-string v0, "source == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lv3/y;->e:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lv3/y;->f:Lokio/Buffer;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lv3/w;->n(I)V

    return-void
.end method


# virtual methods
.method public final A(Lokio/ByteString;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    iget-object v2, p0, Lv3/y;->e:Lokio/BufferedSource;

    invoke-interface {v2, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_35

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1f
    iget-object v4, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    invoke-virtual {p0}, Lv3/y;->C()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_35
    if-nez v1, :cond_43

    iget-object p1, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    return-object p1

    :cond_43
    iget-object p1, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_56
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    throw v0
.end method

.method public final B()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lv3/y;->e:Lokio/BufferedSource;

    sget-object v1, Lv3/y;->m:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    iget-object p0, p0, Lv3/y;->f:Lokio/Buffer;

    if-eqz v2, :cond_15

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    :goto_19
    return-object p0
.end method

.method public final C()C
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lv3/y;->e:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_cd

    const/16 v3, 0x22

    if-eq v0, v3, :cond_cd

    const/16 v3, 0x27

    if-eq v0, v3, :cond_cd

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_cd

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_cd

    const/16 v3, 0x62

    if-eq v0, v3, :cond_ca

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c7

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_c6

    const/16 v4, 0x72

    if-eq v0, v4, :cond_c3

    const/16 v4, 0x74

    if-eq v0, v4, :cond_c0

    const/16 v4, 0x75

    if-ne v0, v4, :cond_ae

    iget-object v0, p0, Lv3/y;->e:Lokio/BufferedSource;

    const-wide/16 v4, 0x4

    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_97

    const/4 v0, 0x0

    move v6, v0

    :goto_49
    const/4 v7, 0x4

    if-ge v0, v7, :cond_91

    iget-object v7, p0, Lv3/y;->f:Lokio/Buffer;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v7

    shl-int/lit8 v6, v6, 0x4

    int-to-char v6, v6

    const/16 v8, 0x30

    if-lt v7, v8, :cond_61

    const/16 v8, 0x39

    if-gt v7, v8, :cond_61

    add-int/lit8 v7, v7, -0x30

    goto :goto_75

    :cond_61
    const/16 v8, 0x61

    if-lt v7, v8, :cond_6a

    if-gt v7, v3, :cond_6a

    add-int/lit8 v7, v7, -0x61

    goto :goto_74

    :cond_6a
    const/16 v8, 0x41

    if-lt v7, v8, :cond_7a

    const/16 v8, 0x46

    if-gt v7, v8, :cond_7a

    add-int/lit8 v7, v7, -0x41

    :goto_74
    add-int/2addr v7, v2

    :goto_75
    add-int/2addr v7, v6

    int-to-char v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_7a
    const-string v0, "\\u"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    throw v1

    :cond_91
    iget-object p0, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->skip(J)V

    return v6

    :cond_97
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unterminated escape sequence at path "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ae
    const-string v2, "Invalid escape sequence: \\"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    throw v1

    :cond_c0
    const/16 p0, 0x9

    return p0

    :cond_c3
    const/16 p0, 0xd

    return p0

    :cond_c6
    return v2

    :cond_c7
    const/16 p0, 0xc

    return p0

    :cond_ca
    const/16 p0, 0x8

    return p0

    :cond_cd
    int-to-char p0, v0

    return p0

    :cond_cf
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    throw v1
.end method

.method public final D(Lokio/ByteString;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lv3/y;->e:Lokio/BufferedSource;

    invoke-interface {v0, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Lv3/y;->f:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    invoke-virtual {p0}, Lv3/y;->C()C

    goto :goto_0

    :cond_22
    iget-object p0, p0, Lv3/y;->f:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void

    :cond_29
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    const/4 p0, 0x0

    throw p0
.end method

.method public final E()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lv3/y;->e:Lokio/BufferedSource;

    sget-object v1, Lv3/y;->m:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    iget-object p0, p0, Lv3/y;->f:Lokio/Buffer;

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_15
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method public a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lv3/w;->n(I)V

    iget-object v1, p0, Lv3/w;->d:[I

    iget v2, p0, Lv3/w;->a:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lv3/y;->g:I

    return-void

    :cond_1a
    new-instance v0, Lv3/t;

    const-string v1, "Expected BEGIN_ARRAY but was "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lv3/w;->n(I)V

    const/4 v0, 0x0

    iput v0, p0, Lv3/y;->g:I

    return-void

    :cond_13
    new-instance v0, Lv3/t;

    const-string v1, "Expected BEGIN_OBJECT but was "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    iget v0, p0, Lv3/w;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lv3/w;->a:I

    iget-object v1, p0, Lv3/w;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lv3/y;->g:I

    return-void

    :cond_1f
    new-instance v0, Lv3/t;

    const-string v1, "Expected END_ARRAY but was "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lv3/y;->g:I

    iget-object v1, p0, Lv3/w;->b:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lv3/w;->a:I

    iget-object v0, p0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    iget-object p0, p0, Lv3/y;->e:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->close()V

    return-void
.end method

.method public d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    iget v0, p0, Lv3/w;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lv3/w;->a:I

    iget-object v1, p0, Lv3/w;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lv3/w;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lv3/y;->g:I

    return-void

    :cond_24
    new-instance v0, Lv3/t;

    const-string v1, "Expected END_OBJECT but was "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/4 p0, 0x2

    if-eq v0, p0, :cond_14

    const/4 p0, 0x4

    if-eq v0, p0, :cond_14

    const/16 p0, 0x12

    if-eq v0, p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public f()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    iput v2, p0, Lv3/y;->g:I

    iget-object v0, p0, Lv3/w;->d:[I

    iget p0, p0, Lv3/w;->a:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v3

    :cond_1a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    iput v2, p0, Lv3/y;->g:I

    iget-object v0, p0, Lv3/w;->d:[I

    iget p0, p0, Lv3/w;->a:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v2

    :cond_2a
    new-instance v0, Lv3/t;

    const-string v1, "Expected a boolean but was "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()D
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    iput v2, p0, Lv3/y;->g:I

    iget-object v0, p0, Lv3/w;->d:[I

    iget v1, p0, Lv3/w;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lv3/y;->h:J

    long-to-double v0, v0

    return-wide v0

    :cond_1f
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lv3/y;->f:Lokio/Buffer;

    iget v1, p0, Lv3/y;->i:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    goto :goto_5c

    :cond_35
    const/16 v1, 0x9

    if-ne v0, v1, :cond_42

    sget-object v0, Lv3/y;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->A(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    goto :goto_5c

    :cond_42
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4f

    sget-object v0, Lv3/y;->k:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->A(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    goto :goto_5c

    :cond_4f
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5a

    invoke-virtual {p0}, Lv3/y;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    goto :goto_5c

    :cond_5a
    if-ne v0, v4, :cond_c0

    :goto_5c
    iput v4, p0, Lv3/y;->g:I

    :try_start_5e
    iget-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_64} :catch_a3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_82

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_82

    const/4 v3, 0x0

    iput-object v3, p0, Lv3/y;->j:Ljava/lang/String;

    iput v2, p0, Lv3/y;->g:I

    iget-object v2, p0, Lv3/w;->d:[I

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    return-wide v0

    :cond_82
    new-instance v2, Lv3/u;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lv3/u;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_a3
    new-instance v0, Lv3/t;

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lv3/y;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c0
    new-instance v0, Lv3/t;

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_45

    iget-wide v0, p0, Lv3/y;->h:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v0, v0, v6

    if-nez v0, :cond_28

    iput v2, p0, Lv3/y;->g:I

    iget-object v0, p0, Lv3/w;->d:[I

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v5

    :cond_28
    new-instance v0, Lv3/t;

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lv3/y;->h:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lv3/y;->f:Lokio/Buffer;

    iget v1, p0, Lv3/y;->i:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    goto :goto_a6

    :cond_57
    const/16 v1, 0x9

    if-eq v0, v1, :cond_82

    const/16 v6, 0x8

    if-ne v0, v6, :cond_60

    goto :goto_82

    :cond_60
    if-ne v0, v5, :cond_63

    goto :goto_a6

    :cond_63
    new-instance v0, Lv3/t;

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    :goto_82
    if-ne v0, v1, :cond_8b

    sget-object v0, Lv3/y;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->A(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_91

    :cond_8b
    sget-object v0, Lv3/y;->k:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->A(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    :goto_91
    iput-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    :try_start_93
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Lv3/y;->g:I

    iget-object v1, p0, Lv3/w;->d:[I

    iget v6, p0, Lv3/w;->a:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_a5} :catch_a6

    return v0

    :catch_a6
    :goto_a6
    iput v5, p0, Lv3/y;->g:I

    :try_start_a8
    iget-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_ae} :catch_e3

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v0, v6, v0

    if-nez v0, :cond_c6

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    iput v2, p0, Lv3/y;->g:I

    iget-object v0, p0, Lv3/w;->d:[I

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v5

    :cond_c6
    new-instance v0, Lv3/t;

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lv3/y;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_e3
    new-instance v0, Lv3/t;

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lv3/y;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1e

    iput v2, p0, Lv3/y;->g:I

    iget-object v0, p0, Lv3/w;->d:[I

    iget v1, p0, Lv3/w;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lv3/y;->h:J

    return-wide v0

    :cond_1e
    const/16 v1, 0x11

    const-string v3, " at path "

    const-string v4, "Expected a long but was "

    const/16 v5, 0xb

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lv3/y;->f:Lokio/Buffer;

    iget v1, p0, Lv3/y;->i:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    goto :goto_83

    :cond_34
    const/16 v1, 0x9

    if-eq v0, v1, :cond_5f

    const/16 v6, 0x8

    if-ne v0, v6, :cond_3d

    goto :goto_5f

    :cond_3d
    if-ne v0, v5, :cond_40

    goto :goto_83

    :cond_40
    new-instance v0, Lv3/t;

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    :goto_5f
    if-ne v0, v1, :cond_68

    sget-object v0, Lv3/y;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->A(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    :cond_68
    sget-object v0, Lv3/y;->k:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->A(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    :goto_6e
    iput-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    :try_start_70
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lv3/y;->g:I

    iget-object v6, p0, Lv3/w;->d:[I

    iget v7, p0, Lv3/w;->a:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_82
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_82} :catch_83

    return-wide v0

    :catch_83
    :goto_83
    iput v5, p0, Lv3/y;->g:I

    :try_start_85
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lv3/y;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0
    :try_end_90
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_90} :catch_a2
    .catch Ljava/lang/ArithmeticException; {:try_start_85 .. :try_end_90} :catch_a2

    const/4 v3, 0x0

    iput-object v3, p0, Lv3/y;->j:Ljava/lang/String;

    iput v2, p0, Lv3/y;->g:I

    iget-object v2, p0, Lv3/w;->d:[I

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    return-wide v0

    :catch_a2
    new-instance v0, Lv3/t;

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lv3/y;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x0

    iput v0, p0, Lv3/y;->g:I

    iget-object v0, p0, Lv3/w;->d:[I

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    const/4 p0, 0x0

    return-object p0

    :cond_1c
    new-instance v0, Lv3/t;

    const-string v1, "Expected null but was "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lv3/y;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_11
    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    sget-object v0, Lv3/y;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->A(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_1c
    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    sget-object v0, Lv3/y;->k:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->A(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_27
    const/16 v1, 0xb

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lv3/y;->j:Ljava/lang/String;

    goto :goto_49

    :cond_31
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3c

    iget-wide v0, p0, Lv3/y;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_3c
    const/16 v1, 0x11

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lv3/y;->f:Lokio/Buffer;

    iget v1, p0, Lv3/y;->i:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    :goto_49
    const/4 v1, 0x0

    iput v1, p0, Lv3/y;->g:I

    iget-object v1, p0, Lv3/w;->d:[I

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    return-object v0

    :cond_59
    new-instance v0, Lv3/t;

    const-string v1, "Expected a string but was "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()Lv3/w$b;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    packed-switch v0, :pswitch_data_30

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_11  #0x12
    sget-object p0, Lv3/w$b;->j:Lv3/w$b;

    return-object p0

    :pswitch_14  #0x10, 0x11
    sget-object p0, Lv3/w$b;->g:Lv3/w$b;

    return-object p0

    :pswitch_17  #0xc, 0xd, 0xe, 0xf
    sget-object p0, Lv3/w$b;->e:Lv3/w$b;

    return-object p0

    :pswitch_1a  #0x8, 0x9, 0xa, 0xb
    sget-object p0, Lv3/w$b;->f:Lv3/w$b;

    return-object p0

    :pswitch_1d  #0x7
    sget-object p0, Lv3/w$b;->i:Lv3/w$b;

    return-object p0

    :pswitch_20  #0x5, 0x6
    sget-object p0, Lv3/w$b;->h:Lv3/w$b;

    return-object p0

    :pswitch_23  #0x4
    sget-object p0, Lv3/w$b;->b:Lv3/w$b;

    return-object p0

    :pswitch_26  #0x3
    sget-object p0, Lv3/w$b;->a:Lv3/w$b;

    return-object p0

    :pswitch_29  #0x2
    sget-object p0, Lv3/w$b;->d:Lv3/w$b;

    return-object p0

    :pswitch_2c  #0x1
    sget-object p0, Lv3/w$b;->c:Lv3/w$b;

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_1a  #00000008
        :pswitch_1a  #00000009
        :pswitch_1a  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_17  #0000000c
        :pswitch_17  #0000000d
        :pswitch_17  #0000000e
        :pswitch_17  #0000000f
        :pswitch_14  #00000010
        :pswitch_14  #00000011
        :pswitch_11  #00000012
    .end packed-switch
.end method

.method public m()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lv3/y;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lv3/y;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    const/16 v0, 0xb

    iput v0, p0, Lv3/y;->g:I

    :cond_10
    return-void
.end method

.method public o(Lv3/w$a;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_54

    const/16 v1, 0xf

    if-le v0, v1, :cond_12

    goto :goto_54

    :cond_12
    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lv3/y;->v(Ljava/lang/String;Lv3/w$a;)I

    move-result p0

    return p0

    :cond_1b
    iget-object v0, p0, Lv3/y;->e:Lokio/BufferedSource;

    iget-object v3, p1, Lv3/w$a;->b:Lokio/Options;

    invoke-interface {v0, v3}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v0

    if-eq v0, v2, :cond_35

    const/4 v1, 0x0

    iput v1, p0, Lv3/y;->g:I

    iget-object v1, p0, Lv3/w;->c:[Ljava/lang/String;

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    iget-object p1, p1, Lv3/w$a;->a:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, p0

    return v0

    :cond_35
    iget-object v0, p0, Lv3/w;->c:[Ljava/lang/String;

    iget v3, p0, Lv3/w;->a:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lv3/y;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lv3/y;->v(Ljava/lang/String;Lv3/w$a;)I

    move-result p1

    if-ne p1, v2, :cond_53

    iput v1, p0, Lv3/y;->g:I

    iput-object v3, p0, Lv3/y;->j:Ljava/lang/String;

    iget-object v1, p0, Lv3/w;->c:[Ljava/lang/String;

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    :cond_53
    return p1

    :cond_54
    :goto_54
    return v2
.end method

.method public p(Lv3/w$a;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/16 v1, 0x8

    const/4 v2, -0x1

    if-lt v0, v1, :cond_50

    const/16 v1, 0xb

    if-le v0, v1, :cond_12

    goto :goto_50

    :cond_12
    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lv3/y;->w(Ljava/lang/String;Lv3/w$a;)I

    move-result p0

    return p0

    :cond_1b
    iget-object v0, p0, Lv3/y;->e:Lokio/BufferedSource;

    iget-object v3, p1, Lv3/w$a;->b:Lokio/Options;

    invoke-interface {v0, v3}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v0

    if-eq v0, v2, :cond_35

    const/4 p1, 0x0

    iput p1, p0, Lv3/y;->g:I

    iget-object p1, p0, Lv3/w;->d:[I

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, p0

    return v0

    :cond_35
    invoke-virtual {p0}, Lv3/y;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lv3/y;->w(Ljava/lang/String;Lv3/w$a;)I

    move-result p1

    if-ne p1, v2, :cond_4f

    iput v1, p0, Lv3/y;->g:I

    iput-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    iget-object v0, p0, Lv3/w;->d:[I

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p0

    :cond_4f
    return p1

    :cond_50
    :goto_50
    return v2
.end method

.method public q()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lv3/y;->E()V

    goto :goto_28

    :cond_10
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1a

    sget-object v0, Lv3/y;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->D(Lokio/ByteString;)V

    goto :goto_28

    :cond_1a
    const/16 v1, 0xc

    if-ne v0, v1, :cond_24

    sget-object v0, Lv3/y;->k:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->D(Lokio/ByteString;)V

    goto :goto_28

    :cond_24
    const/16 v1, 0xf

    if-ne v0, v1, :cond_36

    :goto_28
    const/4 v0, 0x0

    iput v0, p0, Lv3/y;->g:I

    iget-object v0, p0, Lv3/w;->c:[Ljava/lang/String;

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    const-string v1, "null"

    aput-object v1, v0, p0

    return-void

    :cond_36
    new-instance v0, Lv3/t;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    iget v2, p0, Lv3/y;->g:I

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v2

    :cond_a
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_12

    invoke-virtual {p0, v4}, Lv3/w;->n(I)V

    goto :goto_17

    :cond_12
    if-ne v2, v4, :cond_1b

    invoke-virtual {p0, v3}, Lv3/w;->n(I)V

    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d4

    :cond_1b
    const/4 v3, 0x4

    const-string v5, " at path "

    const-string v6, "Expected a value but was "

    if-ne v2, v3, :cond_4c

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2d

    iget v2, p0, Lv3/w;->a:I

    sub-int/2addr v2, v4

    iput v2, p0, Lv3/w;->a:I

    goto/16 :goto_d4

    :cond_2d
    new-instance v0, Lv3/t;

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_79

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5a

    iget v2, p0, Lv3/w;->a:I

    sub-int/2addr v2, v4

    iput v2, p0, Lv3/w;->a:I

    goto/16 :goto_d4

    :cond_5a
    new-instance v0, Lv3/t;

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    const/16 v3, 0xe

    if-eq v2, v3, :cond_d1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_82

    goto :goto_d1

    :cond_82
    const/16 v3, 0x9

    if-eq v2, v3, :cond_cb

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8b

    goto :goto_cb

    :cond_8b
    const/16 v3, 0x8

    if-eq v2, v3, :cond_c5

    const/16 v3, 0xc

    if-ne v2, v3, :cond_94

    goto :goto_c5

    :cond_94
    const/16 v3, 0x11

    if-ne v2, v3, :cond_a1

    iget-object v2, p0, Lv3/y;->f:Lokio/Buffer;

    iget v3, p0, Lv3/y;->i:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lokio/Buffer;->skip(J)V

    goto :goto_d4

    :cond_a1
    const/16 v3, 0x12

    if-eq v2, v3, :cond_a6

    goto :goto_d4

    :cond_a6
    new-instance v0, Lv3/t;

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c5
    :goto_c5
    sget-object v2, Lv3/y;->k:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lv3/y;->D(Lokio/ByteString;)V

    goto :goto_d4

    :cond_cb
    :goto_cb
    sget-object v2, Lv3/y;->l:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lv3/y;->D(Lokio/ByteString;)V

    goto :goto_d4

    :cond_d1
    :goto_d1
    invoke-virtual {p0}, Lv3/y;->E()V

    :goto_d4
    iput v0, p0, Lv3/y;->g:I

    if-nez v1, :cond_2

    iget-object v0, p0, Lv3/w;->d:[I

    iget v1, p0, Lv3/w;->a:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    iget-object p0, p0, Lv3/w;->c:[Ljava/lang/String;

    sub-int/2addr v1, v4

    const-string v0, "null"

    aput-object v0, p0, v1

    return-void
.end method

.method public final t()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "JsonReader("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lv3/y;->e:Lokio/BufferedSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lv3/w;->b:[I

    iget v2, v0, Lv3/w;->a:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    const/16 v4, 0x9

    const/16 v7, 0x5d

    const/16 v8, 0x3b

    const/16 v9, 0x2c

    const/4 v10, 0x3

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v5, 0x4

    const/16 v16, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_22

    sub-int/2addr v2, v6

    aput v14, v1, v2

    goto :goto_84

    :cond_22
    if-ne v3, v14, :cond_40

    invoke-virtual {v0, v6}, Lv3/y;->z(Z)I

    move-result v1

    iget-object v2, v0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    if-eq v1, v9, :cond_84

    if-eq v1, v8, :cond_3c

    if-ne v1, v7, :cond_36

    iput v5, v0, Lv3/y;->g:I

    return v5

    :cond_36
    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    throw v16

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lv3/y;->t()V

    throw v16

    :cond_40
    if-eq v3, v10, :cond_26c

    if-ne v3, v13, :cond_46

    goto/16 :goto_26c

    :cond_46
    if-ne v3, v5, :cond_66

    sub-int/2addr v2, v6

    aput v13, v1, v2

    invoke-virtual {v0, v6}, Lv3/y;->z(Z)I

    move-result v1

    iget-object v2, v0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_84

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_62

    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    throw v16

    :cond_62
    invoke-virtual/range {p0 .. p0}, Lv3/y;->t()V

    throw v16

    :cond_66
    if-ne v3, v12, :cond_6c

    sub-int/2addr v2, v6

    aput v11, v1, v2

    goto :goto_84

    :cond_6c
    if-ne v3, v11, :cond_7e

    invoke-virtual {v0, v15}, Lv3/y;->z(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7a

    const/16 v1, 0x12

    iput v1, v0, Lv3/y;->g:I

    return v1

    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lv3/y;->t()V

    throw v16

    :cond_7e
    if-eq v3, v4, :cond_26b

    const/16 v1, 0x8

    if-eq v3, v1, :cond_263

    :cond_84
    :goto_84
    invoke-virtual {v0, v6}, Lv3/y;->z(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_25b

    const/16 v2, 0x27

    if-eq v1, v2, :cond_257

    if-eq v1, v9, :cond_247

    if-eq v1, v8, :cond_247

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_23e

    if-eq v1, v7, :cond_234

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_22c

    iget-object v1, v0, Lv3/y;->f:Lokio/Buffer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v4, 0x74

    if-eq v1, v4, :cond_d0

    const/16 v4, 0x54

    if-ne v1, v4, :cond_af

    goto :goto_d0

    :cond_af
    const/16 v4, 0x66

    if-eq v1, v4, :cond_ca

    const/16 v4, 0x46

    if-ne v1, v4, :cond_b8

    goto :goto_ca

    :cond_b8
    const/16 v4, 0x6e

    if-eq v1, v4, :cond_c4

    const/16 v4, 0x4e

    if-ne v1, v4, :cond_c1

    goto :goto_c4

    :cond_c1
    move v7, v15

    goto/16 :goto_126

    :cond_c4
    :goto_c4
    const-string v1, "null"

    const-string v4, "NULL"

    move v7, v11

    goto :goto_d5

    :cond_ca
    :goto_ca
    const-string v1, "false"

    const-string v4, "FALSE"

    move v7, v12

    goto :goto_d5

    :cond_d0
    :goto_d0
    const-string v1, "true"

    const-string v4, "TRUE"

    move v7, v13

    :goto_d5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    move v9, v6

    :goto_da
    if-ge v9, v8, :cond_105

    iget-object v15, v0, Lv3/y;->e:Lokio/BufferedSource;

    add-int/lit8 v11, v9, 0x1

    int-to-long v12, v11

    invoke-interface {v15, v12, v13}, Lokio/BufferedSource;->request(J)Z

    move-result v12

    if-nez v12, :cond_e9

    :goto_e7
    const/4 v7, 0x0

    goto :goto_126

    :cond_e9
    iget-object v12, v0, Lv3/y;->f:Lokio/Buffer;

    move v15, v11

    int-to-long v10, v9

    invoke-virtual {v12, v10, v11}, Lokio/Buffer;->getByte(J)B

    move-result v10

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v10, v11, :cond_fe

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v10, v9, :cond_fe

    goto :goto_e7

    :cond_fe
    move v9, v15

    const/4 v10, 0x3

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v15, 0x0

    goto :goto_da

    :cond_105
    iget-object v1, v0, Lv3/y;->e:Lokio/BufferedSource;

    add-int/lit8 v4, v8, 0x1

    int-to-long v9, v4

    invoke-interface {v1, v9, v10}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_11e

    iget-object v1, v0, Lv3/y;->f:Lokio/Buffer;

    int-to-long v9, v8

    invoke-virtual {v1, v9, v10}, Lokio/Buffer;->getByte(J)B

    move-result v1

    invoke-virtual {v0, v1}, Lv3/y;->x(I)Z

    move-result v1

    if-eqz v1, :cond_11e

    goto :goto_e7

    :cond_11e
    iget-object v1, v0, Lv3/y;->f:Lokio/Buffer;

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Lokio/Buffer;->skip(J)V

    iput v7, v0, Lv3/y;->g:I

    :goto_126
    if-eqz v7, :cond_129

    return v7

    :cond_129
    move-wide v8, v2

    move v7, v6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_12e
    iget-object v11, v0, Lv3/y;->e:Lokio/BufferedSource;

    add-int/lit8 v12, v1, 0x1

    int-to-long v2, v12

    invoke-interface {v11, v2, v3}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-nez v2, :cond_13c

    move v2, v14

    goto/16 :goto_1b2

    :cond_13c
    iget-object v2, v0, Lv3/y;->f:Lokio/Buffer;

    int-to-long v13, v1

    invoke-virtual {v2, v13, v14}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v13, 0x2b

    if-eq v2, v13, :cond_203

    const/16 v13, 0x45

    if-eq v2, v13, :cond_1f9

    const/16 v13, 0x65

    if-eq v2, v13, :cond_1f9

    const/16 v13, 0x2d

    if-eq v2, v13, :cond_1ed

    const/16 v13, 0x2e

    if-eq v2, v13, :cond_1e6

    const/16 v13, 0x30

    if-lt v2, v13, :cond_1ab

    const/16 v13, 0x39

    if-le v2, v13, :cond_160

    goto :goto_1ab

    :cond_160
    if-eq v4, v6, :cond_1a1

    if-nez v4, :cond_165

    goto :goto_1a1

    :cond_165
    const/4 v1, 0x2

    if-ne v4, v1, :cond_18f

    const-wide/16 v13, 0x0

    cmp-long v1, v8, v13

    if-nez v1, :cond_170

    goto/16 :goto_210

    :cond_170
    const-wide/16 v13, 0xa

    mul-long/2addr v13, v8

    add-int/lit8 v2, v2, -0x30

    int-to-long v1, v2

    sub-long/2addr v13, v1

    const-wide v1, -0xcccccccccccccccL

    cmp-long v1, v8, v1

    if-gtz v1, :cond_189

    if-nez v1, :cond_187

    cmp-long v1, v13, v8

    if-gez v1, :cond_187

    goto :goto_189

    :cond_187
    const/4 v1, 0x0

    goto :goto_18a

    :cond_189
    :goto_189
    move v1, v6

    :goto_18a
    and-int/2addr v1, v7

    move v7, v1

    move-wide v8, v13

    const/4 v3, 0x6

    goto :goto_1a8

    :cond_18f
    const/4 v1, 0x3

    if-ne v4, v1, :cond_197

    move v4, v5

    const/4 v2, 0x7

    const/4 v3, 0x6

    goto/16 :goto_20a

    :cond_197
    const/4 v1, 0x5

    const/4 v3, 0x6

    if-eq v4, v1, :cond_19d

    if-ne v4, v3, :cond_1a8

    :cond_19d
    const/4 v2, 0x7

    const/4 v4, 0x7

    goto/16 :goto_20a

    :cond_1a1
    :goto_1a1
    const/4 v3, 0x6

    add-int/lit8 v2, v2, -0x30

    neg-int v1, v2

    int-to-long v1, v1

    move-wide v8, v1

    const/4 v4, 0x2

    :cond_1a8
    :goto_1a8
    const/4 v2, 0x7

    goto/16 :goto_20a

    :cond_1ab
    :goto_1ab
    invoke-virtual {v0, v2}, Lv3/y;->x(I)Z

    move-result v2

    if-nez v2, :cond_210

    const/4 v2, 0x2

    :goto_1b2
    if-ne v4, v2, :cond_1d8

    if-eqz v7, :cond_1d7

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v8, v2

    if-nez v2, :cond_1be

    if-eqz v10, :cond_1d7

    :cond_1be
    const-wide/16 v2, 0x0

    cmp-long v6, v8, v2

    if-nez v6, :cond_1c6

    if-nez v10, :cond_1d7

    :cond_1c6
    if-eqz v10, :cond_1c9

    goto :goto_1ca

    :cond_1c9
    neg-long v8, v8

    :goto_1ca
    iput-wide v8, v0, Lv3/y;->h:J

    iget-object v2, v0, Lv3/y;->f:Lokio/Buffer;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->skip(J)V

    const/16 v15, 0x10

    iput v15, v0, Lv3/y;->g:I

    goto :goto_211

    :cond_1d7
    const/4 v2, 0x2

    :cond_1d8
    if-eq v4, v2, :cond_1df

    if-eq v4, v5, :cond_1df

    const/4 v2, 0x7

    if-ne v4, v2, :cond_210

    :cond_1df
    iput v1, v0, Lv3/y;->i:I

    const/16 v15, 0x11

    iput v15, v0, Lv3/y;->g:I

    goto :goto_211

    :cond_1e6
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    if-ne v4, v1, :cond_210

    const/4 v1, 0x3

    goto :goto_209

    :cond_1ed
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    if-nez v4, :cond_1f5

    move v4, v6

    move v10, v4

    goto :goto_20a

    :cond_1f5
    const/4 v14, 0x5

    if-ne v4, v14, :cond_210

    goto :goto_208

    :cond_1f9
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v14, 0x5

    if-eq v4, v1, :cond_201

    if-ne v4, v5, :cond_210

    :cond_201
    move v4, v14

    goto :goto_20a

    :cond_203
    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v14, 0x5

    if-ne v4, v14, :cond_210

    :goto_208
    move v1, v3

    :goto_209
    move v4, v1

    :goto_20a
    move v1, v12

    const-wide/16 v2, 0x0

    const/4 v14, 0x2

    goto/16 :goto_12e

    :cond_210
    :goto_210
    const/4 v15, 0x0

    :goto_211
    if-eqz v15, :cond_214

    return v15

    :cond_214
    iget-object v1, v0, Lv3/y;->f:Lokio/Buffer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    invoke-virtual {v0, v1}, Lv3/y;->x(I)Z

    move-result v1

    if-nez v1, :cond_228

    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    throw v16

    :cond_228
    invoke-virtual/range {p0 .. p0}, Lv3/y;->t()V

    throw v16

    :cond_22c
    iget-object v1, v0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    iput v6, v0, Lv3/y;->g:I

    return v6

    :cond_234
    if-ne v3, v6, :cond_247

    iget-object v1, v0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    iput v5, v0, Lv3/y;->g:I

    return v5

    :cond_23e
    iget-object v1, v0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/4 v1, 0x3

    iput v1, v0, Lv3/y;->g:I

    return v1

    :cond_247
    if-eq v3, v6, :cond_253

    const/4 v1, 0x2

    if-ne v3, v1, :cond_24d

    goto :goto_253

    :cond_24d
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    throw v16

    :cond_253
    :goto_253
    invoke-virtual/range {p0 .. p0}, Lv3/y;->t()V

    throw v16

    :cond_257
    invoke-virtual/range {p0 .. p0}, Lv3/y;->t()V

    throw v16

    :cond_25b
    iget-object v1, v0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    iput v4, v0, Lv3/y;->g:I

    return v4

    :cond_263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26b
    throw v16

    :cond_26c
    :goto_26c
    sub-int/2addr v2, v6

    aput v5, v1, v2

    const/16 v1, 0x7d

    const/4 v2, 0x5

    if-ne v3, v2, :cond_291

    invoke-virtual {v0, v6}, Lv3/y;->z(Z)I

    move-result v2

    iget-object v4, v0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    if-eq v2, v9, :cond_291

    if-eq v2, v8, :cond_28d

    if-ne v2, v1, :cond_287

    const/4 v1, 0x2

    iput v1, v0, Lv3/y;->g:I

    return v1

    :cond_287
    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    throw v16

    :cond_28d
    invoke-virtual/range {p0 .. p0}, Lv3/y;->t()V

    throw v16

    :cond_291
    invoke-virtual {v0, v6}, Lv3/y;->z(Z)I

    move-result v2

    const/16 v4, 0x22

    if-eq v2, v4, :cond_2be

    const/16 v4, 0x27

    if-eq v2, v4, :cond_2b5

    if-ne v2, v1, :cond_2b1

    const/4 v1, 0x5

    if-eq v3, v1, :cond_2ab

    iget-object v1, v0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/4 v1, 0x2

    iput v1, v0, Lv3/y;->g:I

    return v1

    :cond_2ab
    const-string v1, "Expected name"

    invoke-virtual {v0, v1}, Lv3/w;->s(Ljava/lang/String;)Lv3/u;

    throw v16

    :cond_2b1
    invoke-virtual/range {p0 .. p0}, Lv3/y;->t()V

    throw v16

    :cond_2b5
    iget-object v1, v0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    invoke-virtual/range {p0 .. p0}, Lv3/y;->t()V

    throw v16

    :cond_2be
    iget-object v1, v0, Lv3/y;->f:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/16 v1, 0xd

    iput v1, v0, Lv3/y;->g:I

    return v1
.end method

.method public final v(Ljava/lang/String;Lv3/w$a;)I
    .registers 7

    iget-object v0, p2, Lv3/w$a;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1f

    iget-object v3, p2, Lv3/w$a;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iput v1, p0, Lv3/y;->g:I

    iget-object p2, p0, Lv3/w;->c:[Ljava/lang/String;

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aput-object p1, p2, p0

    return v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public final w(Ljava/lang/String;Lv3/w$a;)I
    .registers 7

    iget-object v0, p2, Lv3/w$a;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_23

    iget-object v3, p2, Lv3/w$a;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iput v1, p0, Lv3/y;->g:I

    iget-object p1, p0, Lv3/w;->d:[I

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aget p2, p1, p0

    add-int/lit8 p2, p2, 0x1

    aput p2, p1, p0

    return v2

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_23
    const/4 p0, -0x1

    return p0
.end method

.method public final x(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3e

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3e

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3e

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x23

    if-eq p1, v0, :cond_39

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_39

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_39

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_39

    packed-switch p1, :pswitch_data_40

    const/4 p0, 0x1

    return p0

    :cond_39
    :pswitch_39  #0x5c
    invoke-virtual {p0}, Lv3/y;->t()V

    const/4 p0, 0x0

    throw p0

    :cond_3e
    :pswitch_3e  #0x5b, 0x5d
    const/4 p0, 0x0

    return p0

    :pswitch_data_40
    .packed-switch 0x5b
        :pswitch_3e  #0000005b
        :pswitch_39  #0000005c
        :pswitch_3e  #0000005d
    .end packed-switch
.end method

.method public y()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lv3/y;->g:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lv3/y;->u()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lv3/y;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_11
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1c

    sget-object v0, Lv3/y;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->A(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_1c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    sget-object v0, Lv3/y;->k:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lv3/y;->A(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_27
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lv3/y;->j:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lv3/y;->j:Ljava/lang/String;

    :goto_30
    const/4 v1, 0x0

    iput v1, p0, Lv3/y;->g:I

    iget-object v1, p0, Lv3/w;->c:[Ljava/lang/String;

    iget p0, p0, Lv3/w;->a:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    return-object v0

    :cond_3c
    new-instance v0, Lv3/t;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/y;->l()Lv3/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z(Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lv3/y;->e:Lokio/BufferedSource;

    add-int/lit8 v2, v0, 0x1

    int-to-long v3, v2

    invoke-interface {v1, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lv3/y;->f:Lokio/Buffer;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_49

    const/16 v1, 0x20

    if-eq v0, v1, :cond_49

    const/16 v1, 0xd

    if-eq v0, v1, :cond_49

    const/16 v1, 0x9

    if-ne v0, v1, :cond_24

    goto :goto_49

    :cond_24
    iget-object p1, p0, Lv3/y;->f:Lokio/Buffer;

    add-int/lit8 v2, v2, -0x1

    int-to-long v1, v2

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->skip(J)V

    const/16 p1, 0x2f

    const/4 v1, 0x0

    if-ne v0, p1, :cond_40

    iget-object p1, p0, Lv3/y;->e:Lokio/BufferedSource;

    const-wide/16 v2, 0x2

    invoke-interface {p1, v2, v3}, Lokio/BufferedSource;->request(J)Z

    move-result p1

    if-nez p1, :cond_3c

    return v0

    :cond_3c
    invoke-virtual {p0}, Lv3/y;->t()V

    throw v1

    :cond_40
    const/16 p1, 0x23

    if-eq v0, p1, :cond_45

    return v0

    :cond_45
    invoke-virtual {p0}, Lv3/y;->t()V

    throw v1

    :cond_49
    :goto_49
    move v0, v2

    goto :goto_1

    :cond_4b
    if-nez p1, :cond_4f

    const/4 p0, -0x1

    return p0

    :cond_4f
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "End of input"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
