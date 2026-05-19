.class public final Ly4/g;
.super Ly4/e;
.source ""

# interfaces
.implements Ly4/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly4/e;",
        "Ly4/a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Ly4/g;

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ly4/g;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 12

    const-wide/16 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Ly4/e;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public a(J)Z
    .registers 5

    iget-wide v0, p0, Ly4/e;->a:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_e

    iget-wide v0, p0, Ly4/e;->b:J

    cmp-long p0, p1, v0

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Ly4/g;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Ly4/g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ly4/g;

    invoke-virtual {v0}, Ly4/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_13
    iget-wide v0, p0, Ly4/e;->a:J

    check-cast p1, Ly4/g;

    iget-wide v2, p1, Ly4/e;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_27

    iget-wide v0, p0, Ly4/e;->b:J

    iget-wide p0, p1, Ly4/e;->b:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_27

    :cond_25
    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public getEndInclusive()Ljava/lang/Comparable;
    .registers 3

    iget-wide v0, p0, Ly4/e;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getStart()Ljava/lang/Comparable;
    .registers 3

    iget-wide v0, p0, Ly4/e;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 8

    invoke-virtual {p0}, Ly4/g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    goto :goto_1a

    :cond_8
    const/16 v0, 0x1f

    int-to-long v0, v0

    iget-wide v2, p0, Ly4/e;->a:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    mul-long/2addr v0, v2

    iget-wide v2, p0, Ly4/e;->b:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p0, v0

    :goto_1a
    return p0
.end method

.method public isEmpty()Z
    .registers 5

    iget-wide v0, p0, Ly4/e;->a:J

    iget-wide v2, p0, Ly4/e;->b:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Ly4/e;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ly4/e;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
