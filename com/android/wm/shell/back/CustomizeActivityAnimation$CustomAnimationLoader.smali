.class Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/back/CustomizeActivityAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomAnimationLoader"
.end annotation


# instance fields
.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/policy/TransitionAnimation;

    const/4 v1, 0x0

    const-string v2, "CustomizeBackAnimation"

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    return-void
.end method

.method private loadDefaultOpenAnimation()Landroid/view/animation/Animation;
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_activityCloseEnterAnimation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationAttr(IZ)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public loadAll(Landroid/window/BackNavigationInfo$CustomAnimationInfo;)Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;
    .registers 4

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->loadAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;Z)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->loadAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;Z)Landroid/view/animation/Animation;

    move-result-object p0

    new-instance v1, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;

    invoke-direct {v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;-><init>()V

    iput-object v0, v1, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mCloseAnimation:Landroid/view/animation/Animation;

    iput-object p0, v1, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomBackground()I

    move-result p0

    iput p0, v1, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mBackgroundColor:I

    return-object v1
.end method

.method public loadAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;Z)Landroid/view/animation/Animation;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomEnterAnim()I

    move-result v2

    if-nez v2, :cond_12

    :cond_a
    if-nez p2, :cond_28

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomExitAnim()I

    move-result v2

    if-eqz v2, :cond_28

    :cond_12
    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1f

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomEnterAnim()I

    move-result p1

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomExitAnim()I

    move-result p1

    :goto_23
    invoke-virtual {v2, v3, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_45

    :cond_28
    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getWindowAnimations()I

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getWindowAnimations()I

    move-result p1

    if-eqz p2, :cond_3d

    sget v4, Lcom/android/internal/R$styleable;->WindowAnimation_activityCloseEnterAnimation:I

    goto :goto_3f

    :cond_3d
    sget v4, Lcom/android/internal/R$styleable;->WindowAnimation_activityCloseExitAnimation:I

    :goto_3f
    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_45

    :cond_44
    move-object p1, v0

    :goto_45
    if-nez p1, :cond_4d

    if-eqz p2, :cond_4d

    invoke-direct {p0}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->loadDefaultOpenAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    :cond_4d
    if-eqz p1, :cond_67

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p0, :cond_75

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, -0x20d427cd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "custom animation loaded %s"

    invoke-static {p2, v0, v1, p0, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_75

    :cond_67
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p0, :cond_75

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, 0x618a9371

    const-string v2, "No custom animation loaded"

    invoke-static {p0, p2, v1, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_75
    :goto_75
    return-object p1
.end method
