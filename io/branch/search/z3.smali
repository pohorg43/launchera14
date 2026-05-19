.class public Lio/branch/search/z3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/w3;


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "tracking_status_history"
.end annotation


# instance fields
.field public a:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "status"
    .end annotation
.end field

.field public b:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "timestamp"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/branch/search/z3;->a:I

    iput-wide p2, p0, Lio/branch/search/z3;->b:J

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/t3;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lio/branch/search/t3;->l:Lio/branch/search/t3;

    return-object p0
.end method

.method public a(Landroid/content/ContentValues;)V
    .registers 4

    iget v0, p0, Lio/branch/search/z3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v0, p0, Lio/branch/search/z3;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "timestamp"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public b()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;
    .registers 2

    iget p0, p0, Lio/branch/search/z3;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    sget-object p0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    goto :goto_a

    :cond_8
    sget-object p0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_OUT:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    :goto_a
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/branch/search/z3;

    if-eq v3, v2, :cond_10

    goto :goto_23

    :cond_10
    check-cast p1, Lio/branch/search/z3;

    iget-wide v2, p0, Lio/branch/search/z3;->b:J

    iget-wide v4, p1, Lio/branch/search/z3;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    iget p0, p0, Lio/branch/search/z3;->a:I

    iget p1, p1, Lio/branch/search/z3;->a:I

    if-ne p0, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "HistoricalTrackingStatus{status="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/branch/search/z3;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/z3;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
