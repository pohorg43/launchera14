.class public Li6/o;
.super Li6/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/o$b;
    }
.end annotation


# instance fields
.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Li6/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Li6/o;->c:I

    iput-object p1, p0, Li6/o;->b:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Li6/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Li6/o;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Li6/c;

    invoke-virtual {v3}, Li6/c;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Li6/o;->size()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    instance-of v0, p1, Li6/o;

    if-eqz v0, :cond_2e

    check-cast p1, Li6/o;

    invoke-virtual {p0}, Li6/o;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Li6/o;->t(Li6/o;II)Z

    move-result p0

    return p0

    :cond_2e
    instance-of v0, p1, Li6/s;

    if-eqz v0, :cond_37

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-static {v0, v1, p1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h([BIII)V
    .registers 5

    iget-object p0, p0, Li6/o;->b:[B

    invoke-static {p0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Li6/o;->c:I

    if-nez v0, :cond_12

    invoke-virtual {p0}, Li6/o;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Li6/o;->n(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput v0, p0, Li6/o;->c:I

    :cond_12
    return v0
.end method

.method public i()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 1

    invoke-virtual {p0}, Li6/o;->l()Li6/c$a;

    move-result-object p0

    return-object p0
.end method

.method public j()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public k()Z
    .registers 3

    invoke-virtual {p0}, Li6/o;->u()I

    move-result v0

    iget-object v1, p0, Li6/o;->b:[B

    invoke-virtual {p0}, Li6/o;->size()I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {v1, v0, p0}, Le2/c;->e([BII)Z

    move-result p0

    return p0
.end method

.method public l()Li6/c$a;
    .registers 3

    new-instance v0, Li6/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li6/o$b;-><init>(Li6/o;Li6/o$a;)V

    return-object v0
.end method

.method public n(III)I
    .registers 6

    iget-object v0, p0, Li6/o;->b:[B

    invoke-virtual {p0}, Li6/o;->u()I

    move-result p0

    add-int/2addr p0, p2

    move p2, p0

    :goto_8
    add-int v1, p0, p3

    if-ge p2, v1, :cond_14

    mul-int/lit8 p1, p1, 0x1f

    aget-byte v1, v0, p2

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_14
    return p1
.end method

.method public o(III)I
    .registers 10

    invoke-virtual {p0}, Li6/o;->u()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p0, p0, Li6/o;->b:[B

    add-int/2addr p3, v0

    if-eqz p1, :cond_8d

    if-lt v0, p3, :cond_e

    goto/16 :goto_91

    :cond_e
    int-to-byte p2, p1

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p2, v1, :cond_27

    const/16 p1, -0x3e

    if-lt p2, p1, :cond_24

    add-int/lit8 p1, v0, 0x1

    aget-byte p2, p0, v0

    if-le p2, v3, :cond_21

    goto :goto_24

    :cond_21
    move v0, p1

    goto/16 :goto_8d

    :cond_24
    :goto_24
    move p1, v2

    goto/16 :goto_91

    :cond_27
    const/16 v4, -0x10

    if-ge p2, v4, :cond_54

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_3f

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    if-lt p1, p3, :cond_3c

    invoke-static {p2, v0}, Le2/c;->b(II)I

    move-result p1

    goto :goto_91

    :cond_3c
    move v5, v0

    move v0, p1

    move p1, v5

    :cond_3f
    if-gt p1, v3, :cond_24

    const/16 v4, -0x60

    if-ne p2, v1, :cond_47

    if-lt p1, v4, :cond_24

    :cond_47
    const/16 v1, -0x13

    if-ne p2, v1, :cond_4d

    if-ge p1, v4, :cond_24

    :cond_4d
    add-int/lit8 p1, v0, 0x1

    aget-byte p2, p0, v0

    if-le p2, v3, :cond_21

    goto :goto_24

    :cond_54
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    const/4 v4, 0x0

    if-nez v1, :cond_68

    add-int/lit8 p1, v0, 0x1

    aget-byte v1, p0, v0

    if-lt p1, p3, :cond_66

    invoke-static {p2, v1}, Le2/c;->b(II)I

    move-result p1

    goto :goto_91

    :cond_66
    move v0, p1

    goto :goto_6b

    :cond_68
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v4, p1

    :goto_6b
    if-nez v4, :cond_79

    add-int/lit8 p1, v0, 0x1

    aget-byte v4, p0, v0

    if-lt p1, p3, :cond_78

    invoke-static {p2, v1, v4}, Le2/c;->c(III)I

    move-result p1

    goto :goto_91

    :cond_78
    move v0, p1

    :cond_79
    if-gt v1, v3, :cond_24

    shl-int/lit8 p1, p2, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v1, p1

    shr-int/lit8 p1, v1, 0x1e

    if-nez p1, :cond_24

    if-gt v4, v3, :cond_24

    add-int/lit8 p1, v0, 0x1

    aget-byte p2, p0, v0

    if-le p2, v3, :cond_21

    goto :goto_24

    :cond_8d
    :goto_8d
    invoke-static {p0, v0, p3}, Le2/c;->g([BII)I

    move-result p1

    :goto_91
    return p1
.end method

.method public p()I
    .registers 1

    iget p0, p0, Li6/o;->c:I

    return p0
.end method

.method public q(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Li6/o;->b:[B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public s(Ljava/io/OutputStream;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Li6/o;->b:[B

    invoke-virtual {p0}, Li6/o;->u()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1, v0, p0, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public size()I
    .registers 1

    iget-object p0, p0, Li6/o;->b:[B

    array-length p0, p0

    return p0
.end method

.method public t(Li6/o;II)Z
    .registers 7

    invoke-virtual {p1}, Li6/o;->size()I

    move-result v0

    if-gt p3, v0, :cond_5c

    add-int v0, p2, p3

    invoke-virtual {p1}, Li6/o;->size()I

    move-result v1

    if-gt v0, v1, :cond_31

    iget-object v0, p0, Li6/o;->b:[B

    iget-object v1, p1, Li6/o;->b:[B

    invoke-virtual {p0}, Li6/o;->u()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Li6/o;->u()I

    move-result p0

    invoke-virtual {p1}, Li6/o;->u()I

    move-result p1

    add-int/2addr p1, p2

    :goto_20
    if-ge p0, v2, :cond_2f

    aget-byte p2, v0, p0

    aget-byte p3, v1, p1

    if-eq p2, p3, :cond_2a

    const/4 p0, 0x0

    return p0

    :cond_2a
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_2f
    const/4 p0, 0x1

    return p0

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Li6/o;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ran off end of other: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Li6/o;->size()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
