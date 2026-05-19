.class public final Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager$Companion;
    }
.end annotation


# static fields
.field public static final BACK_UP_INSTALLED_APPS:Ljava/lang/String; = "back_up_installed_default_apps"

.field public static final BACK_UP_IS_HAS_SUPER_LOCK_FUNCTION:Ljava/lang/String; = "back_up_is_has_super_lock_function"

.field public static final BACK_UP_LOCK_APPS:Ljava/lang/String; = "back_up_lock_apps"

.field public static final Companion:Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final instance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private installedAppsOfBackup:Ljava/lang/String;

.field private isHasSuperLockFunctionOfBackup:Ljava/lang/Boolean;

.field private isMarkComplete:Z

.field private isRestoreComplete:Z

.field private isRestoring:Z

.field private lockAppsOfBackup:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager$Companion;

    sget-object v0, Lkotlin/a;->a:Lkotlin/a;

    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager$Companion$instance$2;->INSTANCE:Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager$Companion$instance$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->instance$delegate:Lh4/f;

    const-string v0, "Lock-OplusLockBackupRestoreManager"

    sput-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->instance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object v0

    return-object v0
.end method

.method private final tryMarkLockUpgradeTag()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "tryMarkLockUpgradeTag"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isRestoring:Z

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isRestoreComplete:Z

    if-nez v0, :cond_17

    return-void

    :cond_17
    iget-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isMarkComplete:Z

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isHasSuperLockFunctionOfBackup:Ljava/lang/Boolean;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "DATA_RESTORE_UPGRADE_SUPER_LOCK"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/applock/LockUpgradeReason;->DATA_RESTORE_UPGRADE:Lcom/oplus/quickstep/applock/LockUpgradeReason;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->markLockUpgrade(Lcom/oplus/quickstep/applock/LockUpgradeReason;)V

    :cond_3e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isMarkComplete:Z

    :cond_41
    return-void
.end method

.method private final tryRestoreLockAppsData()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "tryRestoreLockAppsData"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isRestoring:Z

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isRestoreComplete:Z

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->lockAppsOfBackup:Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->installedAppsOfBackup:Ljava/lang/String;

    if-eqz v1, :cond_2b

    sget-object v2, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v2}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->restoreLockAppsData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isRestoreComplete:Z

    :cond_2b
    return-void
.end method


# virtual methods
.method public final endRestore()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isHasSuperLockFunctionOfBackup:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->lockAppsOfBackup:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->installedAppsOfBackup:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isRestoring:Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isRestoreComplete:Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isMarkComplete:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v0, "endRestore"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public final getInstalledAppsOfJSON()Ljava/lang/String;
    .registers 3

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/util/PackageUtils$Companion;->getInstalledApp(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(PackageUti…ication.getAppContext()))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLockAppsOfJSON()Ljava/lang/String;
    .registers 2

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getLockAppOfList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(OplusLockM…tance.getLockAppOfList())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final restoreInstalledApps(Ljava/lang/String;)V
    .registers 4

    const-string v0, "installedAppsOfBackup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreInstalledApps: "

    invoke-static {v1, p1, v0}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iput-object p1, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->installedAppsOfBackup:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->tryRestoreLockAppsData()V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->tryMarkLockUpgradeTag()V

    return-void
.end method

.method public final restoreIsHasSuperLockFunction(Z)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreIsHasSuperLockFunction: "

    invoke-static {v1, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isHasSuperLockFunctionOfBackup:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->tryMarkLockUpgradeTag()V

    return-void
.end method

.method public final restoreLockApps(Ljava/lang/String;)V
    .registers 4

    const-string v0, "lockedAppsOfBackup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreLockApps: "

    invoke-static {v1, p1, v0}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iput-object p1, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->lockAppsOfBackup:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->tryRestoreLockAppsData()V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->tryMarkLockUpgradeTag()V

    return-void
.end method

.method public final startRestore()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "startRestore"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->isRestoring:Z

    return-void
.end method
