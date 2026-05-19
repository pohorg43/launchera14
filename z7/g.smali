.class public final Lz7/g;
.super Lz7/z0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz7/z0<",
        "[Z>;"
    }
.end annotation


# instance fields
.field public a:[Z

.field public b:I


# direct methods
.method public constructor <init>([Z)V
    .registers 3

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lz7/z0;-><init>()V

    iput-object p1, p0, Lz7/g;->a:[Z

    array-length p1, p1

    iput p1, p0, Lz7/g;->b:I

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lz7/g;->b(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lz7/g;->a:[Z

    iget p0, p0, Lz7/g;->b:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p0

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lz7/g;->a:[Z

    array-length v1, v0

    if-ge v1, p1, :cond_16

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_b

    move p1, v1

    :cond_b
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lz7/g;->a:[Z

    :cond_16
    return-void
.end method

.method public d()I
    .registers 1

    iget p0, p0, Lz7/g;->b:I

    return p0
.end method
