.class public final Lh4/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lh4/t;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lh4/t;->a:J

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Lh4/t;

    iget-wide v0, p1, Lh4/t;->a:J

    iget-wide p0, p0, Lh4/t;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    xor-long/2addr p0, v2

    xor-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    iget-wide v0, p0, Lh4/t;->a:J

    instance-of p0, p1, Lh4/t;

    const/4 v2, 0x0

    if-nez p0, :cond_8

    goto :goto_12

    :cond_8
    check-cast p1, Lh4/t;

    iget-wide p0, p1, Lh4/t;->a:J

    cmp-long p0, v0, p0

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x1

    :goto_12
    return v2
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lh4/t;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    iget-wide v0, p0, Lh4/t;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const-string v2, "toString(this, checkRadix(radix))"

    const/16 v3, 0xa

    if-ltz p0, :cond_17

    invoke-static {v3}, Lk7/a;->a(I)I

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4b

    :cond_17
    const/4 p0, 0x1

    ushr-long v4, v0, p0

    int-to-long v6, v3

    div-long/2addr v4, v6

    shl-long/2addr v4, p0

    mul-long v8, v4, v6

    sub-long/2addr v0, v8

    cmp-long p0, v0, v6

    if-ltz p0, :cond_28

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :cond_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lk7/a;->a(I)I

    invoke-static {v4, v5, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lk7/a;->a(I)I

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4b
    return-object p0
.end method
