.class public final Lv3/a0;
.super Lv3/b0;
.source ""


# instance fields
.field public g:[Ljava/lang/Object;

.field public h:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lv3/b0;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lv3/a0;->g:[Ljava/lang/Object;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lv3/b0;->j(I)V

    return-void
.end method


# virtual methods
.method public a()Lv3/b0;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-nez v0, :cond_30

    iget v0, p0, Lv3/b0;->a:I

    iget v1, p0, Lv3/b0;->f:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_16

    iget-object v3, p0, Lv3/b0;->b:[I

    sub-int/2addr v0, v2

    aget v0, v3, v0

    if-ne v0, v2, :cond_16

    not-int v0, v1

    iput v0, p0, Lv3/b0;->f:I

    return-object p0

    :cond_16
    invoke-virtual {p0}, Lv3/b0;->c()Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lv3/a0;->p(Ljava/lang/Object;)Lv3/a0;

    iget-object v1, p0, Lv3/a0;->g:[Ljava/lang/Object;

    iget v3, p0, Lv3/b0;->a:I

    aput-object v0, v1, v3

    iget-object v0, p0, Lv3/b0;->d:[I

    const/4 v1, 0x0

    aput v1, v0, v3

    invoke-virtual {p0, v2}, Lv3/b0;->j(I)V

    return-object p0

    :cond_30
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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-nez v0, :cond_2c

    iget v0, p0, Lv3/b0;->a:I

    iget v1, p0, Lv3/b0;->f:I

    const/4 v2, 0x3

    if-ne v0, v1, :cond_17

    iget-object v3, p0, Lv3/b0;->b:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v3, v0

    if-ne v0, v2, :cond_17

    not-int v0, v1

    iput v0, p0, Lv3/b0;->f:I

    return-object p0

    :cond_17
    invoke-virtual {p0}, Lv3/b0;->c()Z

    new-instance v0, Lv3/c0;

    invoke-direct {v0}, Lv3/c0;-><init>()V

    invoke-virtual {p0, v0}, Lv3/a0;->p(Ljava/lang/Object;)Lv3/a0;

    iget-object v1, p0, Lv3/a0;->g:[Ljava/lang/Object;

    iget v3, p0, Lv3/b0;->a:I

    aput-object v0, v1, v3

    invoke-virtual {p0, v2}, Lv3/b0;->j(I)V

    return-object p0

    :cond_2c
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

    iget v0, p0, Lv3/b0;->a:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_13

    if-ne v0, v1, :cond_f

    iget-object v2, p0, Lv3/b0;->b:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_13

    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lv3/b0;->a:I

    return-void

    :cond_13
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Incomplete document"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Lv3/b0;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lv3/b0;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    iget v0, p0, Lv3/b0;->a:I

    iget v2, p0, Lv3/b0;->f:I

    not-int v3, v2

    if-ne v0, v3, :cond_12

    not-int v0, v2

    iput v0, p0, Lv3/b0;->f:I

    return-object p0

    :cond_12
    sub-int/2addr v0, v1

    iput v0, p0, Lv3/b0;->a:I

    iget-object v2, p0, Lv3/a0;->g:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iget-object v2, p0, Lv3/b0;->d:[I

    sub-int/2addr v0, v1

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    return-object p0

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e()Lv3/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lv3/b0;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lv3/a0;->h:Ljava/lang/String;

    if-nez v0, :cond_31

    iget v0, p0, Lv3/b0;->a:I

    iget v1, p0, Lv3/b0;->f:I

    not-int v2, v1

    if-ne v0, v2, :cond_16

    not-int v0, v1

    iput v0, p0, Lv3/b0;->f:I

    return-object p0

    :cond_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lv3/b0;->e:Z

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lv3/b0;->a:I

    iget-object v1, p0, Lv3/a0;->g:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lv3/b0;->c:[Ljava/lang/String;

    aput-object v2, v1, v0

    iget-object v1, p0, Lv3/b0;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    return-object p0

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dangling name: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lv3/a0;->h:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lv3/b0;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lv3/a0;->h:Ljava/lang/String;

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-nez v0, :cond_23

    iput-object p1, p0, Lv3/a0;->h:Ljava/lang/String;

    iget-object v0, p0, Lv3/b0;->c:[Ljava/lang/String;

    iget v1, p0, Lv3/b0;->a:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-object p0

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nesting problem."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
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

    iget p0, p0, Lv3/b0;->a:I

    if-eqz p0, :cond_5

    return-void

    :cond_5
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

    if-nez v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lv3/a0;->p(Ljava/lang/Object;)Lv3/a0;

    iget-object v0, p0, Lv3/b0;->d:[I

    iget v1, p0, Lv3/b0;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-object p0

    :cond_15
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

    if-nez v0, :cond_35

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_35

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/b0;->e:Z

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/a0;->f(Ljava/lang/String;)Lv3/b0;

    return-object p0

    :cond_21
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/a0;->p(Ljava/lang/Object;)Lv3/a0;

    iget-object p1, p0, Lv3/b0;->d:[I

    iget p2, p0, Lv3/b0;->a:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return-object p0

    :cond_35
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

    invoke-virtual {p0, p1}, Lv3/a0;->f(Ljava/lang/String;)Lv3/b0;

    return-object p0

    :cond_f
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/a0;->p(Ljava/lang/Object;)Lv3/a0;

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

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_1a

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_1a

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1a

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_11

    goto :goto_1a

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lv3/a0;->k(D)Lv3/b0;

    move-result-object p0

    return-object p0

    :cond_1a
    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lv3/a0;->l(J)Lv3/b0;

    move-result-object p0

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lv3/b0;
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lv3/b0;->e:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/b0;->e:Z

    invoke-virtual {p0, p1}, Lv3/a0;->f(Ljava/lang/String;)Lv3/b0;

    return-object p0

    :cond_b
    invoke-virtual {p0, p1}, Lv3/a0;->p(Ljava/lang/Object;)Lv3/a0;

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

    if-nez v0, :cond_18

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/a0;->p(Ljava/lang/Object;)Lv3/a0;

    iget-object p1, p0, Lv3/b0;->d:[I

    iget v0, p0, Lv3/b0;->a:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0

    :cond_18
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

.method public final p(Ljava/lang/Object;)Lv3/a0;
    .registers 7
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lv3/b0;->h()I

    move-result v0

    iget v1, p0, Lv3/b0;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    const/4 v3, 0x6

    if-ne v0, v3, :cond_19

    iget-object v0, p0, Lv3/b0;->b:[I

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x7

    aput v4, v0, v3

    iget-object v0, p0, Lv3/a0;->g:[Ljava/lang/Object;

    sub-int/2addr v1, v2

    aput-object p1, v0, v1

    goto :goto_79

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "JSON must have only one top-level value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6d

    iget-object v3, p0, Lv3/a0;->h:Ljava/lang/String;

    if-eqz v3, :cond_6d

    if-nez p1, :cond_2b

    goto :goto_38

    :cond_2b
    iget-object v0, p0, Lv3/a0;->g:[Ljava/lang/Object;

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3c

    :goto_38
    const/4 p1, 0x0

    iput-object p1, p0, Lv3/a0;->h:Ljava/lang/String;

    goto :goto_79

    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Map key \'"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lv3/a0;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' has multiple values at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/b0;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6d
    if-ne v0, v2, :cond_7a

    iget-object v0, p0, Lv3/a0;->g:[Ljava/lang/Object;

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_79
    return-object p0

    :cond_7a
    const/16 p0, 0x9

    if-ne v0, p0, :cond_86

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Sink from valueSink() was not closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_86
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nesting problem."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
