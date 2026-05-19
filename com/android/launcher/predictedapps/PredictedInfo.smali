.class public Lcom/android/launcher/predictedapps/PredictedInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Range"
    }
.end annotation

.annotation build Landroidx/room/Entity;
    tableName = "predicted_info"
.end annotation


# static fields
.field public static final COLUMN_COMPONENT:Ljava/lang/String; = "component"

.field public static final COLUMN_DISABLED:Ljava/lang/String; = "disable"

.field public static final COLUMN_DISABLE_TIME:Ljava/lang/String; = "disable_time"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAUNCH_COUNT:Ljava/lang/String; = "launch_count"

.field public static final COLUMN_USER:Ljava/lang/String; = "user"

.field public static final TABLE_NAME:Ljava/lang/String; = "predicted_info"


# instance fields
.field public mComponent:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "component"
    .end annotation
.end field

.field public mId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public mIgnoreTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "disable_time"
    .end annotation
.end field

.field public mIgnored:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "disable"
    .end annotation
.end field

.field public mLaunchCount:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "launch_count"
    .end annotation
.end field

.field public mUser:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mUser:I

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/android/launcher/predictedapps/PredictedInfo;
    .registers 5

    new-instance v0, Lcom/android/launcher/predictedapps/PredictedInfo;

    invoke-direct {v0}, Lcom/android/launcher/predictedapps/PredictedInfo;-><init>()V

    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mId:I

    const-string v1, "component"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mComponent:Ljava/lang/String;

    const-string v1, "launch_count"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mLaunchCount:I

    const-string v1, "disable"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    iput-boolean v2, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnored:Z

    const-string v1, "disable_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnoreTime:J

    const-string/jumbo v1, "user"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5b

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    iput p0, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mUser:I

    :cond_5b
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "PredictedInfo{mComponent=\'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mComponent:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mLaunchCount="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mLaunchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIgnored="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnored:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIgnoreTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnoreTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mUser:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
