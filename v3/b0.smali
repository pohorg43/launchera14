.class public abstract Lv3/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field public a:I

.field public b:[I

.field public c:[Ljava/lang/String;

.field public d:[I

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv3/b0;->a:I

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lv3/b0;->b:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lv3/b0;->c:[Ljava/lang/String;

    new-array v0, v0, [I

    iput-object v0, p0, Lv3/b0;->d:[I

    const/4 v0, -0x1

    iput v0, p0, Lv3/b0;->f:I

    return-void
.end method


# virtual methods
.method public abstract a()Lv3/b0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()Lv3/b0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final c()Z
    .registers 4

    iget v0, p0, Lv3/b0;->a:I

    iget-object v1, p0, Lv3/b0;->b:[I

    array-length v2, v1

    if-eq v0, v2, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const/16 v2, 0x100

    if-eq v0, v2, :cond_41

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lv3/b0;->b:[I

    iget-object v0, p0, Lv3/b0;->c:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lv3/b0;->c:[Ljava/lang/String;

    iget-object v0, p0, Lv3/b0;->d:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lv3/b0;->d:[I

    instance-of v0, p0, Lv3/a0;

    if-eqz v0, :cond_3f

    check-cast p0, Lv3/a0;

    iget-object v0, p0, Lv3/a0;->g:[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lv3/a0;->g:[Ljava/lang/Object;

    :cond_3f
    const/4 p0, 0x1

    return p0

    :cond_41
    new-instance v0, Lv3/t;

    const-string v1, "Nesting too deep at "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/b0;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": circular reference?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract d()Lv3/b0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e()Lv3/b0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;)Lv3/b0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g()Lv3/b0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getPath()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    iget v0, p0, Lv3/b0;->a:I

    iget-object v1, p0, Lv3/b0;->b:[I

    iget-object v2, p0, Lv3/b0;->c:[Ljava/lang/String;

    iget-object p0, p0, Lv3/b0;->d:[I

    invoke-static {v0, v1, v2, p0}, Lv3/x;->a(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lv3/b0;->a:I

    if-eqz v0, :cond_b

    iget-object p0, p0, Lv3/b0;->b:[I

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    return p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lv3/b0;->h()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_13

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv3/b0;->e:Z

    return-void
.end method

.method public final j(I)V
    .registers 5

    iget-object v0, p0, Lv3/b0;->b:[I

    iget v1, p0, Lv3/b0;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lv3/b0;->a:I

    aput p1, v0, v1

    return-void
.end method

.method public abstract k(D)Lv3/b0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l(J)Lv3/b0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract m(Ljava/lang/Number;)Lv3/b0;
    .param p1  # Ljava/lang/Number;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n(Ljava/lang/String;)Lv3/b0;
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract o(Z)Lv3/b0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
