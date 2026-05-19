.class public final Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static updateAllApps(Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;Ljava/util/List;)V
    .registers 3
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;->deleteAllApps()V

    invoke-interface {p0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;->insertALlApps(Ljava/util/List;)Ljava/util/List;

    return-void
.end method
