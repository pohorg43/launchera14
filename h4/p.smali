.class public final Lh4/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lh4/p;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field public final a:B


# direct methods
.method public synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lh4/p;->a:B

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lh4/p;

    iget-byte p1, p1, Lh4/p;->a:B

    iget-byte p0, p0, Lh4/p;->a:B

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    iget-byte p0, p0, Lh4/p;->a:B

    instance-of v0, p1, Lh4/p;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_10

    :cond_8
    check-cast p1, Lh4/p;

    iget-byte p1, p1, Lh4/p;->a:B

    if-eq p0, p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method public hashCode()I
    .registers 1

    iget-byte p0, p0, Lh4/p;->a:B

    invoke-static {p0}, Ljava/lang/Byte;->hashCode(B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-byte p0, p0, Lh4/p;->a:B

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
