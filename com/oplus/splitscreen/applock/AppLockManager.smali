.class public Lcom/oplus/splitscreen/applock/AppLockManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTIVITY_NAME_SAFE_CONTROL:Ljava/lang/String; = "com.oplus.safecenter/com.oplus.safecenter.privacy.view.password.AppUnlockPasswordActivity"

.field public static final DEFAULT_SPLIT_RATIO:F = 0.0f

.field public static final PACKAGE_SAFECONTROL_APP:Ljava/lang/String; = "com.oplus.safecenter"

.field public static PENDING_ENTER_KEY_FROM_TYPE:Ljava/lang/String; = "enterSplitType"

.field public static PENDING_ENTER_KEY_MAININTENT:Ljava/lang/String; = "mainIntent"

.field public static PENDING_ENTER_KEY_MAINTASKID:Ljava/lang/String; = "mainTaskId"

.field public static PENDING_ENTER_KEY_MAINUSER:Ljava/lang/String; = "mainUser"

.field public static PENDING_ENTER_KEY_SIDEINTENT:Ljava/lang/String; = "sideIntent"

.field public static PENDING_ENTER_KEY_SIDEPOSITION:Ljava/lang/String; = "sidePosition"

.field public static PENDING_ENTER_KEY_SIDETASKID:Ljava/lang/String; = "sideTaskId"

.field public static PENDING_ENTER_KEY_SIDEUSER:Ljava/lang/String; = "sideUser"

.field public static PENDING_ENTER_KEY_SPLITTATIO:Ljava/lang/String; = "splitRatio"

.field public static PENDING_ENTER_KEY_TO_TYPE:Ljava/lang/String; = "toSplitType"

.field public static final PENDING_TO_MINIZIED:I = 0x0

.field public static final PENDING_TO_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppLockManager"

.field private static volatile sInstance:Lcom/oplus/splitscreen/applock/AppLockManager;


# instance fields
.field private mCurrentStartInfo:Lcom/oplus/splitscreen/applock/PendingStartInfo;

.field private mIsSafeControlAppFinish:Z

.field private mStartFromSafeControl:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mIsSafeControlAppFinish:Z

    return-void
.end method

.method public static createExtraBundle(Lcom/oplus/splitscreen/applock/PendingStartInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_8

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    const-string v1, "AppLockManager"

    if-eqz v0, :cond_1b

    const-string p0, "createExtraBundle is table device!"

    invoke-static {v1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1b
    invoke-static {p0}, Lcom/oplus/splitscreen/applock/AppLockManager;->hasEncryptApp(Lcom/oplus/splitscreen/applock/PendingStartInfo;)Z

    move-result v0

    if-nez v0, :cond_22

    return-object p1

    :cond_22
    invoke-static {p0}, Lcom/oplus/splitscreen/applock/AppLockManager;->hasEncryptNoPassApp(Lcom/oplus/splitscreen/applock/PendingStartInfo;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string p0, "createExtraBundle isEncryptAndNoPassApp has return false!"

    invoke-static {v1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createExtraBundle info=\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_FROM_TYPE:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->enterSplitType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_TO_TYPE:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_MAININTENT:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_SIDEINTENT:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_SIDEPOSITION:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sidePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_SPLITTATIO:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->splitRatio:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_MAINUSER:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_SIDEUSER:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_MAINTASKID:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainTaskId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_SIDETASKID:Ljava/lang/String;

    iget p0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideTaskId:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method private static getAppPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;
    .registers 2

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->sInstance:Lcom/oplus/splitscreen/applock/AppLockManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/splitscreen/applock/AppLockManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->sInstance:Lcom/oplus/splitscreen/applock/AppLockManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/splitscreen/applock/AppLockManager;

    invoke-direct {v1}, Lcom/oplus/splitscreen/applock/AppLockManager;-><init>()V

    sput-object v1, Lcom/oplus/splitscreen/applock/AppLockManager;->sInstance:Lcom/oplus/splitscreen/applock/AppLockManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->sInstance:Lcom/oplus/splitscreen/applock/AppLockManager;

    return-object v0
.end method

.method private static hasEncryptApp(Lcom/oplus/splitscreen/applock/PendingStartInfo;)Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v3

    invoke-static {v0}, Lcom/oplus/splitscreen/applock/AppLockManager;->getAppPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    invoke-virtual {v3, v0, v4}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptedPackage(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    if-eqz v1, :cond_28

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v3

    invoke-static {v1}, Lcom/oplus/splitscreen/applock/AppLockManager;->getAppPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    invoke-virtual {v3, v1, p0}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptedPackage(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_29

    :cond_28
    move p0, v2

    :goto_29
    if-nez v0, :cond_2d

    if-eqz p0, :cond_2e

    :cond_2d
    const/4 v2, 0x1

    :cond_2e
    return v2
.end method

.method private static hasEncryptNoPassApp(Lcom/oplus/splitscreen/applock/PendingStartInfo;)Z
    .registers 7

    iget-object v0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v4

    invoke-static {v0}, Lcom/oplus/splitscreen/applock/AppLockManager;->getAppPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget v5, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    invoke-virtual {v4, v0, v5}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptPass(Ljava/lang/String;I)Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_19

    :cond_18
    move v0, v3

    :goto_19
    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v4

    invoke-static {v1}, Lcom/oplus/splitscreen/applock/AppLockManager;->getAppPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    invoke-virtual {v4, v1, p0}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptPass(Ljava/lang/String;I)Z

    move-result p0

    xor-int/2addr p0, v2

    goto :goto_2c

    :cond_2b
    move p0, v3

    :goto_2c
    if-nez v0, :cond_32

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    move v2, v3

    :cond_32
    :goto_32
    return v2
.end method


# virtual methods
.method public getCurrentStartInfo()Lcom/oplus/splitscreen/applock/PendingStartInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mCurrentStartInfo:Lcom/oplus/splitscreen/applock/PendingStartInfo;

    return-object p0
.end method

.method public getSplitRatio()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mCurrentStartInfo:Lcom/oplus/splitscreen/applock/PendingStartInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->splitRatio:F

    return p0
.end method

.method public getStartFromSafeControl()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mStartFromSafeControl:Z

    return p0
.end method

.method public notifySafeAppFinishIfneed(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oplus.safecenter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/applock/AppLockManager;->setSafeAppFinishIfneed(Z)V

    :cond_12
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/applock/AppLockManager;->setSafeAppFinishIfneed(Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/applock/AppLockManager;->setStartFromSafeControl(Z)V

    return-void
.end method

.method public setSafeAppFinishIfneed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mIsSafeControlAppFinish:Z

    return-void
.end method

.method public setStartFromSafeControl(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mStartFromSafeControl:Z

    const-string p1, "setStartFromSafeControl mStartFromSafeControl="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mStartFromSafeControl:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppLockManager"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mStartFromSafeControl:Z

    if-nez p1, :cond_22

    new-instance p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;

    invoke-direct {p1}, Lcom/oplus/splitscreen/applock/PendingStartInfo;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mCurrentStartInfo:Lcom/oplus/splitscreen/applock/PendingStartInfo;

    :cond_22
    return-void
.end method

.method public shouldShowDividerVisibility()Z
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mStartFromSafeControl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mIsSafeControlAppFinish:Z

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mCurrentStartInfo:Lcom/oplus/splitscreen/applock/PendingStartInfo;

    if-eqz p0, :cond_12

    iget p0, p0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    if-ne p0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public shouldShowToast(Ljava/lang/String;Z)Z
    .registers 4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    return v0

    :cond_c
    const-string p0, "com.oplus.safecenter"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    if-eqz p2, :cond_17

    goto :goto_18

    :cond_17
    return v0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public updateStartFromSafeControl(Landroid/os/Bundle;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/oplus/splitscreen/applock/AppLockManager;->reset()V

    const-string v0, "androidx.activity.extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_36

    sget-object v0, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_FROM_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_36

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/applock/AppLockManager;->setStartFromSafeControl(Z)V

    invoke-static {p1}, Lcom/oplus/splitscreen/applock/PendingStartInfo;->fromBundle(Landroid/os/Bundle;)Lcom/oplus/splitscreen/applock/PendingStartInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mCurrentStartInfo:Lcom/oplus/splitscreen/applock/PendingStartInfo;

    const-string p1, "updateStartFromSafeControl mCurrentStartInfo="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/splitscreen/applock/AppLockManager;->mCurrentStartInfo:Lcom/oplus/splitscreen/applock/PendingStartInfo;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLockManager"

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/applock/AppLockManager;->setStartFromSafeControl(Z)V

    return-void
.end method
