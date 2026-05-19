.class public Lio/branch/search/i4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/w3;


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "unified_virtual_requests"
.end annotation


# static fields
.field public static f:Ljava/lang/String; = "`request_id` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `request_type` TEXT NOT NULL, `query` TEXT, `normalized_query` TEXT, PRIMARY KEY(`request_id`)"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "request_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field public final b:J
    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "timestamp"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "request_type"
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "query"
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "normalized_query"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/i4;->a:Ljava/lang/String;

    iput-wide p2, p0, Lio/branch/search/i4;->b:J

    iput-object p4, p0, Lio/branch/search/i4;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/i4;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/branch/search/i4;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/t3;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lio/branch/search/t3;->i:Lio/branch/search/t3;

    return-object p0
.end method

.method public a(Landroid/content/ContentValues;)V
    .registers 4
    .param p1  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/i4;->a:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lio/branch/search/i4;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lio/branch/search/i4;->c:Ljava/lang/String;

    const-string v1, "request_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/i4;->d:Ljava/lang/String;

    const-string v1, "query"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/i4;->e:Ljava/lang/String;

    const-string v0, "normalized_query"

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

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/branch/search/i4;

    if-eq v3, v2, :cond_10

    goto :goto_45

    :cond_10
    check-cast p1, Lio/branch/search/i4;

    iget-wide v2, p0, Lio/branch/search/i4;->b:J

    iget-wide v4, p1, Lio/branch/search/i4;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    iget-object v2, p0, Lio/branch/search/i4;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/i4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lio/branch/search/i4;->c:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/i4;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lio/branch/search/i4;->d:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/i4;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object p0, p0, Lio/branch/search/i4;->e:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/i4;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    goto :goto_44

    :cond_43
    move v0, v1

    :goto_44
    return v0

    :cond_45
    :goto_45
    return v1
.end method
