.class public Li6/s;
.super Li6/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/s$d;,
        Li6/s$c;,
        Li6/s$b;
    }
.end annotation


# static fields
.field public static final h:[I


# instance fields
.field public final b:I

.field public final c:Li6/c;

.field public final d:Li6/c;

.field public final e:I

.field public final f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_7
    if-lez v1, :cond_15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_7

    :cond_15
    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Li6/s;->h:[I

    const/4 v1, 0x0

    :goto_28
    sget-object v2, Li6/s;->h:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    return-void
.end method

.method public constructor <init>(Li6/c;Li6/c;)V
    .registers 5

    invoke-direct {p0}, Li6/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Li6/s;->g:I

    iput-object p1, p0, Li6/s;->c:Li6/c;

    iput-object p2, p0, Li6/s;->d:Li6/c;

    invoke-virtual {p1}, Li6/c;->size()I

    move-result v0

    iput v0, p0, Li6/s;->e:I

    invoke-virtual {p2}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Li6/s;->b:I

    invoke-virtual {p1}, Li6/c;->i()I

    move-result p1

    invoke-virtual {p2}, Li6/c;->i()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li6/s;->f:I

    return-void
.end method

.method public static t(Li6/c;Li6/c;)Li6/o;
    .registers 6

    invoke-virtual {p0}, Li6/c;->size()I

    move-result v0

    invoke-virtual {p1}, Li6/c;->size()I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Li6/c;->e([BIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Li6/c;->e([BIII)V

    new-instance p0, Li6/o;

    invoke-direct {p0, v2}, Li6/o;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Li6/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Li6/c;

    iget v1, p0, Li6/s;->b:I

    invoke-virtual {p1}, Li6/c;->size()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Li6/s;->b:I

    if-nez v1, :cond_1a

    return v0

    :cond_1a
    iget v1, p0, Li6/s;->g:I

    if-eqz v1, :cond_29

    invoke-virtual {p1}, Li6/c;->p()I

    move-result v1

    if-eqz v1, :cond_29

    iget v3, p0, Li6/s;->g:I

    if-eq v3, v1, :cond_29

    return v2

    :cond_29
    new-instance v1, Li6/s$c;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Li6/s$c;-><init>(Li6/c;Li6/s$a;)V

    invoke-virtual {v1}, Li6/s$c;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/o;

    new-instance v5, Li6/s$c;

    invoke-direct {v5, p1, v3}, Li6/s$c;-><init>(Li6/c;Li6/s$a;)V

    invoke-virtual {v5}, Li6/s$c;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li6/o;

    move v3, v2

    move v6, v3

    move v7, v6

    :goto_43
    iget-object v8, v4, Li6/o;->b:[B

    array-length v8, v8

    sub-int/2addr v8, v3

    iget-object v9, p1, Li6/o;->b:[B

    array-length v9, v9

    sub-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez v3, :cond_56

    invoke-virtual {v4, p1, v6, v10}, Li6/o;->t(Li6/o;II)Z

    move-result v11

    goto :goto_5a

    :cond_56
    invoke-virtual {p1, v4, v3, v10}, Li6/o;->t(Li6/o;II)Z

    move-result v11

    :goto_5a
    if-nez v11, :cond_5e

    move v0, v2

    goto :goto_65

    :cond_5e
    add-int/2addr v7, v10

    iget v11, p0, Li6/s;->b:I

    if-lt v7, v11, :cond_6c

    if-ne v7, v11, :cond_66

    :goto_65
    return v0

    :cond_66
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_6c
    if-ne v10, v8, :cond_77

    invoke-virtual {v1}, Li6/s$c;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/o;

    move-object v4, v3

    move v3, v2

    goto :goto_78

    :cond_77
    add-int/2addr v3, v10

    :goto_78
    if-ne v10, v9, :cond_82

    invoke-virtual {v5}, Li6/s$c;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li6/o;

    move v6, v2

    goto :goto_43

    :cond_82
    add-int/2addr v6, v10

    goto :goto_43
.end method

.method public h([BIII)V
    .registers 7

    add-int v0, p2, p4

    iget v1, p0, Li6/s;->e:I

    if-gt v0, v1, :cond_c

    iget-object p0, p0, Li6/s;->c:Li6/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Li6/c;->h([BIII)V

    goto :goto_23

    :cond_c
    if-lt p2, v1, :cond_15

    iget-object p0, p0, Li6/s;->d:Li6/c;

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3, p4}, Li6/c;->h([BIII)V

    goto :goto_23

    :cond_15
    sub-int/2addr v1, p2

    iget-object v0, p0, Li6/s;->c:Li6/c;

    invoke-virtual {v0, p1, p2, p3, v1}, Li6/c;->h([BIII)V

    iget-object p0, p0, Li6/s;->d:Li6/c;

    const/4 p2, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p0, p1, p2, p3, p4}, Li6/c;->h([BIII)V

    :goto_23
    return-void
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Li6/s;->g:I

    if-nez v0, :cond_10

    iget v0, p0, Li6/s;->b:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Li6/s;->n(III)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :cond_e
    iput v0, p0, Li6/s;->g:I

    :cond_10
    return v0
.end method

.method public i()I
    .registers 1

    iget p0, p0, Li6/s;->f:I

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Li6/s$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li6/s$d;-><init>(Li6/s;Li6/s$a;)V

    return-object v0
.end method

.method public j()Z
    .registers 3

    iget v0, p0, Li6/s;->b:I

    sget-object v1, Li6/s;->h:[I

    iget p0, p0, Li6/s;->f:I

    aget p0, v1, p0

    if-lt v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public k()Z
    .registers 4

    iget-object v0, p0, Li6/s;->c:Li6/c;

    iget v1, p0, Li6/s;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Li6/c;->o(III)I

    move-result v0

    iget-object p0, p0, Li6/s;->d:Li6/c;

    invoke-virtual {p0}, Li6/c;->size()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Li6/c;->o(III)I

    move-result p0

    if-nez p0, :cond_16

    const/4 v2, 0x1

    :cond_16
    return v2
.end method

.method public l()Li6/c$a;
    .registers 3

    new-instance v0, Li6/s$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li6/s$d;-><init>(Li6/s;Li6/s$a;)V

    return-object v0
.end method

.method public n(III)I
    .registers 6

    add-int v0, p2, p3

    iget v1, p0, Li6/s;->e:I

    if-gt v0, v1, :cond_d

    iget-object p0, p0, Li6/s;->c:Li6/c;

    invoke-virtual {p0, p1, p2, p3}, Li6/c;->n(III)I

    move-result p0

    return p0

    :cond_d
    if-lt p2, v1, :cond_17

    iget-object p0, p0, Li6/s;->d:Li6/c;

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Li6/c;->n(III)I

    move-result p0

    return p0

    :cond_17
    sub-int/2addr v1, p2

    iget-object v0, p0, Li6/s;->c:Li6/c;

    invoke-virtual {v0, p1, p2, v1}, Li6/c;->n(III)I

    move-result p1

    iget-object p0, p0, Li6/s;->d:Li6/c;

    const/4 p2, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p0, p1, p2, p3}, Li6/c;->n(III)I

    move-result p0

    return p0
.end method

.method public o(III)I
    .registers 6

    add-int v0, p2, p3

    iget v1, p0, Li6/s;->e:I

    if-gt v0, v1, :cond_d

    iget-object p0, p0, Li6/s;->c:Li6/c;

    invoke-virtual {p0, p1, p2, p3}, Li6/c;->o(III)I

    move-result p0

    return p0

    :cond_d
    if-lt p2, v1, :cond_17

    iget-object p0, p0, Li6/s;->d:Li6/c;

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Li6/c;->o(III)I

    move-result p0

    return p0

    :cond_17
    sub-int/2addr v1, p2

    iget-object v0, p0, Li6/s;->c:Li6/c;

    invoke-virtual {v0, p1, p2, v1}, Li6/c;->o(III)I

    move-result p1

    iget-object p0, p0, Li6/s;->d:Li6/c;

    const/4 p2, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p0, p1, p2, p3}, Li6/c;->o(III)I

    move-result p0

    return p0
.end method

.method public p()I
    .registers 1

    iget p0, p0, Li6/s;->g:I

    return p0
.end method

.method public q(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Li6/s;->b:I

    if-nez v1, :cond_9

    sget-object p0, Li6/i;->a:[B

    goto :goto_10

    :cond_9
    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Li6/s;->h([BIII)V

    move-object p0, v2

    :goto_10
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public s(Ljava/io/OutputStream;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    iget v1, p0, Li6/s;->e:I

    if-gt v0, v1, :cond_c

    iget-object p0, p0, Li6/s;->c:Li6/c;

    invoke-virtual {p0, p1, p2, p3}, Li6/c;->s(Ljava/io/OutputStream;II)V

    goto :goto_22

    :cond_c
    if-lt p2, v1, :cond_15

    iget-object p0, p0, Li6/s;->d:Li6/c;

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Li6/c;->s(Ljava/io/OutputStream;II)V

    goto :goto_22

    :cond_15
    sub-int/2addr v1, p2

    iget-object v0, p0, Li6/s;->c:Li6/c;

    invoke-virtual {v0, p1, p2, v1}, Li6/c;->s(Ljava/io/OutputStream;II)V

    iget-object p0, p0, Li6/s;->d:Li6/c;

    const/4 p2, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p0, p1, p2, p3}, Li6/c;->s(Ljava/io/OutputStream;II)V

    :goto_22
    return-void
.end method

.method public size()I
    .registers 1

    iget p0, p0, Li6/s;->b:I

    return p0
.end method
