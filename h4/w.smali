.class public final Lh4/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lh4/w;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field public final a:S


# direct methods
.method public synthetic constructor <init>(S)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lh4/w;->a:S

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lh4/w;

    iget-short p1, p1, Lh4/w;->a:S

    iget-short p0, p0, Lh4/w;->a:S

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    iget-short p0, p0, Lh4/w;->a:S

    instance-of v0, p1, Lh4/w;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_10

    :cond_8
    check-cast p1, Lh4/w;

    iget-short p1, p1, Lh4/w;->a:S

    if-eq p0, p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method public hashCode()I
    .registers 1

    iget-short p0, p0, Lh4/w;->a:S

    invoke-static {p0}, Ljava/lang/Short;->hashCode(S)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-short p0, p0, Lh4/w;->a:S

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
