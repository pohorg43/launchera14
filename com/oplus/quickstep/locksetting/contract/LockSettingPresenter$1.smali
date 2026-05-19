.class Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    const-string p1, "LockSettingPresenter"

    :try_start_2
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    sget-object v1, Lcom/android/common/observer/LowPowerObserver;->instance:Lcom/android/common/observer/LowPowerObserver;

    invoke-virtual {v1}, Lcom/android/common/observer/LowPowerObserver;->isOpen()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->access$002(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;Z)Z

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    invoke-virtual {v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->updateInterestedApps()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: mIsPowerSavingModleOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->access$000(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception p0

    const-string v0, "onChange error: "

    invoke-static {v0, p0, p1}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_33
    return-void
.end method
