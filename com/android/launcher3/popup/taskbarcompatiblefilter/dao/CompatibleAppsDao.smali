.class public interface abstract Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract deleteAllApps()V
    .annotation build Landroidx/room/Query;
        value = "delete from taskbar_compatible_apps "
    .end annotation
.end method

.method public abstract insertALlApps(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAll()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM taskbar_compatible_apps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateAllApps(Ljava/util/List;)V
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateApp(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "update taskbar_compatible_apps set selfDisplayTimes = :singleAppTotalDisplayTimes where packageName == :packageName "
    .end annotation
.end method
