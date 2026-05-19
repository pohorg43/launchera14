.class public Li6/o$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li6/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic c:Li6/o;


# direct methods
.method public constructor <init>(Li6/o;Li6/o$a;)V
    .registers 3

    iput-object p1, p0, Li6/o$b;->c:Li6/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Li6/o$b;->a:I

    iget-object p1, p1, Li6/o;->b:[B

    array-length p1, p1

    iput p1, p0, Li6/o$b;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Li6/o$b;->a:I

    iget p0, p0, Li6/o$b;->b:I

    if-ge v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Li6/o$b;->nextByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public nextByte()B
    .registers 4

    :try_start_0
    iget-object v0, p0, Li6/o$b;->c:Li6/o;

    iget-object v0, v0, Li6/o;->b:[B

    iget v1, p0, Li6/o$b;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Li6/o$b;->a:I

    aget-byte p0, v0, v1
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
