.class public Lio/branch/search/m4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/w3;


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "app_usage_stats"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "package_name"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field public final b:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "screen_uptime"
    .end annotation
.end field

.field public final c:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_usage_timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/m4;->a:Ljava/lang/String;

    iput-wide p2, p0, Lio/branch/search/m4;->b:J

    iput-wide p4, p0, Lio/branch/search/m4;->c:J

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/t3;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lio/branch/search/t3;->h:Lio/branch/search/t3;

    return-object p0
.end method

.method public a(Landroid/content/ContentValues;)V
    .registers 4
    .param p1  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/m4;->a:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lio/branch/search/m4;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "screen_uptime"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/m4;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "last_usage_timestamp"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/branch/search/m4;

    if-eq v3, v2, :cond_10

    goto :goto_27

    :cond_10
    check-cast p1, Lio/branch/search/m4;

    iget-wide v2, p0, Lio/branch/search/m4;->b:J

    iget-wide v4, p1, Lio/branch/search/m4;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    iget-object p0, p0, Lio/branch/search/m4;->a:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/m4;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method
