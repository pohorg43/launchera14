.class public Lcom/android/launcher3/icons/touch/IconFastClickController;
.super Lcom/android/launcher3/icons/touch/AbstractIconTouchController;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v3, 0xca

    if-ne v2, v3, :cond_32

    iget-boolean v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsMultipleTasks:Z

    if-nez v2, :cond_23

    iget-boolean v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsPocketStudioVersion:Z

    if-eqz v0, :cond_32

    :cond_23
    invoke-static {}, Lcom/android/launcher3/touch/OplusItemClickHandler;->isFastClickOnExpand()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {v1}, Lcom/android/launcher3/icons/touch/TouchEventResult;->get(Z)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->interceptBubbleTextViewSuperMethod()Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    return-object p0

    :cond_32
    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_59

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_59

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_59

    invoke-static {}, Lcom/android/launcher3/touch/OplusItemClickHandler;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {v1}, Lcom/android/launcher3/icons/touch/TouchEventResult;->get(Z)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->interceptBubbleTextViewSuperMethod()Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    return-object p0

    :cond_59
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;->next(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    return-object p0
.end method
