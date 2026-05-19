.class public final Li6/c$b;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final f:[B


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li6/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:[B

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Li6/c$b;->f:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-ltz p1, :cond_13

    iput p1, p0, Li6/c$b;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li6/c$b;->b:Ljava/util/ArrayList;

    new-array p1, p1, [B

    iput-object p1, p0, Li6/c$b;->d:[B

    return-void

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Buffer size < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    iget-object v0, p0, Li6/c$b;->b:Ljava/util/ArrayList;

    new-instance v1, Li6/o;

    iget-object v2, p0, Li6/c$b;->d:[B

    invoke-direct {v1, v2}, Li6/o;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Li6/c$b;->c:I

    iget-object v1, p0, Li6/c$b;->d:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Li6/c$b;->c:I

    iget v1, p0, Li6/c$b;->a:I

    ushr-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Li6/c$b;->d:[B

    const/4 p1, 0x0

    iput p1, p0, Li6/c$b;->e:I

    return-void
.end method

.method public final b()V
    .registers 6

    iget v0, p0, Li6/c$b;->e:I

    iget-object v1, p0, Li6/c$b;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1f

    if-lez v0, :cond_2f

    new-array v2, v0, [B

    array-length v4, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Li6/c$b;->b:Ljava/util/ArrayList;

    new-instance v1, Li6/o;

    invoke-direct {v1, v2}, Li6/o;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_1f
    iget-object v0, p0, Li6/c$b;->b:Ljava/util/ArrayList;

    new-instance v1, Li6/o;

    iget-object v2, p0, Li6/c$b;->d:[B

    invoke-direct {v1, v2}, Li6/o;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Li6/c$b;->f:[B

    iput-object v0, p0, Li6/c$b;->d:[B

    :cond_2f
    :goto_2f
    iget v0, p0, Li6/c$b;->c:I

    iget v1, p0, Li6/c$b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Li6/c$b;->c:I

    iput v3, p0, Li6/c$b;->e:I

    return-void
.end method

.method public declared-synchronized c()Li6/c;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Li6/c$b;->b()V

    iget-object v0, p0, Li6/c$b;->b:Ljava/util/ArrayList;

    instance-of v1, v0, Ljava/util/Collection;

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_23
    move-object v0, v1

    :cond_24
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v0, Li6/c;->a:Li6/c;

    goto :goto_39

    :cond_2d
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v1, v0}, Li6/c;->a(Ljava/util/Iterator;I)Li6/c;

    move-result-object v0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    :goto_39
    monitor-exit p0

    return-object v0

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "<ByteString.Output@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    monitor-enter p0

    :try_start_11
    iget v2, p0, Li6/c$b;->c:I

    iget v3, p0, Li6/c$b;->e:I
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_23

    add-int/2addr v2, v3

    monitor-exit p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Li6/c$b;->e:I

    iget-object v1, p0, Li6/c$b;->d:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li6/c$b;->a(I)V

    :cond_c
    iget-object v0, p0, Li6/c$b;->d:[B

    iget v1, p0, Li6/c$b;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Li6/c$b;->e:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Li6/c$b;->d:[B

    array-length v1, v0

    iget v2, p0, Li6/c$b;->e:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_12

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Li6/c$b;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Li6/c$b;->e:I

    goto :goto_24

    :cond_12
    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-virtual {p0, p3}, Li6/c$b;->a(I)V

    iget-object v0, p0, Li6/c$b;->d:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Li6/c$b;->e:I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :goto_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method
