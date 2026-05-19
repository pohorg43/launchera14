.class Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;Landroidx/room/RoomDatabase;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl$1;->this$0:Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;)V
    .registers 5

    invoke-virtual {p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_b

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_12

    :cond_b
    invoke-virtual {p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_12
    invoke-virtual {p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getActivityName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_1d

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_24

    :cond_1d
    invoke-virtual {p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getActivityName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_24
    const/4 p0, 0x3

    invoke-virtual {p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getSelfDisplayTimes()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    if-nez p0, :cond_38

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3f

    :cond_38
    invoke-virtual {p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3f
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 1

    const-string p0, "INSERT OR REPLACE INTO `taskbar_compatible_apps` (`packageName`,`activityName`,`selfDisplayTimes`,`id`) VALUES (?,?,?,?)"

    return-object p0
.end method
