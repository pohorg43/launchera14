.class public final Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation$getMenuClosingWindowAnimators$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;->getMenuClosingWindowAnimators(Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $cardLeash:Landroid/view/SurfaceControl;

.field public final synthetic $launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/SurfaceControl;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation$getMenuClosingWindowAnimators$2;->$launcher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation$getMenuClosingWindowAnimators$2;->$cardLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string p1, "QuickStep"

    const-string v0, "AssistantScreenRemoteAnimUtil"

    const-string v1, "getMenuClosingWindowAnimators-onAnimationEnd()"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation$getMenuClosingWindowAnimators$2;->$cardLeash:Landroid/view/SurfaceControl;

    const-string v1, "viewLeash"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "endTarget"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation$getMenuClosingWindowAnimators$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    goto :goto_2a

    :cond_29
    move-object v0, v2

    :goto_2a
    if-eqz v0, :cond_34

    invoke-virtual {v0, p1}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationFinished(Landroid/os/Bundle;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_34
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation$getMenuClosingWindowAnimators$2;->$cardLeash:Landroid/view/SurfaceControl;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;->access$removeViewLeash(Landroid/view/SurfaceControl;)V

    :cond_41
    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isNextCardLauncherViewInfo()Z

    move-result p0

    if-nez p0, :cond_4a

    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->clearLaunchViewInfo()V

    :cond_4a
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "QuickStep"

    const-string v0, "AssistantScreenRemoteAnimUtil"

    const-string v1, "getMenuClosingWindowAnimators-onAnimationStart()"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation$getMenuClosingWindowAnimators$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz p1, :cond_16

    check-cast p0, Lcom/android/launcher/LauncherCallbacksImp;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationStart()V

    :cond_1c
    return-void
.end method
