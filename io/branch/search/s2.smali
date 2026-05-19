.class public final Lio/branch/search/s2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/branch/search/s2;->a:I

    iput-wide p2, p0, Lio/branch/search/s2;->b:J

    iput-object p4, p0, Lio/branch/search/s2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/s2;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b()I
    .registers 1

    iget p0, p0, Lio/branch/search/s2;->a:I

    return p0
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lio/branch/search/s2;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-eq p0, p1, :cond_23

    instance-of v0, p1, Lio/branch/search/s2;

    if-eqz v0, :cond_21

    check-cast p1, Lio/branch/search/s2;

    iget v0, p0, Lio/branch/search/s2;->a:I

    iget v1, p1, Lio/branch/search/s2;->a:I

    if-ne v0, v1, :cond_21

    iget-wide v0, p0, Lio/branch/search/s2;->b:J

    iget-wide v2, p1, Lio/branch/search/s2;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    iget-object p0, p0, Lio/branch/search/s2;->c:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/s2;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lio/branch/search/s2;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/branch/search/s2;->b:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/s2;->c:Ljava/lang/String;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "ScheduledQueryExecutionRecord(query_id="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/branch/search/s2;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/s2;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/s2;->c:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
