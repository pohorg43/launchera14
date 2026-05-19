.class public final Lh4/s$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lh4/r;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public final a:[I

.field public b:I


# direct methods
.method public constructor <init>([I)V
    .registers 3

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/s$a;->a:[I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Lh4/s$a;->b:I

    iget-object p0, p0, Lh4/s$a;->a:[I

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

    iget v0, p0, Lh4/s$a;->b:I

    iget-object v1, p0, Lh4/s$a;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_13

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lh4/s$a;->b:I

    aget p0, v1, v0

    new-instance v0, Lh4/r;

    invoke-direct {v0, p0}, Lh4/r;-><init>(I)V

    return-object v0

    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, Lh4/s$a;->b:I

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
