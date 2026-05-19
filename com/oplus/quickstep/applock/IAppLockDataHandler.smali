.class public interface abstract Lcom/oplus/quickstep/applock/IAppLockDataHandler;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract clearAppLockScenesInfo(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lcom/oplus/quickstep/utils/WriteData;
    .end annotation
.end method

.method public abstract getLockApps()Ljava/util/List;
    .annotation runtime Lcom/oplus/quickstep/utils/ReadData;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuperLockingApps()Ljava/util/List;
    .annotation runtime Lcom/oplus/quickstep/utils/ReadData;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSuperLockingApp()Z
    .annotation runtime Lcom/oplus/quickstep/utils/ReadData;
    .end annotation
.end method

.method public abstract initData()V
    .annotation runtime Lcom/oplus/quickstep/utils/WriteData;
    .end annotation
.end method

.method public abstract isAllowSuperLock(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Lcom/oplus/quickstep/utils/ReadData;
    .end annotation
.end method

.method public abstract isExceededLockLimit(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Lcom/oplus/quickstep/utils/ReadData;
    .end annotation
.end method

.method public abstract isExperiencedLockUpgradeSuperLock(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Lcom/oplus/quickstep/utils/ReadData;
    .end annotation
.end method

.method public abstract isForbidLock(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Lcom/oplus/quickstep/utils/ReadData;
    .end annotation
.end method

.method public abstract isLocking(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Lcom/oplus/quickstep/utils/ReadData;
    .end annotation
.end method

.method public abstract isSuperLocking(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Lcom/oplus/quickstep/utils/ReadData;
    .end annotation
.end method

.method public abstract lockApps(Ljava/util/Collection;)V
    .annotation runtime Lcom/oplus/quickstep/utils/WriteData;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract markLockUpgrade(Lcom/oplus/quickstep/applock/LockUpgradeReason;)V
    .annotation runtime Lcom/oplus/quickstep/utils/WriteData;
    .end annotation
.end method

.method public abstract restoreBackupLockApps(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lcom/oplus/quickstep/utils/WriteData;
    .end annotation
.end method

.method public abstract setIsVirtualizeLockData(Z)V
    .annotation runtime Lcom/oplus/quickstep/utils/WriteData;
    .end annotation
.end method

.method public abstract unLockApps(ZZLjava/util/Collection;)V
    .annotation runtime Lcom/oplus/quickstep/utils/WriteData;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Collection<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract updateAllowDefaultLockApps(Ljava/util/List;)V
    .annotation runtime Lcom/oplus/quickstep/utils/WriteData;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAllowSuperLockApps(Ljava/util/List;)V
    .annotation runtime Lcom/oplus/quickstep/utils/WriteData;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateForbidLockApps(Ljava/util/List;)V
    .annotation runtime Lcom/oplus/quickstep/utils/WriteData;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateNoDefaultLockAppLimit(I)V
    .annotation runtime Lcom/oplus/quickstep/utils/WriteData;
    .end annotation
.end method
