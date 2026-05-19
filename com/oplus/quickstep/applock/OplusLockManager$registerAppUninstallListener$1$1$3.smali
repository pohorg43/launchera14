.class public final Lcom/oplus/quickstep/applock/OplusLockManager$registerAppUninstallListener$1$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/applock/OplusLockManager;->registerAppUninstallListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/applock/OplusLockManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/applock/OplusLockManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/applock/OplusLockManager$registerAppUninstallListener$1$1$3;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiPackageAdded(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiPackageAdded("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public onMultiPackageRemoved(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiPackageRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    if-eqz p1, :cond_32

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager$registerAppUninstallListener$1$1$3;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-static {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getAppLockModel(Lcom/oplus/quickstep/applock/OplusLockManager;)Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_32

    const-string v0, "999"

    invoke-interface {p0, p1, v0}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->clearAppLockScenesInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method
