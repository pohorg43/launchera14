.class public Ly4/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_52

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p5, v1

    if-eqz v1, :cond_4a

    iput-wide p1, p0, Ly4/e;->a:J

    if-lez v0, :cond_27

    cmp-long v0, p1, p3

    if-ltz v0, :cond_18

    goto :goto_3d

    :cond_18
    invoke-static {p3, p4, p5, p6}, Lp4/c;->c(JJ)J

    move-result-wide v0

    invoke-static {p1, p2, p5, p6}, Lp4/c;->c(JJ)J

    move-result-wide p1

    sub-long/2addr v0, p1

    invoke-static {v0, v1, p5, p6}, Lp4/c;->c(JJ)J

    move-result-wide p1

    sub-long/2addr p3, p1

    goto :goto_3d

    :cond_27
    if-gez v0, :cond_42

    cmp-long v0, p1, p3

    if-gtz v0, :cond_2e

    goto :goto_3d

    :cond_2e
    neg-long v0, p5

    invoke-static {p1, p2, v0, v1}, Lp4/c;->c(JJ)J

    move-result-wide p1

    invoke-static {p3, p4, v0, v1}, Lp4/c;->c(JJ)J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-static {p1, p2, v0, v1}, Lp4/c;->c(JJ)J

    move-result-wide p1

    add-long/2addr p3, p1

    :goto_3d
    iput-wide p3, p0, Ly4/e;->b:J

    iput-wide p5, p0, Ly4/e;->c:J

    return-void

    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be greater than Long.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be non-zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 9

    new-instance v7, Ly4/f;

    iget-wide v1, p0, Ly4/e;->a:J

    iget-wide v3, p0, Ly4/e;->b:J

    iget-wide v5, p0, Ly4/e;->c:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ly4/f;-><init>(JJJ)V

    return-object v7
.end method
