.class public final Lcom/android/keyguardservice/FastUnlockManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;,
        Lcom/android/keyguardservice/FastUnlockManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

.field private static final SKIP_SPEED_UNLOCK:Ljava/lang/String; = "skip_speed_unlock"

.field private static final TAG:Ljava/lang/String; = "FastUnlockManager"


# instance fields
.field private mIgnoreSkipByLauncher:Z

.field private final mKeyGuardDismissedServiceConnection:Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;

.field private mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mNeedSendLockMessage:Z

.field private mSkipFastUnlockByLauncher:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/keyguardservice/FastUnlockManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguardservice/FastUnlockManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/keyguardservice/FastUnlockManager;->Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 6

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance p1, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;

    invoke-direct {p1, p0}, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;-><init>(Lcom/android/keyguardservice/FastUnlockManager;)V

    iput-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceConnection:Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.KeyGuardDismissedService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    const-class v3, Lcom/android/keyguardservice/KeyGuardDismissedService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static final synthetic access$getMNeedSendLockMessage$p(Lcom/android/keyguardservice/FastUnlockManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mNeedSendLockMessage:Z

    return p0
.end method

.method public static final synthetic access$notifyKeyGuardDismissedServiceLauncherOnStop(Lcom/android/keyguardservice/FastUnlockManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguardservice/FastUnlockManager;->notifyKeyGuardDismissedServiceLauncherOnStop()V

    return-void
.end method

.method public static final synthetic access$setMKeyGuardDismissedServiceMessenger$p(Lcom/android/keyguardservice/FastUnlockManager;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public static final synthetic access$setMNeedSendLockMessage$p(Lcom/android/keyguardservice/FastUnlockManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mNeedSendLockMessage:Z

    return-void
.end method

.method public static final synthetic access$skipFastUnlockIfNeeded(Lcom/android/keyguardservice/FastUnlockManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguardservice/FastUnlockManager;->skipFastUnlockIfNeeded()V

    return-void
.end method

.method private final notifyKeyGuardDismissedServiceLauncherOnStop()V
    .registers 5

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isUnLockAnimDisable()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->resetFinalScroll()V

    :cond_1b
    return-void

    :cond_1c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-ne v1, v3, :cond_38

    move v1, v3

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    if-eqz v1, :cond_43

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_74

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_74

    :cond_43
    iput-boolean v3, p0, Lcom/android/keyguardservice/FastUnlockManager;->mNeedSendLockMessage:Z

    const-string/jumbo v0, "notifyKeyGuardDismissedServiceLauncherOnStop : binder is not alive , messenger is null ? "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_52

    move v1, v3

    goto :goto_53

    :cond_52
    move v1, v2

    :goto_53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", binder is null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_64

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_65

    :cond_64
    const/4 p0, 0x0

    :goto_65
    if-nez p0, :cond_68

    move v2, v3

    :cond_68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FastUnlockManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    :goto_74
    return-void
.end method

.method private final notifyKeyGuardDismissedServiceUnlock()V
    .registers 3

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isUnLockAnimDisable()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_28

    const-string v0, "FastUnlockManager"

    const-string/jumbo v1, "notifyKeyGuardDismissedServiceUnlock : mKeyGuardDismissedServiceMessenger is null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mNeedSendLockMessage:Z

    return-void
.end method

.method public static final notifySkipFastUnlock(Landroid/content/Context;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/keyguardservice/FastUnlockManager;->Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/keyguardservice/FastUnlockManager$Companion;->notifySkipFastUnlock(Landroid/content/Context;Z)V

    return-void
.end method

.method private final skipFastUnlockIfNeeded()V
    .registers 4

    const-string/jumbo v0, "skipFastUnlockIfNeeded, mIgnoreSkipByLauncher = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mIgnoreSkipByLauncher:Z

    const-string v2, "FastUnlockManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mIgnoreSkipByLauncher:Z

    if-eqz v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_27
    iget-object v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_39

    :cond_2f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mSkipFastUnlockByLauncher:Z

    sget-object v1, Lcom/android/keyguardservice/FastUnlockManager;->Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, p0, v0}, Lcom/android/keyguardservice/FastUnlockManager$Companion;->notifySkipFastUnlock(Landroid/content/Context;Z)V

    :cond_39
    return-void
.end method


# virtual methods
.method public final onLauncherDestroy()V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceConnection:Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/android/keyguardservice/FastUnlockManager;->Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

    iget-object v1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguardservice/FastUnlockManager$Companion;->notifySkipFastUnlock(Landroid/content/Context;Z)V

    iput-boolean v2, p0, Lcom/android/keyguardservice/FastUnlockManager;->mNeedSendLockMessage:Z

    return-void
.end method

.method public final onLauncherOnStop()V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguardservice/FastUnlockManager;->skipFastUnlockIfNeeded()V

    invoke-direct {p0}, Lcom/android/keyguardservice/FastUnlockManager;->notifyKeyGuardDismissedServiceLauncherOnStop()V

    return-void
.end method

.method public final onLauncherResume()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mSkipFastUnlockByLauncher:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iput-boolean v1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mSkipFastUnlockByLauncher:Z

    sget-object v0, Lcom/android/keyguardservice/FastUnlockManager;->Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

    iget-object v2, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguardservice/FastUnlockManager$Companion;->notifySkipFastUnlock(Landroid/content/Context;Z)V

    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/keyguardservice/FastUnlockManager;->setIgnoreSkipByLauncher(Z)V

    return-void
.end method

.method public final onScreenOffReceiver()V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguardservice/FastUnlockManager;->skipFastUnlockIfNeeded()V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "onWindowFocusChanged hasFocus = "

    const-string v1, "FastUnlockManager"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_e
    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcom/android/keyguardservice/FastUnlockManager;->notifyKeyGuardDismissedServiceUnlock()V

    :cond_13
    return-void
.end method

.method public final setIgnoreSkipByLauncher(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mIgnoreSkipByLauncher:Z

    return-void
.end method
