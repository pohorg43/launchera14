.class public Lio/branch/search/h4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/w3;


# annotations
.annotation build Landroidx/room/Entity;
    foreignKeys = {
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "request_id"
            }
            entity = Lio/branch/search/i4;
            onDelete = 0x5
            parentColumns = {
                "request_id"
            }
        .end subannotation
    }
    primaryKeys = {
        "request_id",
        "result_id",
        "start_time",
        "duration"
    }
    tableName = "unified_impressions"
.end annotation


# static fields
.field public static g:Ljava/lang/String; = "`request_id` TEXT NOT NULL, `result_id` INTEGER NOT NULL, `entity_id` TEXT, `area` FLOAT NOT NULL, `start_time` INTEGER NOT NULL, `duration` INTEGER NOT NULL,PRIMARY KEY(`request_id`, `result_id`, `start_time`, `duration`)"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "request_id"
    .end annotation
.end field

.field public final b:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "result_id"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "entity_id"
    .end annotation
.end field

.field public final d:F
    .annotation build Landroidx/room/ColumnInfo;
        name = "area"
    .end annotation
.end field

.field public final e:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "start_time"
    .end annotation
.end field

.field public final f:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "duration"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;FJJ)V
    .registers 9
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/h4;->a:Ljava/lang/String;

    iput p2, p0, Lio/branch/search/h4;->b:I

    iput-object p3, p0, Lio/branch/search/h4;->c:Ljava/lang/String;

    iput p4, p0, Lio/branch/search/h4;->d:F

    iput-wide p5, p0, Lio/branch/search/h4;->e:J

    iput-wide p7, p0, Lio/branch/search/h4;->f:J

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/t3;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lio/branch/search/t3;->j:Lio/branch/search/t3;

    return-object p0
.end method

.method public a(Landroid/content/ContentValues;)V
    .registers 4
    .param p1  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/h4;->a:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/branch/search/h4;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "result_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lio/branch/search/h4;->c:Ljava/lang/String;

    const-string v1, "entity_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/branch/search/h4;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "area"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-wide v0, p0, Lio/branch/search/h4;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "start_time"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/h4;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "duration"

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

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/branch/search/h4;

    if-eq v3, v2, :cond_10

    goto :goto_49

    :cond_10
    check-cast p1, Lio/branch/search/h4;

    iget v2, p0, Lio/branch/search/h4;->b:I

    iget v3, p1, Lio/branch/search/h4;->b:I

    if-ne v2, v3, :cond_47

    iget v2, p1, Lio/branch/search/h4;->d:F

    iget v3, p0, Lio/branch/search/h4;->d:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_47

    iget-wide v2, p0, Lio/branch/search/h4;->e:J

    iget-wide v4, p1, Lio/branch/search/h4;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    iget-wide v2, p0, Lio/branch/search/h4;->f:J

    iget-wide v4, p1, Lio/branch/search/h4;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    iget-object v2, p0, Lio/branch/search/h4;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/h4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object p0, p0, Lio/branch/search/h4;->c:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/h4;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    goto :goto_48

    :cond_47
    move v0, v1

    :goto_48
    return v0

    :cond_49
    :goto_49
    return v1
.end method
