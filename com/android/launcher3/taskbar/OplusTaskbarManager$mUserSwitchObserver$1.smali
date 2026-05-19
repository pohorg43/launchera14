.class public final Lcom/android/launcher3/taskbar/OplusTaskbarManager$mUserSwitchObserver$1;
.super Landroid/app/UserSwitchObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarManager;-><init>(Lcom/android/quickstep/TouchInteractionService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager$mUserSwitchObserver$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/OplusTaskbarManager;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarManager$mUserSwitchObserver$1;->onUserSwitching$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarManager;I)V

    return-void
.end method

.method private static final onUserSwitching$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarManager;I)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserSwitching["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->destroyExistingTaskbar(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/UserSwitchObserver;->onForegroundProfileSwitch(I)V

    const-string/jumbo p0, "onForegroundProfileSwitch newProfileId: "

    const-string v0, "TaskbarManager"

    invoke-static {p0, p1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/UserSwitchObserver;->onUserSwitchComplete(I)V

    const-string/jumbo p0, "onUserSwitchComplete newUserId: "

    const-string v0, "TaskbarManager"

    invoke-static {p0, p1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 4

    const-string/jumbo v0, "reply"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/app/UserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUserSwitching newUserId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TaskbarManager"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    if-eq p1, p2, :cond_32

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager$mUserSwitchObserver$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    new-instance v0, Landroidx/core/content/res/c;

    invoke-direct {v0, p0, p1}, Landroidx/core/content/res/c;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarManager;I)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_32
    return-void
.end method
