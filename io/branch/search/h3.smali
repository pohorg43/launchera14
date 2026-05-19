.class public Lio/branch/search/h3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/room/Entity;
    primaryKeys = {
        "date",
        "channel",
        "connection_type"
    }
    tableName = "data_usage"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "date"
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "channel"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "connection_type"
    .end annotation
.end field

.field public final d:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "usage"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/h3;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/h3;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/h3;->c:Ljava/lang/String;

    iput-wide p4, p0, Lio/branch/search/h3;->d:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lio/branch/search/h3;

    if-eqz v0, :cond_2e

    check-cast p1, Lio/branch/search/h3;

    iget-object v0, p1, Lio/branch/search/h3;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/h3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lio/branch/search/h3;->c:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/h3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lio/branch/search/h3;->b:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/h3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-wide v0, p1, Lio/branch/search/h3;->d:J

    iget-wide p0, p0, Lio/branch/search/h3;->d:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method
