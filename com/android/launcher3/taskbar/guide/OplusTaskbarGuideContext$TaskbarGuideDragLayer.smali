.class public Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext$TaskbarGuideDragLayer;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskbarGuideDragLayer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext$TaskbarGuideDragLayer;->recreateControllers()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    :cond_1f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "Main"

    const-string v1, "Touch event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public recreateControllers()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->access$000(Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;)Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    return-void
.end method
