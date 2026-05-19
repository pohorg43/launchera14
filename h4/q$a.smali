.class public final Lh4/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lh4/p;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public final a:[B

.field public b:I


# direct methods
.method public constructor <init>([B)V
    .registers 3

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/q$a;->a:[B

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Lh4/q$a;->b:I

    iget-object p0, p0, Lh4/q$a;->a:[B

    array-length p0, p0

    if-ge v0, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lh4/q$a;->b:I

    iget-object v1, p0, Lh4/q$a;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_13

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lh4/q$a;->b:I

    aget-byte p0, v1, v0

    new-instance v0, Lh4/p;

    invoke-direct {v0, p0}, Lh4/p;-><init>(B)V

    return-object v0

    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, Lh4/q$a;->b:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
