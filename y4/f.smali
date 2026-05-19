.class public final Ly4/f;
.super Li4/g0;
.source ""


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 9

    invoke-direct {p0}, Li4/g0;-><init>()V

    iput-wide p5, p0, Ly4/f;->a:J

    iput-wide p3, p0, Ly4/f;->b:J

    const-wide/16 v0, 0x0

    cmp-long p5, p5, v0

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-lez p5, :cond_14

    cmp-long p5, p1, p3

    if-gtz p5, :cond_19

    goto :goto_1a

    :cond_14
    cmp-long p5, p1, p3

    if-ltz p5, :cond_19

    goto :goto_1a

    :cond_19
    move p6, v0

    :goto_1a
    iput-boolean p6, p0, Ly4/f;->c:Z

    if-eqz p6, :cond_1f

    goto :goto_20

    :cond_1f
    move-wide p1, p3

    :goto_20
    iput-wide p1, p0, Ly4/f;->d:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 1

    iget-boolean p0, p0, Ly4/f;->c:Z

    return p0
.end method

.method public nextLong()J
    .registers 5

    iget-wide v0, p0, Ly4/f;->d:J

    iget-wide v2, p0, Ly4/f;->b:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_16

    iget-boolean v2, p0, Ly4/f;->c:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    iput-boolean v2, p0, Ly4/f;->c:Z

    goto :goto_1b

    :cond_10
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_16
    iget-wide v2, p0, Ly4/f;->a:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Ly4/f;->d:J

    :goto_1b
    return-wide v0
.end method
