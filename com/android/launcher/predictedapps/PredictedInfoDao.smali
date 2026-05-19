.class public interface abstract Lcom/android/launcher/predictedapps/PredictedInfoDao;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract deletePackageWithUser(ILjava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM predicted_info WHERE user= :userId  AND component LIKE :packageNamePrefix || \'%\'"
    .end annotation
.end method

.method public abstract deleteUser(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM predicted_info WHERE user= :userId"
    .end annotation
.end method

.method public abstract getDisabledCursor()Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM predicted_info WHERE disable = 1 ORDER BY disable_time"
    .end annotation
.end method

.method public abstract getEnabledCursor()Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM predicted_info WHERE disable = 0 ORDER BY launch_count DESC"
    .end annotation
.end method

.method public abstract getIgnoredCount()I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(*) FROM predicted_info WHERE disable = 1 "
    .end annotation
.end method

.method public abstract getInfoByUser(Ljava/lang/String;I)Lcom/android/launcher/predictedapps/PredictedInfo;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM predicted_info WHERE component= :packageName AND user= :userId LIMIT 1"
    .end annotation
.end method

.method public abstract insert(Lcom/android/launcher/predictedapps/PredictedInfo;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract update(Lcom/android/launcher/predictedapps/PredictedInfo;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
