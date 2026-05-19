.class public final Lcom/android/launcher3/taskbar/ImeStateManage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/ImeStateManage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/ImeStateManage$Companion;

.field public static final FOLD_CHANGING_FOR_IME:I = 0x1

.field public static final FOLD_CHANGING_FOR_STASH_DELAY:I = 0x40

.field private static final IME_CHANGE_DELAY_ON_FOLDING:J = 0x3e8L

.field private static final IME_CHANGE_DELAY_SCREEN_ON:J = 0x5dcL

.field public static final IME_STATE_IN_EXPAND:I = 0x4

.field public static final IME_STATE_IN_FOLD:I = 0x2

.field public static final IS_IME_SHOW:I = 0x8

.field public static final SCREEN_OFF_FOR_NOT_INTERACTIVE:I = 0x20

.field public static final SCREEN_ON_FOR_STASH_DELAY:I = 0x80

.field private static final STASH_CHANGE_DELAY_ON_FOLDING:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "ImeStateManage"


# instance fields
.field private mImeFlag:I

.field private final mImeFoldChangingFlagReset:Ljava/lang/Runnable;

.field private mIsInteractive:Z

.field private final mScreenListener:Lcom/android/launcher3/taskbar/ImeStateManage$mScreenListener$1;

.field private final mStashFoldChangingFlagReset:Ljava/lang/Runnable;

.field private final mStashScreenOnFlagReset:Ljava/lang/Runnable;

.field private mWindowManagerObserver:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;

.field private pm:Landroid/os/PowerManager;

.field private final taskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

.field private final updateForImeChange:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/ImeStateManage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/ImeStateManage;->Companion:Lcom/android/launcher3/taskbar/ImeStateManage$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V
    .registers 3

    const-string/jumbo v0, "taskbarManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->taskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    new-instance p1, Lcom/android/launcher3/taskbar/p0;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/p0;-><init>(Lcom/android/launcher3/taskbar/ImeStateManage;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mImeFoldChangingFlagReset:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/model/c1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/taskbar/ImeStateManage;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mStashFoldChangingFlagReset:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/folder/t;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/launcher3/taskbar/ImeStateManage;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mStashScreenOnFlagReset:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/taskbar/ImeStateManage$mScreenListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/ImeStateManage$mScreenListener$1;-><init>(Lcom/android/launcher3/taskbar/ImeStateManage;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mScreenListener:Lcom/android/launcher3/taskbar/ImeStateManage$mScreenListener$1;

    new-instance p1, Lcom/android/launcher/guide/side/e;

    invoke-direct {p1, p0}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/launcher3/taskbar/ImeStateManage;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->updateForImeChange:Ljava/util/function/Consumer;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/ImeStateManage;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/ImeStateManage;->mImeFoldChangingFlagReset$lambda$0(Lcom/android/launcher3/taskbar/ImeStateManage;)V

    return-void
.end method

.method public static final synthetic access$onWindowStateChange(Lcom/android/launcher3/taskbar/ImeStateManage;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/ImeStateManage;->onWindowStateChange(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/ImeStateManage;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/ImeStateManage;->mStashScreenOnFlagReset$lambda$2(Lcom/android/launcher3/taskbar/ImeStateManage;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/ImeStateManage;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/ImeStateManage;->onWindowStateChange$lambda$4(Lcom/android/launcher3/taskbar/ImeStateManage;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/ImeStateManage;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/ImeStateManage;->mStashFoldChangingFlagReset$lambda$1(Lcom/android/launcher3/taskbar/ImeStateManage;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/ImeStateManage;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateForImeChange$lambda$3(Lcom/android/launcher3/taskbar/ImeStateManage;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final getShareStateFlags()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->taskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    return p0
.end method

.method private static final mImeFoldChangingFlagReset$lambda$0(Lcom/android/launcher3/taskbar/ImeStateManage;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mWindowManagerObserver:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->isInputShow()Z

    move-result v2

    if-ne v2, v0, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/ImeStateManage;->getShareStateFlags()I

    move-result v0

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    goto :goto_29

    :cond_21
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/ImeStateManage;->getShareStateFlags()I

    move-result v0

    const v2, -0x40001

    and-int/2addr v0, v2

    :goto_29
    iget-object p0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->taskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_32

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateSysuiStateFlags(IZ)V

    :cond_32
    return-void
.end method

.method private static final mStashFoldChangingFlagReset$lambda$1(Lcom/android/launcher3/taskbar/ImeStateManage;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    return-void
.end method

.method private static final mStashScreenOnFlagReset$lambda$2(Lcom/android/launcher3/taskbar/ImeStateManage;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    return-void
.end method

.method private final onPowerOff(Z)V
    .registers 3

    const-string p1, "ImeStateManage"

    const-string/jumbo v0, "onPowerOff"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x20

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    return-void
.end method

.method private final onPowerOn(Z)V
    .registers 7

    const-string v0, "ImeStateManage"

    const-string/jumbo v1, "onPowerOn"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    const/16 v0, 0x80

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mStashScreenOnFlagReset:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mStashScreenOnFlagReset:Ljava/lang/Runnable;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mWindowManagerObserver:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->isInputShow()Z

    move-result v1

    :cond_32
    if-eq v1, p1, :cond_3d

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->updateForImeChange:Ljava/util/function/Consumer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3d
    return-void
.end method

.method private final onWindowStateChange(Landroid/os/Bundle;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onWindowStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mWindowManagerObserver:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->isInputShow()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImeStateManage"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mWindowManagerObserver:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->isInputShow()Z

    move-result p1

    goto :goto_40

    :cond_3f
    const/4 p1, 0x0

    :goto_40
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/common/util/q;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/q;-><init>(Lcom/android/launcher3/taskbar/ImeStateManage;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onWindowStateChange$lambda$4(Lcom/android/launcher3/taskbar/ImeStateManage;Z)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->updateForImeChange:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static final updateForImeChange$lambda$3(Lcom/android/launcher3/taskbar/ImeStateManage;Ljava/lang/Boolean;)V
    .registers 12

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/ImeStateManage;->hasAnyImeFlag(I)Z

    move-result v1

    const-string v2, "ImeStateManage"

    const-string v3, "Taskbar"

    const/4 v4, 0x1

    if-nez v1, :cond_b6

    iget-object v5, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->pm:Landroid/os/PowerManager;

    const/4 v6, 0x0

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-nez v5, :cond_20

    move v5, v4

    goto :goto_21

    :cond_20
    move v5, v6

    :goto_21
    if-eqz v5, :cond_25

    goto/16 :goto_b6

    :cond_25
    const/16 v0, 0x8

    const-string v1, "isInputShow"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/taskbar/ImeStateManage;->hasAnyImeFlag(I)Z

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->hasAnyImeFlag(I)Z

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/launcher3/taskbar/ImeStateManage;->hasAnyImeFlag(I)Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onWindowStateChange, showing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " isFoldChanging: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isInputShowFold: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "  isInputShowExpand:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v2, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_87

    if-eqz v0, :cond_7b

    if-eqz v4, :cond_7b

    if-eqz v7, :cond_7b

    goto :goto_87

    :cond_7b
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/ImeStateManage;->getShareStateFlags()I

    move-result v0

    const v2, -0x40001

    and-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateShareStateFlags(I)V

    goto :goto_91

    :cond_87
    :goto_87
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/ImeStateManage;->getShareStateFlags()I

    move-result v0

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateShareStateFlags(I)V

    :goto_91
    iget-object v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->taskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_9e

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/ImeStateManage;->getShareStateFlags()I

    move-result v2

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateSysuiStateFlags(IZ)V

    :cond_9e
    iget-object v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->taskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->isFold()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    goto :goto_b5

    :cond_ae
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v5, p1}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    :goto_b5
    return-void

    :cond_b6
    :goto_b6
    if-nez v1, :cond_bb

    invoke-direct {p0, v0, v4}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    :cond_bb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onWindowStateChange skip, screenOff="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateShareStateFlags(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->taskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    return-void
.end method

.method private final updateStateForImeFlag(IZ)V
    .registers 3

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mImeFlag:I

    or-int/2addr p1, p2

    goto :goto_a

    :cond_6
    iget p2, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mImeFlag:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_a
    iput p1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mImeFlag:I

    return-void
.end method


# virtual methods
.method public final getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->taskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    return-object p0
.end method

.method public final hasAnyImeFlag(I)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mImeFlag:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final initState()V
    .registers 4

    new-instance v0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;

    new-instance v1, Lcom/android/launcher3/taskbar/ImeStateManage$initState$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/ImeStateManage$initState$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mWindowManagerObserver:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->register()V

    sget-object v0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mScreenListener:Lcom/android/launcher3/taskbar/ImeStateManage$mScreenListener$1;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->addCallback(Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mWindowManagerObserver:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->isInputShow()Z

    move-result v0

    if-ne v0, v1, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    const/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->taskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->isFold()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    goto :goto_3a

    :cond_36
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    :goto_3a
    return-void
.end method

.method public final onDestroyed()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mWindowManagerObserver:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->unregister()V

    :cond_7
    sget-object v0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mScreenListener:Lcom/android/launcher3/taskbar/ImeStateManage$mScreenListener$1;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->removeCallback(Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;)V

    return-void
.end method

.method public final onFoldStateChange(Z)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    const/16 v1, 0x40

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mWindowManagerObserver:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->isInputShow()Z

    move-result v1

    if-ne v1, v0, :cond_15

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    if-eqz p1, :cond_1d

    const/4 p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    goto :goto_21

    :cond_1d
    const/4 p1, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/ImeStateManage;->updateStateForImeFlag(IZ)V

    :goto_21
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mImeFoldChangingFlagReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mImeFoldChangingFlagReset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mStashFoldChangingFlagReset:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mStashFoldChangingFlagReset:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onSystemUiFlagsChanged(I)I
    .registers 7

    const/high16 v0, 0x40000

    and-int v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    :goto_b
    iget-object v4, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->pm:Landroid/os/PowerManager;

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-ne v4, v2, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/launcher3/taskbar/ImeStateManage;->hasAnyImeFlag(I)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mIsInteractive:Z

    if-eqz v4, :cond_26

    if-nez v2, :cond_26

    invoke-direct {p0, v3}, Lcom/android/launcher3/taskbar/ImeStateManage;->onPowerOff(Z)V

    :cond_26
    if-eq v1, v3, :cond_30

    if-eqz v3, :cond_2c

    or-int/2addr p1, v0

    goto :goto_30

    :cond_2c
    const v0, -0x40001

    and-int/2addr p1, v0

    :cond_30
    :goto_30
    if-eqz v2, :cond_39

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mIsInteractive:Z

    if-nez v0, :cond_39

    invoke-direct {p0, v3}, Lcom/android/launcher3/taskbar/ImeStateManage;->onPowerOn(Z)V

    :cond_39
    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mIsInteractive:Z

    return p1
.end method

.method public final onTaskbarActivityContextCreated()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->taskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->pm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-ne v0, v1, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/ImeStateManage;->mIsInteractive:Z

    return-void
.end method
