.class public abstract Lcom/android/launcher3/AbstractFloatingView;
.super Lcom/android/launcher3/OplusAbstractFloatingView;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongConstant"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/AbstractFloatingView$FloatingViewType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractFloatingView"

.field public static final TYPE_ACCESSIBLE:I = 0x7ffcbf

.field public static final TYPE_ACTION_POPUP:I = 0x2

.field public static final TYPE_ALERT_PANEL:I = 0x100000

.field public static final TYPE_ALERT_SELECT_BATCH_TIPS:I = 0x200000

.field public static final TYPE_ALL:I = 0x7fffff

.field public static final TYPE_ALL_APPS_EDU:I = 0x200

.field public static final TYPE_DISCOVERY_BOUNCE:I = 0x40

.field public static final TYPE_DRAG_DROP_POPUP:I = 0x400

.field public static final TYPE_FOLDER:I = 0x1

.field public static final TYPE_HIDDEN_SPACE:I = 0x400000

.field public static final TYPE_HIDE_BACK_BUTTON:I = 0x1e8

.field public static final TYPE_ICON_SURFACE:I = 0x2000

.field public static final TYPE_LISTENER:I = 0x100

.field public static final TYPE_ON_BOARD_POPUP:I = 0x20

.field public static final TYPE_OPTIONS_POPUP:I = 0x1000

.field public static final TYPE_OPTIONS_POPUP_DIALOG:I = 0x40000

.field public static final TYPE_PIN_WIDGET_FROM_EXTERNAL_POPUP:I = 0x4000

.field public static final TYPE_REBIND_SAFE:I = 0x4da274

.field public static final TYPE_SNACKBAR:I = 0x80

.field public static final TYPE_STATUS_BAR_SWIPE_DOWN_DISALLOW:I = 0x400c7c

.field public static final TYPE_TASKBAR_ALL_APPS:I = 0x20000

.field public static final TYPE_TASKBAR_EDUCATION_DIALOG:I = 0x10000

.field public static final TYPE_TASKBAR_OVERLAY_PROXY:I = 0x80000

.field public static final TYPE_TASK_MENU:I = 0x800

.field public static final TYPE_WIDGETS_BOTTOM_SHEET:I = 0x4

.field public static final TYPE_WIDGETS_EDUCATION_DIALOG:I = 0x8000

.field public static final TYPE_WIDGETS_FULL_SHEET:I = 0x10

.field public static final TYPE_WIDGET_RESIZE_FRAME:I = 0x8


# instance fields
.field public mIsOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusAbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/OplusAbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    return-void
.end method

.method public static closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V
    .registers 3

    const v0, 0x7fffff

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->finishAutoCancelActionMode()Z

    return-void
.end method

.method public static closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;I)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    return-void
.end method

.method public static closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZIZ)V

    return-void
.end method

.method public static closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZIZ)V
    .registers 5

    not-int p2, p2

    const v0, 0x7fffff

    and-int/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZIZ)V

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->finishAutoCancelActionMode()Z

    return-void
.end method

.method public static closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_a
    return-void
.end method

.method public static closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZIZ)V

    return-void
.end method

.method private static closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZIZ)V
    .registers 8

    const-string v0, "AbstractFloatingView"

    if-nez p0, :cond_a

    const-string p0, "closeOpenViews, the activity is null, return"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    if-nez v1, :cond_16

    const-string p0, "closeOpenViews, the dragLayer is null, return"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1c
    if-ltz v0, :cond_40

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v3, :cond_32

    check-cast v2, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_3d

    :cond_32
    instance-of v3, v2, Lcom/android/launcher3/popup/PopupNoBlurView;

    if-eqz v3, :cond_3d

    if-nez p3, :cond_3d

    check-cast v2, Lcom/android/launcher3/popup/PopupNoBlurView;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/PopupNoBlurView;->removeBySelf()V

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_40
    instance-of p2, p0, Lcom/android/launcher/Launcher;

    if-eqz p2, :cond_6b

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object p0

    if-nez p0, :cond_4d

    return-void

    :cond_4d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_53
    if-ltz p2, :cond_6b

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of v0, p3, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v0, :cond_68

    check-cast p3, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {p3}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p3, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_68
    add-int/lit8 p2, p2, -0x1

    goto :goto_53

    :cond_6b
    return-void
.end method

.method public static dismissDragView(Lcom/android/launcher3/Launcher;)V
    .registers 4

    if-nez p0, :cond_a

    const-string p0, "AbstractFloatingView"

    const-string v0, "The context is null!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    if-nez p0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_29

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz v2, :cond_26

    check-cast v1, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusDragView;->remove()V

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_29
    return-void
.end method

.method public static getAnyFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getAnyView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public static getAnyView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->getView(Lcom/android/launcher3/views/ActivityContext;IZ)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public static getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public static getOpenFolderNoAnim(Lcom/android/launcher3/views/ActivityContext;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getAnyFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_10

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_10
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->getView(Lcom/android/launcher3/views/ActivityContext;IZ)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public static getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;
    .registers 2

    const v0, 0x7fffff

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public static getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public static getTopView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "I)TT;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_24

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v3, :cond_21

    check-cast v2, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v3

    if-eqz v3, :cond_21

    return-object v2

    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_24
    return-object v0
.end method

.method private static getView(Lcom/android/launcher3/views/ActivityContext;IZ)Lcom/android/launcher3/AbstractFloatingView;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "IZ)TT;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_2c

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v4, :cond_29

    check-cast v3, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v4

    if-eqz v4, :cond_29

    if-eqz p2, :cond_28

    invoke-virtual {v3}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_28
    return-object v3

    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_2c
    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_5d

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object p0

    if-nez p0, :cond_39

    return-object v1

    :cond_39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3f
    if-ltz v0, :cond_5d

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v3, :cond_5a

    check-cast v2, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    if-eqz p2, :cond_59

    invoke-virtual {v2}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_5a

    :cond_59
    return-object v2

    :cond_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    :cond_5d
    return-object v1
.end method

.method public static getViewFolder(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "I)TT;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_24

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v3, :cond_21

    check-cast v2, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v3

    if-eqz v3, :cond_21

    return-object v2

    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_24
    return-object v0
.end method

.method public static hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static interceptTransitionSurfaceRelease(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 4

    if-nez p0, :cond_b

    const-string p0, "AbstractFloatingView"

    const-string/jumbo v0, "myUserSerialNumber. The context is null!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    if-nez p0, :cond_12

    return-void

    :cond_12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_2a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v2, :cond_27

    check-cast v1, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->interceptSurfaceRelease()V

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_2a
    return-void
.end method


# virtual methods
.method public addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    return-void
.end method

.method public announceAccessibilityChanges()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getAccessibilityTarget()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_41

    :cond_11
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getAccessibilityInitialFocusView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2e

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_2e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_41
    :goto_41
    return-void
.end method

.method public canInterceptEventsInSystemGestureRegion()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final close(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(ZZ)V

    return-void
.end method

.method public final close(ZZ)V
    .registers 3

    if-nez p2, :cond_7

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result p2

    and-int/2addr p1, p2

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->handleClose(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusAbstractFloatingView;->injectClose()V

    return-void
.end method

.method public getAccessibilityInitialFocusView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getAccessibilityTarget()Landroid/util/Pair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract handleClose(Z)V
.end method

.method public interceptSurfaceRelease()V
    .registers 1

    return-void
.end method

.method public abstract isOfType(I)Z
.end method

.method public final isOpen()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    return p0
.end method

.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
