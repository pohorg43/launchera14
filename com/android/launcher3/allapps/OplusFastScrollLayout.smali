.class public Lcom/android/launcher3/allapps/OplusFastScrollLayout;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "OplusFastScrollLayout"


# instance fields
.field private mInterceptFastTouch:Z

.field private mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    :try_start_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/android/launcher/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusFastScrollLayout;->mLauncher:Lcom/android/launcher/Launcher;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string v0, "OplusFastScrollLayout"

    const-string v1, "Maybe both are BaseActivity types"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusFastScrollLayout;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    if-eqz p1, :cond_39

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusFastScrollLayout;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusFastScrollLayout;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusFastScrollLayout;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_34

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusFastScrollLayout;->mInterceptFastTouch:Z

    const-string p0, "OplusFastScrollLayout"

    const-string v0, " Need to close the search bar on non-drawer pages , intercept touch event. "

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_34
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/OplusFastScrollLayout;->mInterceptFastTouch:Z

    if-eqz v0, :cond_9

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusFastScrollLayout;->mInterceptFastTouch:Z

    const/4 p0, 0x1

    return p0

    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
