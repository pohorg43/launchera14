.class public final Lh4/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lh4/r;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh4/r;->a:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lh4/r;

    iget p1, p1, Lh4/r;->a:I

    iget p0, p0, Lh4/r;->a:I

    const/high16 v0, -0x80000000

    xor-int/2addr p0, v0

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    iget p0, p0, Lh4/r;->a:I

    instance-of v0, p1, Lh4/r;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_10

    :cond_8
    check-cast p1, Lh4/r;

    iget p1, p1, Lh4/r;->a:I

    if-eq p0, p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Lh4/r;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget p0, p0, Lh4/r;->a:I

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
