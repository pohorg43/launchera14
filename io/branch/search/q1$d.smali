.class public Lio/branch/search/q1$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field public c:J

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final synthetic f:Lio/branch/search/q1;


# direct methods
.method public constructor <init>(Lio/branch/search/q1;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6
    .param p1  # Lio/branch/search/q1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lio/branch/search/q1$d;->f:Lio/branch/search/q1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/search/q1$d;->a:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/branch/search/q1$d;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/branch/search/q1$d;->c:J

    iput-object p2, p0, Lio/branch/search/q1$d;->d:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lio/branch/search/q1$d;->e:I

    return-void
.end method

.method public static synthetic a(Lio/branch/search/q1$d;)Z
    .registers 1

    iget-boolean p0, p0, Lio/branch/search/q1$d;->b:Z

    return p0
.end method

.method public static synthetic b(Lio/branch/search/q1$d;)I
    .registers 1

    iget p0, p0, Lio/branch/search/q1$d;->e:I

    return p0
.end method

.method public static synthetic c(Lio/branch/search/q1$d;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/q1$d;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(J)J
    .registers 7

    iget-wide v0, p0, Lio/branch/search/q1$d;->c:J

    iget-boolean v2, p0, Lio/branch/search/q1$d;->b:Z

    if-eqz v2, :cond_a

    iget-wide v2, p0, Lio/branch/search/q1$d;->a:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_a
    return-wide v0
.end method

.method public a(Z)V
    .registers 8

    iget-boolean v0, p0, Lio/branch/search/q1$d;->b:Z

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lio/branch/search/q1$d;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/branch/search/q1$d;->a:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/branch/search/q1$d;->c:J

    :cond_10
    iget-boolean v0, p0, Lio/branch/search/q1$d;->b:Z

    if-eq v0, p1, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/search/q1$d;->a:J

    :cond_1a
    iput-boolean p1, p0, Lio/branch/search/q1$d;->b:Z

    return-void
.end method

.method public b(J)V
    .registers 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/branch/search/q1$d;->c:J

    iput-wide p1, p0, Lio/branch/search/q1$d;->a:J

    return-void
.end method
