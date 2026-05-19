.class public Lcom/android/launcher3/proxy/ProxyActivityStarter;
.super Landroid/app/Activity;
.source ""


# static fields
.field public static final EXTRA_PARAMS:Ljava/lang/String; = "start-activity-params"

.field private static final TAG:Ljava/lang/String; = "ProxyActivityStarter"

.field private static sTaskId:I = -0x1


# instance fields
.field private mParams:Lcom/android/launcher3/proxy/StartActivityParams;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/proxy/StartActivityParams;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher3/proxy/ProxyActivityStarter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "start-activity-params"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const p1, 0x10208000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static removeTask()Z
    .registers 4

    const-string v0, "ProxyActivityStarter"

    sget v1, Lcom/android/launcher3/proxy/ProxyActivityStarter;->sTaskId:I

    if-lez v1, :cond_49

    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher3/proxy/ProxyActivityStarter;->sTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    sget v2, Lcom/android/launcher3/proxy/ProxyActivityStarter;->sTaskId:I

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_26} :catch_27

    goto :goto_49

    :catch_27
    move-exception v1

    const-string/jumbo v2, "removeTask "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/launcher3/proxy/ProxyActivityStarter;->sTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_49
    :goto_49
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public finishForShellTransition(I)V
    .registers 4

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_1a

    const/16 v0, 0x2713

    if-eq p1, v0, :cond_10

    const/16 v0, 0x2714

    if-eq p1, v0, :cond_10

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_1a

    :cond_10
    iget-object p1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/launcher3/proxy/StartActivityParams;->deliverResult(Landroid/content/Context;ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_1a
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget v1, v0, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    if-ne p1, v1, :cond_9

    invoke-virtual {v0, p0, p2, p3}, Lcom/android/launcher3/proxy/StartActivityParams;->deliverResult(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    sput v1, Lcom/android/launcher3/proxy/ProxyActivityStarter;->sTaskId:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "start-activity-params"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/proxy/StartActivityParams;

    iput-object v1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    if-nez v1, :cond_29

    const-string p1, "ProxyActivityStarter"

    const-string v0, "Proxy activity started without params"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_29
    if-eqz p1, :cond_2c

    return-void

    :cond_2c
    :try_start_2c
    iget-object p1, v1, Lcom/android/launcher3/proxy/StartActivityParams;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_41

    iget p1, v1, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->finishForShellTransition(I)V

    iget-object p1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget-object v1, p1, Lcom/android/launcher3/proxy/StartActivityParams;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    iget-object p1, p1, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_41
    iget-object p1, v1, Lcom/android/launcher3/proxy/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    if-eqz p1, :cond_65

    iget p1, v1, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->finishForShellTransition(I)V

    iget-object p1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    iget-object v2, p1, Lcom/android/launcher3/proxy/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    iget v3, p1, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    iget-object v4, p1, Lcom/android/launcher3/proxy/StartActivityParams;->fillInIntent:Landroid/content/Intent;

    iget v5, p1, Lcom/android/launcher3/proxy/StartActivityParams;->flagsMask:I

    iget v6, p1, Lcom/android/launcher3/proxy/StartActivityParams;->flagsValues:I

    iget v7, p1, Lcom/android/launcher3/proxy/StartActivityParams;->extraFlags:I

    iget-object v8, p1, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_5e
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_5e} :catch_5f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2c .. :try_end_5e} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_5e} :catch_5f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2c .. :try_end_5e} :catch_5f

    return-void

    :catch_5f
    iget-object p1, p0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->mParams:Lcom/android/launcher3/proxy/StartActivityParams;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/launcher3/proxy/StartActivityParams;->deliverResult(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_65
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher3/proxy/ProxyActivityStarter;->sTaskId:I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
