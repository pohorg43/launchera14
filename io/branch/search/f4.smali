.class public Lio/branch/search/f4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/w3;


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "search_clicks"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "session_id"
    .end annotation
.end field

.field public final b:J
    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "timestamp"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "request_id"
    .end annotation
.end field

.field public final d:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "result_id"
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "package_name"
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "entity_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/f4;->a:Ljava/lang/String;

    iput-wide p3, p0, Lio/branch/search/f4;->b:J

    iput-object p2, p0, Lio/branch/search/f4;->c:Ljava/lang/String;

    iput p6, p0, Lio/branch/search/f4;->d:I

    iput-object p5, p0, Lio/branch/search/f4;->e:Ljava/lang/String;

    iput-object p7, p0, Lio/branch/search/f4;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/t3;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lio/branch/search/t3;->e:Lio/branch/search/t3;

    return-object p0
.end method

.method public a(Landroid/content/ContentValues;)V
    .registers 4
    .param p1  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/f4;->a:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lio/branch/search/f4;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lio/branch/search/f4;->c:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/branch/search/f4;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "result_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lio/branch/search/f4;->e:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/f4;->f:Ljava/lang/String;

    const-string v0, "entity_id"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/branch/search/f4;

    if-eq v3, v2, :cond_10

    goto :goto_4b

    :cond_10
    check-cast p1, Lio/branch/search/f4;

    iget-wide v2, p0, Lio/branch/search/f4;->b:J

    iget-wide v4, p1, Lio/branch/search/f4;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_49

    iget v2, p0, Lio/branch/search/f4;->d:I

    iget v3, p1, Lio/branch/search/f4;->d:I

    if-ne v2, v3, :cond_49

    iget-object v2, p0, Lio/branch/search/f4;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/f4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lio/branch/search/f4;->c:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/f4;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lio/branch/search/f4;->e:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/f4;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object p0, p0, Lio/branch/search/f4;->f:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/f4;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v1

    :goto_4a
    return v0

    :cond_4b
    :goto_4b
    return v1
.end method
