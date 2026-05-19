.class public Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;
.super Lcom/android/launcher3/popup/PopupContainerWithArrow;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
        "Lcom/android/launcher/Launcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final DURATION_CLOSE_ALPHA_WITH_CARD:J = 0x14dL

.field private static final DURATION_POPUP_ALPHA:I = 0xfa

.field private static final DURATION_POPUP_ALPHA_WITH_CARD:J = 0x2eeL

.field private static final DURATION_POPUP_SCALE:I = 0x14a

.field private static final GESTURE_TO_HOME:I

.field private static final MENU_BACK_TO_HOME:I

.field private static final POPUP_SHORTCUT_SHOW_GUIDE:Ljava/lang/String; = "popup_shortcut_show_guide"

.field private static final SHORTCUT_SHOW_BOUNDARY_INSIDE_FOLDER:I = 0x1

.field private static final SHORTCUT_SHOW_BOUNDARY_NORMAL:I = 0x3

.field private static final SHORTCUT_SHOW_BOUNDARY_SIMPLE:I = 0x2

.field public static final SHORTCUT_TYPE_NONE:I = -0x1

.field public static final SHORTCUT_TYPE_NORMAL:I = 0x0

.field public static final SHORTCUT_TYPE_WITH_CARD:I = 0x1

.field private static final SYSTEM_SHORTCUT_ALPHA:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "OplusPopupContainerWithArrow"

.field private static sIsPopupDismissed:Z


# instance fields
.field private mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

.field public mAppShortcutContainer:Landroid/widget/LinearLayout;

.field private mDragIconView:Lcom/android/launcher3/dragndrop/DragView;

.field private mDragStarted:Z

.field private mHaveAppAndSystemShortcuts:Z

.field private mIsDragging:Z

.field private mIsNotReversed:Z

.field private mIsShowGuideScrollAnima:Z

.field public mLongPressedView:Landroid/view/View;

.field public mNeedShowCardPreview:Z

.field private final mOnCloseCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

.field private mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

.field private final mPopupLauncherStateListener:Lcom/android/launcher3/popup/PopupLauncherStateListener;

.field private mPopupShortcutContainer:Landroid/widget/LinearLayout;

.field private final mTouchDownLocation:Landroid/graphics/PointF;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v0

    sput v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->GESTURE_TO_HOME:I

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v0

    sput v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->MENU_BACK_TO_HOME:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mTouchDownLocation:Landroid/graphics/PointF;

    new-instance p1, Lcom/android/launcher3/popup/PopupLauncherStateListener;

    invoke-direct {p1}, Lcom/android/launcher3/popup/PopupLauncherStateListener;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupLauncherStateListener:Lcom/android/launcher3/popup/PopupLauncherStateListener;

    iput-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsShowGuideScrollAnima:Z

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsNotReversed:Z

    iput-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    iput-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    iput-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsDragging:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mTouchDownLocation:Landroid/graphics/PointF;

    new-instance p1, Lcom/android/launcher3/popup/PopupLauncherStateListener;

    invoke-direct {p1}, Lcom/android/launcher3/popup/PopupLauncherStateListener;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupLauncherStateListener:Lcom/android/launcher3/popup/PopupLauncherStateListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsShowGuideScrollAnima:Z

    iput-boolean p2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsNotReversed:Z

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsDragging:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setDragViewVisible()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->removeAnimGuideView()V

    return-void
.end method

.method public static synthetic access$202(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsDragging:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Lcom/android/launcher3/dragndrop/DragView;)Lcom/android/launcher3/dragndrop/DragView;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragIconView:Lcom/android/launcher3/dragndrop/DragView;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsShowGuideScrollAnima:Z

    return p0
.end method

.method public static synthetic access$902(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsShowGuideScrollAnima:Z

    return p1
.end method

.method private addScrollViewListener()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isCanScroll()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getCurrScrollView()Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {v0}, Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;->showScrollbar()V

    new-instance v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$3;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method private calculatePivotX()I
    .registers 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    cmpg-float v4, v0, v4

    const-string v5, "OplusPopupContainerWithArrow"

    if-gez v4, :cond_31

    int-to-float v4, v1

    add-float/2addr v4, v0

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_31

    const-string v1, "Correct the x align for animation wider popup"

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    add-float/2addr v1, p0

    float-to-int p0, v1

    return p0

    :cond_31
    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_47

    int-to-float v3, v1

    add-float/2addr v0, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_47

    const-string p0, "Correct the x align for animation wider icon"

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    div-int/lit8 v1, v1, 0x2

    return v1

    :cond_47
    iget-boolean p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz p0, :cond_4c

    const/4 v1, 0x0

    :cond_4c
    return v1
.end method

.method public static closeOpenContainer(Lcom/android/launcher/Launcher;)V
    .registers 2

    const/16 v0, 0xb4

    invoke-static {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainer(Lcom/android/launcher/Launcher;I)V

    return-void
.end method

.method public static closeOpenContainer(Lcom/android/launcher/Launcher;I)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainer(Lcom/android/launcher/Launcher;IZ)V

    return-void
.end method

.method private static closeOpenContainer(Lcom/android/launcher/Launcher;IZ)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    :cond_d
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_18
    if-eqz p2, :cond_28

    const p2, 0x7f0a0232

    invoke-virtual {p0, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz p2, :cond_28

    invoke-virtual {p2, p1}, Lcom/android/launcher3/dragndrop/OplusDragView;->removeWithAnim(I)V

    :cond_28
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->showOriginalIconOpsAhead()V

    return-void
.end method

.method public static closeOpenContainer(Lcom/android/launcher/Launcher;Z)V
    .registers 3

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainer(Lcom/android/launcher/Launcher;)V

    goto :goto_b

    :cond_6
    const/4 p1, -0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainer(Lcom/android/launcher/Launcher;IZ)V

    :goto_b
    return-void
.end method

.method public static closeOpenContainerImmediately(Lcom/android/launcher/Launcher;)V
    .registers 3

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_b
    const v0, 0x7f0a0232

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragView;->remove()V

    :cond_19
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->showOriginalIconOpsAhead()V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->lambda$getOpenCloseAnimator$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getCurrScrollView()Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_e

    return-object v1

    :cond_e
    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1f

    instance-of v0, p0, Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;

    if-nez v0, :cond_1c

    goto :goto_1f

    :cond_1c
    check-cast p0, Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;

    return-object p0

    :cond_1f
    :goto_1f
    return-object v1
.end method

.method private getLastCellY(Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 2

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private getOriginalFolderIconBounds(Lcom/android/launcher3/folder/OplusFolderIcon;Landroid/graphics/Rect;)V
    .registers 4

    if-eqz p1, :cond_18

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderViewBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    :cond_18
    return-void
.end method

.method private getOriginalIconBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1c
    return-void
.end method

.method private getOriginalRealIconBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1e

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->getRealIconBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1e
    return-void
.end method

.method public static getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;
    .registers 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getAnyView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->lambda$getOpenCloseAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->lambda$showForIcon$0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method private isCanScroll()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getCurrScrollView()Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_16
    move v0, v1

    :cond_17
    return v0
.end method

.method private isInShortcutArea(Landroid/graphics/PointF;)Z
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_54

    iget-boolean v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1b

    :cond_15
    iget-boolean v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v2, :cond_1d

    if-nez v1, :cond_1d

    :cond_1b
    move v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v0

    :goto_1e
    if-eqz v2, :cond_21

    goto :goto_51

    :cond_21
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v2, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_51

    return v3

    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_54
    return v0
.end method

.method public static isPopupDismissed()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    return v0
.end method

.method private isPressIconInMiddleOddColumn()Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v1, :cond_58

    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v1

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_2a

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    goto :goto_4d

    :cond_2a
    iget-object v4, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v4, v4, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v4, :cond_3b

    if-ltz v3, :cond_3b

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    goto :goto_4d

    :cond_3b
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p0

    :goto_4d
    rem-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_58

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    div-int/lit8 p0, p0, 0x2

    if-ne v0, p0, :cond_58

    const/4 v2, 0x1

    :cond_58
    return v2
.end method

.method private isShortcutAboveIcon()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isShortcutAboveIconForDesktop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isShortcutAboveIconForHotseat(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isShortcutAboveIconForInsideFolder(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isShortcutAboveIconForDrawer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_2b

    :cond_2a
    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method private isShortcutAboveIconForDesktop(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d17

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, -0x64

    if-ne v2, v5, :cond_42

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getLastCellY(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v2

    const/4 v5, 0x2

    if-gt v2, v5, :cond_40

    :cond_2f
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getLastCellY(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p1

    const/4 v2, 0x3

    if-le p1, v2, :cond_42

    :cond_40
    move p1, v3

    goto :goto_43

    :cond_42
    move p1, v4

    :goto_43
    if-eqz p1, :cond_54

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p0

    if-lez v2, :cond_54

    sub-int/2addr p0, v1

    if-le p0, v0, :cond_52

    goto :goto_53

    :cond_52
    move v3, v4

    :goto_53
    move p1, v3

    :cond_54
    return p1
.end method

.method private isShortcutAboveIconForDrawer(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    instance-of p1, p1, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object p0

    aget p0, p0, v0

    div-int/lit8 p0, p0, 0x2

    if-le v1, p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method private isShortcutAboveIconForHotseat(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p1, -0x65

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private isShortcutAboveIconForInsideFolder(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v1, 0x1

    if-ltz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getLastCellY(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p0

    if-le p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private isSystemShortcutHorizontalWithText()Z
    .registers 1

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez p0, :cond_d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic j(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->lambda$removeAnimGuideView$3(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$getOpenCloseAnimator$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$getOpenCloseAnimator$2(Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_24

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    if-ne v1, v2, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_24
    return-void
.end method

.method private synthetic lambda$removeAnimGuideView$3(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$showForIcon$0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    invoke-interface {p3, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method private orientAboutCard()V
    .registers 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070d1c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070d17

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070d16

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v3

    div-int/lit8 v11, v2, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isShortcutAboveIcon()Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v12, :cond_57

    iget-object v10, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v6

    :cond_57
    iget-object v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int v12, v9, v11

    iget v13, v8, Landroid/graphics/Rect;->left:I

    const/4 v14, 0x1

    if-le v12, v13, :cond_76

    add-int/2addr v9, v11

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getRight()I

    move-result v11

    iget v13, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v13

    if-ge v9, v11, :cond_76

    iput-boolean v14, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsCenterAligned:Z

    iget v1, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v1

    goto/16 :goto_f3

    :cond_76
    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsCenterAligned:Z

    iget-object v9, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    add-int v12, v11, v2

    iget v13, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getRight()I

    move-result v13

    iget v15, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v15

    if-ge v12, v13, :cond_8f

    move v12, v14

    goto :goto_90

    :cond_8f
    move v12, v1

    :goto_90
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v13

    iget v15, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v15

    if-le v9, v13, :cond_9b

    move v13, v14

    goto :goto_9c

    :cond_9b
    move v13, v1

    :goto_9c
    if-eqz v12, :cond_a7

    iget-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v12, :cond_a5

    if-eqz v13, :cond_a5

    goto :goto_a7

    :cond_a5
    move v12, v11

    goto :goto_a8

    :cond_a7
    :goto_a7
    move v12, v9

    :goto_a8
    if-ne v12, v11, :cond_ac

    move v13, v14

    goto :goto_ad

    :cond_ac
    move v13, v1

    :goto_ad
    iput-boolean v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget-object v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget v15, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v15

    iget v15, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v15

    iput v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v6, v10

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v15

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v1

    if-le v6, v15, :cond_f3

    const/16 v1, 0x10

    iput v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v11, v13

    iget v1, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v1

    sub-int/2addr v9, v13

    sub-int/2addr v9, v1

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v1, :cond_e3

    add-int/2addr v2, v11

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    if-ge v2, v1, :cond_df

    iput-boolean v14, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_f0

    :cond_df
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_ec

    :cond_e3
    const/4 v1, 0x0

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    if-le v9, v2, :cond_ee

    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :goto_ec
    move v12, v9

    goto :goto_f1

    :cond_ee
    iput-boolean v14, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :goto_f0
    move v12, v11

    :goto_f1
    iput-boolean v14, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    :cond_f3
    :goto_f3
    iget v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_107

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v1, :cond_100

    goto :goto_101

    :cond_100
    neg-int v3, v3

    :goto_101
    add-int/2addr v12, v3

    int-to-float v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    return-void

    :cond_107
    int-to-float v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_11b

    iget-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    goto :goto_126

    :cond_11b
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget-object v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    sub-int/2addr v2, v3

    :goto_126
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    if-ge v3, v2, :cond_130

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    :cond_130
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_14e

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v2, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_157

    :cond_14e
    const/16 v0, 0x30

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_157
    return-void
.end method

.method private orientAboutIcon()V
    .registers 15

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d1b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070d17

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070d16

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v1

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getRight()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v11, Lcom/android/launcher/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v12, 0x1

    if-eqz v11, :cond_63

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v11

    if-eqz v11, :cond_63

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getRight()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v11

    sub-int/2addr v10, v11

    :cond_63
    add-int v11, v9, v1

    iget v13, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v13

    iget v13, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v13

    if-ge v11, v10, :cond_6f

    move v10, v12

    goto :goto_70

    :cond_6f
    move v10, v0

    :goto_70
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget v11, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v11

    if-le v8, v5, :cond_7b

    move v5, v12

    goto :goto_7c

    :cond_7b
    move v5, v0

    :goto_7c
    if-eqz v10, :cond_86

    iget-boolean v10, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v10, :cond_85

    if-eqz v5, :cond_85

    goto :goto_86

    :cond_85
    move v8, v9

    :cond_86
    :goto_86
    if-ne v8, v9, :cond_89

    goto :goto_8a

    :cond_89
    move v12, v0

    :goto_8a
    iput-boolean v12, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget-object v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isShortcutAboveIcon()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v9, :cond_9f

    iget-object v3, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    :cond_9f
    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v7

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPressIconInMiddleOddColumn()Z

    move-result v7

    if-eqz v7, :cond_b7

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setX(F)V

    goto :goto_bb

    :cond_b7
    int-to-float v0, v8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setX(F)V

    :goto_bb
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_cc

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    goto :goto_cf

    :cond_cc
    sub-int v1, v6, v3

    sub-int/2addr v1, v4

    :goto_cf
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    if-ge v4, v1, :cond_d9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    :cond_d9
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_ef

    const/16 v1, 0x50

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, p0

    add-int/2addr v6, v2

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_f5

    :cond_ef
    const/16 p0, 0x30

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_f5
    return-void
.end method

.method private orientAboutPendingCard()V
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d17

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070d16

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070cc7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v8}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getFirstCardHeight()I

    move-result v8

    iget-object v9, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v9}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMaxCardSize()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v10}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMinCardSize()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget-object v11, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v11}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v11

    iget-object v12, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v12}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const/4 v14, 0x1

    if-ne v12, v13, :cond_67

    move v12, v14

    goto :goto_68

    :cond_67
    move v12, v1

    :goto_68
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isShortcutAboveIcon()Z

    move-result v13

    iput-boolean v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    iget-object v15, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v15, v13}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->setIsAboveIcon(Z)V

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    iget-object v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v15

    iget-object v15, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v15}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPressViewItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v15

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v1, :cond_97

    if-eqz v15, :cond_93

    iget v1, v15, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-le v1, v14, :cond_93

    iget-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v1, v10

    goto :goto_97

    :cond_93
    iget-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->top:I

    :cond_97
    :goto_97
    if-eqz v12, :cond_9a

    sub-int/2addr v13, v11

    :cond_9a
    iget-object v1, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object v1

    iget-object v12, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v12}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v16

    sget-object v14, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_START:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v1, v14, :cond_dd

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_ba

    const v1, 0x800053

    goto :goto_bd

    :cond_ba
    const v1, 0x800003

    :goto_bd
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v14, 0x7f070cd1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const v1, 0x800003

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    move/from16 v18, v4

    move-object/from16 v17, v7

    const/4 v4, 0x0

    goto/16 :goto_17b

    :cond_dd
    sget-object v14, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v1, v14, :cond_140

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_e9

    const v1, 0x800055

    goto :goto_ec

    :cond_e9
    const v1, 0x800005

    :goto_ec
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v14, 0x7f070cd2

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const v1, 0x800005

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_10d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v14, 0x1

    sub-int/2addr v1, v14

    goto :goto_10e

    :cond_10d
    const/4 v1, 0x0

    :goto_10e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v17, v7

    const v7, 0x7f070cdd

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-eqz v16, :cond_11e

    goto :goto_11f

    :cond_11e
    neg-int v7, v7

    :goto_11f
    move/from16 v18, v4

    const/4 v14, 0x0

    :goto_122
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v14, v4, :cond_13c

    if-ne v14, v1, :cond_12d

    move/from16 v19, v1

    goto :goto_137

    :cond_12d
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move/from16 v19, v1

    int-to-float v1, v7

    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_137
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v19

    goto :goto_122

    :cond_13c
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_17b

    :cond_140
    move/from16 v18, v4

    move-object/from16 v17, v7

    const/4 v4, 0x0

    sget-object v7, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v1, v7, :cond_17b

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_150

    const/16 v1, 0x51

    goto :goto_151

    :cond_150
    const/4 v1, 0x1

    :goto_151
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v7, :cond_161

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v1

    goto :goto_162

    :cond_161
    move v7, v4

    :goto_162
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v14, 0x7f070cc8

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz v16, :cond_170

    neg-int v1, v1

    :cond_170
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationX(F)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :cond_17b
    :goto_17b
    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_TOP:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    if-ne v12, v1, :cond_19d

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_18a

    iget-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v9

    sub-int/2addr v1, v2

    goto :goto_194

    :cond_18a
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    :goto_194
    iget-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_199

    :cond_198
    move v8, v9

    :cond_199
    :goto_199
    move v3, v1

    move v1, v4

    goto/16 :goto_20a

    :cond_19d
    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_BOTTOM:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    if-ne v12, v1, :cond_1bb

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_1ab

    iget-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    goto :goto_1b6

    :cond_1ab
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    add-int/2addr v1, v9

    :goto_1b6
    iget-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_198

    goto :goto_199

    :cond_1bb
    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    if-ne v12, v1, :cond_207

    if-ge v8, v9, :cond_1c3

    move v1, v13

    goto :goto_1c5

    :cond_1c3
    sub-int v1, v13, v11

    :goto_1c5
    if-eqz v15, :cond_1d2

    iget v4, v15, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v7, 0x1

    if-le v4, v7, :cond_1d2

    iget-object v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v10

    goto :goto_1d6

    :cond_1d2
    iget-object v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    :goto_1d6
    iget-boolean v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v7, :cond_1dc

    sub-int/2addr v1, v3

    goto :goto_1df

    :cond_1dc
    sub-int v1, v1, v18

    sub-int/2addr v1, v2

    :goto_1df
    if-gez v1, :cond_1f0

    if-eqz v7, :cond_1e5

    move v13, v3

    goto :goto_1e8

    :cond_1e5
    add-int v4, v2, v18

    move v13, v4

    :goto_1e8
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    move v3, v4

    goto :goto_201

    :cond_1f0
    if-eqz v7, :cond_1f9

    iget-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    add-int/2addr v3, v11

    goto :goto_201

    :cond_1f9
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    add-int v3, v2, v11

    :goto_201
    if-ge v8, v9, :cond_205

    add-int/2addr v8, v11

    goto :goto_20a

    :cond_205
    move v8, v9

    goto :goto_20a

    :cond_207
    move v1, v4

    move v3, v1

    move v8, v3

    :goto_20a
    iget-object v2, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->setPendingCardDistanceCanMoved(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    if-ge v1, v3, :cond_219

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    :cond_219
    sub-int v1, v3, v18

    sub-int/2addr v1, v8

    iget-object v2, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->setShortcutReservedMaxHeight(I)V

    iget-object v2, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v1, :cond_22f

    iget-object v1, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    :cond_22f
    move-object/from16 v7, v17

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->setShortcutInitialHeight(I)V

    sub-int v13, v13, v18

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_24d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_257

    :cond_24d
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x30

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_257
    iget-object v1, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private orientAboutWidget()V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070d1c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070d17

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070d16

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    check-cast v6, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    const/4 v7, 0x2

    if-eqz v6, :cond_4a

    iget v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eq v6, v7, :cond_3d

    const/4 v8, 0x3

    if-ne v6, v8, :cond_4a

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f070d0f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v6, v3

    goto :goto_4b

    :cond_4a
    move v6, v3

    :goto_4b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    iget-object v9, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v10

    iget-object v11, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    iget-object v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v6

    div-int/lit8 v13, v2, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isShortcutAboveIcon()Z

    move-result v14

    iput-boolean v14, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v14, :cond_77

    iget-object v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v8

    :cond_77
    iget-object v14, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int v14, v11, v13

    iget v15, v10, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    if-le v14, v15, :cond_98

    add-int/2addr v11, v13

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getRight()I

    move-result v13

    iget v15, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v15

    if-ge v11, v13, :cond_98

    iput-boolean v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsCenterAligned:Z

    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v1

    move/from16 v17, v6

    goto/16 :goto_14e

    :cond_98
    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsCenterAligned:Z

    iget-object v11, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v13, v11, Landroid/graphics/Rect;->left:I

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v2

    add-int v14, v13, v2

    iget v15, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v15

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getRight()I

    move-result v15

    iget v7, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v7

    if-ge v14, v15, :cond_b1

    const/4 v7, 0x1

    goto :goto_b2

    :cond_b1
    move v7, v1

    :goto_b2
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v14

    iget v15, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v15

    if-le v11, v14, :cond_bd

    const/4 v14, 0x1

    goto :goto_be

    :cond_bd
    move v14, v1

    :goto_be
    if-eqz v7, :cond_c9

    iget-boolean v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v7, :cond_c7

    if-eqz v14, :cond_c7

    goto :goto_c9

    :cond_c7
    move v7, v13

    goto :goto_ca

    :cond_c9
    :goto_c9
    move v7, v11

    :goto_ca
    if-ne v7, v13, :cond_ce

    const/4 v14, 0x1

    goto :goto_cf

    :cond_ce
    move v14, v1

    :goto_cf
    iput-boolean v14, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget-object v14, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isAlignedWithStart()Z

    move-result v16

    if-eqz v16, :cond_f5

    const v1, 0x7f070711

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move/from16 v17, v6

    const v6, 0x7f070d13

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    div-int/lit8 v6, v14, 0x2

    const/4 v6, 0x2

    div-int/2addr v1, v6

    goto :goto_109

    :cond_f5
    move/from16 v17, v6

    const/4 v6, 0x2

    const v1, 0x7f07070c

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v6, 0x7f070d12

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    div-int/lit8 v6, v14, 0x2

    const/4 v6, 0x2

    div-int/2addr v1, v6

    :goto_109
    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int v1, v7, v1

    iget v6, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v6

    const/4 v6, 0x0

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v8, v12

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v6

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v8, v6, :cond_14d

    const/16 v1, 0x10

    iput v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v13, v14

    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v1

    sub-int/2addr v11, v14

    sub-int/2addr v11, v1

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v1, :cond_13b

    add-int/2addr v2, v13

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    if-ge v2, v1, :cond_136

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_149

    :cond_136
    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_145

    :cond_13b
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    if-le v11, v6, :cond_147

    iput-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :goto_145
    move v14, v11

    goto :goto_14a

    :cond_147
    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :goto_149
    move v14, v13

    :goto_14a
    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    goto :goto_14e

    :cond_14d
    move v14, v1

    :goto_14e
    iget v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_162

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v1, :cond_15b

    goto :goto_15c

    :cond_15b
    neg-int v3, v3

    :goto_15c
    add-int/2addr v14, v3

    int-to-float v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    return-void

    :cond_162
    int-to-float v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_176

    iget-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    goto :goto_182

    :cond_176
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int v2, v2, v17

    :goto_182
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    if-ge v3, v2, :cond_18c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    :cond_18c
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_1aa

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v2, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1b3

    :cond_1aa
    const/16 v0, 0x30

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v0

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_1b3
    return-void
.end method

.method private playGuideScrollAnima()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isCanScroll()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsShowGuideScrollAnima:Z

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d14

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d15

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v3, v2, v1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const v1, 0x7f110022

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    const/16 v1, 0x11

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    return-void
.end method

.method private removeAnimGuideView()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v2, :cond_21

    new-instance v0, Lcom/android/launcher/widget/a;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_24
    :goto_24
    return-void
.end method

.method private setDeepShortcutViewPadding(Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070e06

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c
    return-void
.end method

.method private setDeepShortcutViewPadding(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setDeepShortcutViewPadding(Landroid/view/View;ZZ)V

    return-void
.end method

.method private setDeepShortcutViewPadding(Landroid/view/View;ZZ)V
    .registers 6

    instance-of v0, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070e06

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x0

    if-eqz p3, :cond_1f

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1f
    if-eqz p2, :cond_25

    invoke-virtual {v0, v1, p0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_28

    :cond_25
    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_28
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b
    return-void
.end method

.method private setDragViewVisible()V
    .registers 3

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_35

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusDragView;

    iget-boolean v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    if-eqz v1, :cond_35

    instance-of v1, v0, Lcom/android/launcher3/dragndrop/LauncherDragView;

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_35

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_35
    :goto_35
    return-void
.end method

.method private static setIsPopupDismissed(Z)V
    .registers 3

    const-string/jumbo v0, "setIsPopupDismissed as "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusPopupContainerWithArrow"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    return-void
.end method

.method public static setLongClickViewVisible(Lcom/android/launcher/Launcher;Landroid/view/View;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDeferredRemoveCallback()Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    move-result-object p0

    if-nez p0, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    return-void
.end method

.method public static shouldStartDragOrCancelDrag(Lcom/android/launcher/Launcher;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static showForIcon(Landroid/view/View;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .registers 14

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    return-object v2

    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_cc

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v3, Lcom/android/launcher/operators/GeneralCustomizer;->INSTANCE:Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher/operators/GeneralCustomizer;->isOperatorPlaceHolderItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_2e

    return-object v2

    :cond_2e
    const/16 v3, 0x45

    const-wide/16 v4, 0x32

    invoke-static {v0, v3, v4, v5}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJ)V

    invoke-static {v0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d01c4

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->configureForLauncher(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutCountForItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v7

    invoke-virtual {v5, v1, v7}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketPopupShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v5

    if-eqz v5, :cond_64

    const/4 v5, 0x1

    goto :goto_6c

    :cond_64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutCountForItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v5

    :goto_6c
    move v10, v5

    invoke-virtual {v4, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getNotificationKeysForItem(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;

    move-result-object v11

    iget-object v4, v3, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4, v5, v11}, Lcom/android/launcher3/popup/PopupPopulator;->getShortcutInfoList(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    instance-of v4, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v4, :cond_92

    move-object v4, p0

    check-cast v4, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-static {v4, v1, v0}, Lcom/android/launcher3/card/LauncherCardUtil;->getUsSystemShortCuts(Lcom/android/launcher3/card/groupcard/GroupCardView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_92
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getSupportedShortcuts()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/popup/w;

    invoke-direct {v5, v0, v1, p0}, Lcom/android/launcher3/popup/w;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v4, Lcom/android/launcher3/popup/x;->a:Lcom/android/launcher3/popup/x;

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v7, v3

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->populateAndShow(Landroid/view/View;Ljava/util/List;ILjava/util/List;Ljava/util/List;)Z

    move-result p0

    invoke-static {v6}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setIsPopupDismissed(Z)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->updateAndRecordCreateFolderTipsPref(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->setLongClickIconFlag()V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkAndHideScrollFolderTip()V

    if-eqz p0, :cond_cb

    move-object v2, v3

    :cond_cb
    return-object v2

    :cond_cc
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "OplusPopupContainerWithArrow"

    if-nez v0, :cond_db

    const-string/jumbo p0, "showForIcon item == null, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f8

    :cond_db
    const-string v0, "icon.getTag() is type: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", but ItemInfo is needed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f8
    return-object v2
.end method

.method private updateSystemShortcuts(ZZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz p1, :cond_23

    if-eqz p2, :cond_16

    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v2, v1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setDeepShortcutViewPadding(Landroid/view/View;ZZ)V

    :cond_16
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1b

    move v0, v2

    :cond_1b
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setDeepShortcutViewPadding(Landroid/view/View;Z)V

    goto :goto_41

    :cond_23
    if-nez v0, :cond_2f

    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setDeepShortcutViewPadding(Landroid/view/View;)V

    goto :goto_41

    :cond_2f
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setDeepShortcutViewPadding(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setDeepShortcutViewPadding(Landroid/view/View;Z)V

    :goto_41
    return-void
.end method


# virtual methods
.method public addClosePopupContainerListener(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDeleteBgIndicatorView(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    if-nez v0, :cond_c

    const-string p0, "OplusPopupContainerWithArrow"

    const-string p1, "addDeleteBgIndicatorView, mLongPressedView = null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statClickEvent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v1, :cond_27

    if-nez p1, :cond_27

    check-cast v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->addDeleteBgIndicatorView()V

    goto :goto_5c

    :cond_27
    instance-of v0, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_5c

    if-eqz p1, :cond_5c

    sget-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hasShowAllGuide()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_55

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderPopClickTip(Landroid/view/View;)V

    :cond_55
    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->inflateOppositeView()V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public animateClose()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    :cond_7
    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateClose()V

    return-void
.end method

.method public closeBegin()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_4a

    instance-of v1, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    if-nez v1, :cond_d

    return-void

    :cond_d
    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    sget v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->GESTURE_TO_HOME:I

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_29

    sget v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->MENU_BACK_TO_HOME:I

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    move v0, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v0, v2

    :goto_2a
    if-nez v0, :cond_3b

    const-string v0, "OplusPopupContainerWithArrow"

    const-string/jumbo v4, "reset anim!!"

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, v2, v3}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->forceHideDot(ZZ)V

    :cond_3b
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4a
    return-void
.end method

.method public closeComplete()V
    .registers 7

    invoke-super {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->removeAnimGuideView()V

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    if-nez v1, :cond_16

    check-cast v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/groupcard/GroupCardView;->setTextVisible(Z)V

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

    if-eqz v0, :cond_28

    sget-boolean v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupBlurView;->finish(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

    :cond_28
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_93

    instance-of v3, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v3, :cond_36

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->isTextVisible()Z

    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    instance-of v3, v0, Lcom/android/launcher/Launcher;

    if-nez v3, :cond_46

    return-void

    :cond_46
    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    iget-object v3, v3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v3}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v3

    if-ne v3, v2, :cond_5a

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAllAppsViewInSelectState()Z

    move-result v3

    if-eqz v3, :cond_5a

    move v3, v2

    goto :goto_5b

    :cond_5a
    move v3, v1

    :goto_5b
    sget v4, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->GESTURE_TO_HOME:I

    invoke-static {v4}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result v4

    if-nez v4, :cond_6e

    sget v4, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->MENU_BACK_TO_HOME:I

    invoke-static {v4}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    goto :goto_6e

    :cond_6c
    move v4, v1

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v4, v2

    :goto_6f
    if-nez v3, :cond_93

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_93

    if-nez v4, :cond_93

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    iget-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsDragging:Z

    if-eqz v0, :cond_88

    iget-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    if-eqz v0, :cond_93

    :cond_88
    invoke-static {}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPopupDismissed()Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    :cond_93
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v3, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_b7

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->isTextVisible()Z

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    check-cast v4, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    if-nez v3, :cond_b7

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const-wide/16 v3, 0xc8

    sget-object v5, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v3, v4, v5, v2}, Lcom/android/launcher3/IBubbleTextViewExt;->playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V

    :cond_b7
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v3, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v3, :cond_c2

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v0, v2}, Lcom/oplus/card/manager/domain/ICardView;->setTextVisible(Z)V

    :cond_c2
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    instance-of v2, v0, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_ee

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_ee

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-nez v0, :cond_ee

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    :cond_ee
    return-void
.end method

.method public createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .registers 2

    new-instance p1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$2;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    return-object p1
.end method

.method public currentDragIconView()Lcom/android/launcher3/dragndrop/DragView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragIconView:Lcom/android/launcher3/dragndrop/DragView;

    return-object p0
.end method

.method public getClosePopupContainerListeners()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .registers 23

    move-object v1, p0

    iget-boolean v0, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getOpenCloseAnimatorWithoutPendingCard(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_22

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v3, v2

    :goto_12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_22

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_22
    iget-object v3, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v6

    iget-object v7, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v7}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object v7

    iget-object v8, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v8}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v8

    iget-object v9, v1, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    add-int v12, v10, v11

    int-to-float v12, v12

    const/high16 v13, 0x40000000  # 2.0f

    div-float/2addr v12, v13

    if-nez v6, :cond_59

    sget-object v13, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_START:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-eq v7, v13, :cond_5f

    :cond_59
    if-eqz v6, :cond_73

    sget-object v13, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v7, v13, :cond_73

    :cond_5f
    int-to-float v13, v8

    cmpl-float v13, v12, v13

    if-lez v13, :cond_68

    int-to-float v13, v11

    iput v13, v5, Landroid/graphics/PointF;->x:F

    goto :goto_6b

    :cond_68
    int-to-float v13, v10

    iput v13, v5, Landroid/graphics/PointF;->x:F

    :goto_6b
    iget v13, v5, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iput v13, v5, Landroid/graphics/PointF;->x:F

    :cond_73
    if-nez v6, :cond_79

    sget-object v13, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-eq v7, v13, :cond_7f

    :cond_79
    if-eqz v6, :cond_98

    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_START:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v7, v6, :cond_98

    :cond_7f
    mul-int/lit8 v6, v8, 0x2

    int-to-float v6, v6

    sub-float v6, v12, v6

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_8d

    int-to-float v6, v11

    iput v6, v5, Landroid/graphics/PointF;->x:F

    goto :goto_90

    :cond_8d
    int-to-float v6, v10

    iput v6, v5, Landroid/graphics/PointF;->x:F

    :goto_90
    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    iput v6, v5, Landroid/graphics/PointF;->x:F

    :cond_98
    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v7, v6, :cond_9e

    iput v12, v5, Landroid/graphics/PointF;->x:F

    :cond_9e
    iget-boolean v6, v1, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v6, :cond_bf

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v6

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v4

    iget-object v4, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMaxCardSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v4

    sub-int/2addr v7, v6

    int-to-float v4, v7

    iput v4, v5, Landroid/graphics/PointF;->y:F

    goto :goto_c7

    :cond_bf
    iget v6, v9, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    iput v4, v5, Landroid/graphics/PointF;->y:F

    :goto_c7
    iget-object v4, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v4

    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const/4 v7, 0x2

    if-ne v4, v6, :cond_df

    iget v4, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, v5, Landroid/graphics/PointF;->y:F

    goto :goto_f0

    :cond_df
    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_BOTTOM:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    if-ne v4, v6, :cond_f0

    iget v4, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v6

    mul-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, v5, Landroid/graphics/PointF;->y:F

    :cond_f0
    :goto_f0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    if-nez v3, :cond_10b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_105

    const-string v3, "OplusPopupContainerWithArrow"

    const-string v4, "getPendingCardAdapter adapter is null "

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_105
    iget-object v3, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardAdapter()Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    move-result-object v3

    :cond_10b
    invoke-virtual {v3, v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->setPopupScaleAminPivot(Landroid/graphics/PointF;)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x1

    if-nez p1, :cond_138

    iget-object v4, v1, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_11f

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_11f
    iget-boolean v4, v1, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v4, :cond_128

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_131

    :cond_128
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :goto_131
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual {v3, v8}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->runCloseAnimation(Landroid/animation/AnimatorSet;)V

    :cond_138
    iget-boolean v3, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    const-wide/16 v9, 0x2ee

    const v6, 0x43a68000  # 333.0f

    if-eqz v3, :cond_170

    iget-object v3, v1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v3

    new-array v11, v7, [F

    if-eqz p1, :cond_14f

    fill-array-data v11, :array_1aa

    goto :goto_153

    :cond_14f
    aput v3, v11, v2

    aput v0, v11, v5

    :goto_153
    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    if-eqz p1, :cond_15b

    move-wide v12, v9

    goto :goto_15d

    :cond_15b
    mul-float/2addr v3, v6

    float-to-long v12, v3

    :goto_15d
    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/launcher/pageindicators/d;

    invoke-direct {v3, p0}, Lcom/android/launcher/pageindicators/d;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_170
    if-eqz p1, :cond_179

    new-array v0, v7, [F

    fill-array-data v0, :array_1b2

    move-object v2, v0

    goto :goto_180

    :cond_179
    new-array v3, v7, [F

    aput v4, v3, v2

    aput v0, v3, v5

    move-object v2, v3

    :goto_180
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_187

    goto :goto_189

    :cond_187
    mul-float/2addr v4, v6

    float-to-long v9, v4

    :goto_189
    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/keyguardservice/b;

    invoke-direct {v3, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move/from16 v0, p5

    int-to-long v3, v0

    move/from16 v0, p6

    int-to-long v5, v0

    move-object v0, p0

    move-object v1, p0

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/popup/ArrowPopup;->fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V

    return-object v8

    nop

    :array_1aa
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_1b2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getOpenCloseAnimatorWithoutPendingCard(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .registers 10

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 p3, 0x3f800000  # 1.0f

    const/4 p4, 0x0

    if-eqz p1, :cond_c

    move p5, p3

    goto :goto_d

    :cond_c
    move p5, p4

    :goto_d
    if-eqz p1, :cond_10

    goto :goto_11

    :cond_10
    move p3, p4

    :goto_11
    if-eqz p1, :cond_1c

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1c
    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->calculatePivotX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-boolean p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p6, 0x7f070d1b

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const p7, 0x7f070d17

    invoke-virtual {p6, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    iget-object p7, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget p7, p7, Landroid/graphics/Rect;->top:I

    sub-int/2addr p7, p1

    sub-int/2addr p7, p6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    if-le p7, p1, :cond_51

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p7

    goto :goto_51

    :cond_50
    move p7, p4

    :cond_51
    :goto_51
    int-to-float p1, p7

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 p6, 0x1

    new-array p7, p6, [F

    aput p3, p7, p4

    invoke-static {p0, p1, p7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p7, p6, [F

    aput p5, p7, p4

    invoke-static {p0, p3, p7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x14a

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    aput-object p1, p3, p4

    aput-object p0, p3, p6

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method public getPendingCardContainer()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    return-object p0
.end method

.method public getShortcutType()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    iget-boolean p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public getTargetObjectLocation(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getOriginalIconBounds(Landroid/graphics/Rect;)V

    goto :goto_61

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getOriginalFolderIconBounds(Lcom/android/launcher3/folder/OplusFolderIcon;Landroid/graphics/Rect;)V

    goto :goto_61

    :cond_14
    instance-of v1, v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v1, :cond_22

    check-cast v0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getCardBoundsForPopupShortCut(Landroid/graphics/Rect;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    goto :goto_61

    :cond_22
    instance-of v1, v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v1, :cond_2c

    check-cast v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetBoundsForPopupShortCut(Landroid/graphics/Rect;)V

    goto :goto_61

    :cond_2c
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_61
    return-void
.end method

.method public handleClose(Z)V
    .registers 6

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setIsPopupDismissed(Z)V

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$Companion;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$Companion;->setMIsShowDragBox(Z)V

    iget-boolean v1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    const-string v2, "OplusPopupContainerWithArrow"

    if-nez v1, :cond_15

    const-string p0, "Handle close but is not open state"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->canClosePopContainer()Z

    move-result v1

    if-nez v1, :cond_20

    return-void

    :cond_20
    invoke-virtual {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getClosePopupContainerListeners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/model/x0;->c:Lcom/android/launcher3/model/x0;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/popup/v;->b:Lcom/android/launcher3/popup/v;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->handleClose(Z)V

    const/4 v1, 0x0

    if-nez p1, :cond_46

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    if-eqz p1, :cond_46

    instance-of v3, p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v3, :cond_46

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->forceHideDot(Z)V

    :cond_46
    const-string p1, "handle close, mLongPressedView = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    if-nez p1, :cond_5d

    return-void

    :cond_5d
    instance-of v2, p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v2, :cond_66

    check-cast p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->removeDeleteBgIndicatorView()V

    :cond_66
    iget-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    if-nez p1, :cond_89

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v2, p1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v2, :cond_89

    check-cast p1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->animCardAlpha(ZZ)V

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->animBg(Z)V

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getLongPressObserver()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_89
    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p1, :cond_a0

    sget-object p1, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a0

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a0
    return-void
.end method

.method public initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getInsertIndexForSystemShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)I

    move-result p4

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    instance-of p4, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz p4, :cond_1b

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_60

    :cond_1b
    instance-of p4, p1, Landroid/widget/ImageView;

    if-eqz p4, :cond_3d

    instance-of p0, p2, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_36

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    if-nez p0, :cond_36

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000  # 1.0f

    const/4 p4, -0x2

    invoke-direct {p0, p4, p4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_36
    move-object p0, p1

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V

    goto :goto_60

    :cond_3d
    instance-of p2, p1, Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;

    if-eqz p2, :cond_60

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->textStyleBold:Z

    if-eqz p0, :cond_5a

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;

    const/4 p2, 0x1

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_5a
    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;

    invoke-virtual {p3, p0}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;)V

    :cond_60
    :goto_60
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public injectOnControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v0, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_38

    const-string p1, "OplusPopupContainerWithArrow"

    const-string v0, "We are touching resize frame while popup showing"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_36
    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public isAlignedWithStart()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v1, :cond_e

    :cond_8
    if-nez v0, :cond_10

    iget-boolean p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isDragStarted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    return p0
.end method

.method public isPendingCardPreviewAvailable(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportPendingCardPreview()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_69

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v2, :cond_27

    return v1

    :cond_27
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_32

    return v1

    :cond_32
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_40

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v0

    if-eqz v0, :cond_40

    return v1

    :cond_40
    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result p1

    if-eqz p1, :cond_49

    return v1

    :cond_49
    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez p1, :cond_69

    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result p1

    if-eqz p1, :cond_60

    goto :goto_69

    :cond_60
    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of p0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p0, :cond_67

    return v1

    :cond_67
    const/4 p0, 0x1

    return p0

    :cond_69
    :goto_69
    return v1
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupLauncherStateListener:Lcom/android/launcher3/popup/PopupLauncherStateListener;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_33

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v5, :cond_28

    check-cast v3, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isEventOverActivityArea(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_2e

    :cond_28
    invoke-virtual {v0, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_30

    :goto_2e
    move v1, v4

    goto :goto_33

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_33
    :goto_33
    if-nez v1, :cond_5a

    invoke-virtual {p0, v4}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    sget-object v0, Lcom/android/launcher3/widget/WidgetFilter;->Companion:Lcom/android/launcher3/widget/WidgetFilter$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetFilter$Companion;->getMultiFingerPressList()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-nez v0, :cond_5a

    sget-object p0, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    invoke-virtual {p0}, Lcom/android/common/TouchLogger$Companion;->getINSTANCE()Lcom/android/common/TouchLogger;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v0, "TouchIntercept::OplusPopupContainerWithArrow"

    const-string/jumbo v1, "onControllerInterceptTouchEvent had intercepted and mLongPressedView is not instanceof CustomLauncherAppWidgetHostView"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/common/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_5a
    invoke-super {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->forceHideDot(Z)V

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setIsPopupDismissed(Z)V

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/PopupBlurView;->createBlurAnim(Z)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1d
    return-void
.end method

.method public onCreateOpenAnimation(Landroid/animation/AnimatorSet;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setIsPopupDismissed(Z)V

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/PopupBlurView;->createBlurAnim(Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->addDeleteBgIndicatorView(Z)V

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_18

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    :cond_18
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupLauncherStateListener:Lcom/android/launcher3/popup/PopupLauncherStateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setIsPopupDismissed(Z)V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 7

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mDeferContainerRemoval:Z

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    instance-of v2, v1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v2, :cond_20

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    goto :goto_38

    :cond_20
    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v2, :cond_2f

    check-cast v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    goto :goto_38

    :cond_2f
    instance-of v2, v1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v2, :cond_38

    check-cast v1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {v1, p2, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView;->animCardAlpha(ZZ)V

    :cond_38
    :goto_38
    if-eqz v0, :cond_52

    const/4 v1, 0x0

    if-eqz p1, :cond_49

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_49

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne p1, p2, :cond_49

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    goto :goto_52

    :cond_49
    iget-object p1, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const-wide/16 v2, 0xc8

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-interface {p1, v2, v3, v0, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V

    :cond_52
    :goto_52
    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->handleClose(Z)V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getFirstCardPreviewAfterEnterSimpleMode()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->resetFirstCardPreviewAfterEnterSimpleMode()V

    :cond_e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mTouchDownLocation:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mTouchDownLocation:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isInShortcutArea(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    if-eqz v0, :cond_21

    return v1

    :cond_21
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_61

    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_61

    return v1

    :cond_61
    invoke-super {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_66
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/popup/ArrowPopup;->onLayout(ZIIII)V

    iget p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {p1}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->calculatePivotX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mTouchDownLocation:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isInShortcutArea(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    :cond_10
    invoke-super {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public openAnimationEnd()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->addScrollViewListener()V

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->playGuideScrollAnima()V

    return-void
.end method

.method public orientAboutObject()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->orientAboutWidget()V

    goto :goto_1d

    :cond_a
    instance-of v0, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->orientAboutCard()V

    goto :goto_1d

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->orientAboutPendingCard()V

    goto :goto_1d

    :cond_1a
    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->orientAboutIcon()V

    :goto_1d
    return-void
.end method

.method public populateAndShow(Landroid/view/View;Ljava/util/List;ILjava/util/List;Ljava/util/List;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5f

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {v6}, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_23

    instance-of v7, v6, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$ThemeMarketAreaWidgetEdit;

    if-eqz v7, :cond_44

    iget-object v7, v3, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v7

    const-string v8, "edit"

    invoke-virtual {v7, v0, v8}, Lcom/android/statistics/LauncherStatistics;->statShortcutExposureEvent(Landroid/view/View;Ljava/lang/String;)V

    :cond_44
    instance-of v7, v6, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$ThemeMarketAreaWidgetReplace;

    if-eqz v7, :cond_53

    iget-object v7, v3, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v7

    const-string v8, "change"

    invoke-virtual {v7, v0, v8}, Lcom/android/statistics/LauncherStatistics;->statShortcutExposureEvent(Landroid/view/View;Ljava/lang/String;)V

    :cond_53
    instance-of v7, v6, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$AppOpenNewWindow;

    if-eqz v7, :cond_5b

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_5b
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_5f
    iput-object v0, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPendingCardPreviewAvailable(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-static {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getCardConfigListForIcon(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_74
    iget v6, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    add-int v6, p3, v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v6

    const/4 v6, 0x0

    if-gtz v7, :cond_8b

    return v6

    :cond_8b
    instance-of v7, v0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v7, :cond_94

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/BubbleTextView;

    iput-object v7, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    :cond_94
    iput-object v3, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    if-lez v4, :cond_a5

    iget-object v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v4, v4, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v4, :cond_a5

    move v4, v7

    goto :goto_a6

    :cond_a5
    move v4, v6

    :goto_a6
    iput-boolean v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    if-eqz v4, :cond_d7

    const v4, 0x7f0d01e8

    invoke-virtual {v3, v4, v3}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    iput-object v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_d0

    const-string/jumbo v4, "populateAndShow mPendingCardContainer "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "OplusPopupContainerWithArrow"

    invoke-static {v8, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d0
    iget-object v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v4, :cond_d7

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->initCardPager(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_d7
    const v4, 0x7f0d01ef

    invoke-virtual {v3, v4, v3}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v4

    if-eqz v4, :cond_ee

    invoke-static {v7}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v4

    if-eqz v4, :cond_f6

    :cond_ee
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result v4

    if-eqz v4, :cond_110

    :cond_f6
    iget-object v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f06050a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-static {v8}, Lcom/android/common/util/ColorUtils;->removeOpacity(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_110
    iget-object v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    new-instance v8, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;

    invoke-direct {v8, v3}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    iget-object v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAllPopupShortcutContainer:Landroid/widget/FrameLayout;

    const v8, 0x7f0a0491

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupShortcutContainer:Landroid/widget/LinearLayout;

    iget-object v4, v3, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object v4

    const-string/jumbo v8, "popup_shortcut_show_guide"

    invoke-virtual {v4, v8, v7}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsShowGuideScrollAnima:Z

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const v8, 0x7f0d01b7

    const v9, 0x7f0d0241

    if-lez v4, :cond_1d3

    if-lez p3, :cond_1d3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f070716

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v10, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9, v10}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    :goto_15e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_1c2

    iget-object v10, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8, v10}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    move-object/from16 v10, p2

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v13

    sub-int v13, v4, v13

    invoke-virtual {v8}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1a8

    invoke-virtual {v8}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    int-to-float v13, v13

    cmpg-float v13, v14, v13

    if-gtz v13, :cond_1a8

    move v13, v7

    goto :goto_1a9

    :cond_1a8
    const/4 v13, 0x0

    :goto_1a9
    invoke-virtual {v8}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v14

    if-eqz v13, :cond_1b0

    goto :goto_1b4

    :cond_1b0
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v12

    :goto_1b4
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const v8, 0x7f0d01b7

    goto :goto_15e

    :cond_1c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->updateHiddenShortcuts()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d3

    const v4, 0x7f0d023a

    iget-object v6, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_1d3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23c

    iget-object v4, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9, v4}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    if-lez p3, :cond_1e7

    iput-boolean v7, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    :cond_1e7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1eb
    :goto_1eb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/popup/SystemShortcut;

    iget-object v6, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    const v8, 0x7f0d01b7

    invoke-virtual {v3, v8, v6, v4, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    invoke-virtual {v4}, Lcom/android/launcher3/popup/SystemShortcut;->isAddDivideLine()Z

    move-result v4

    if-eqz v4, :cond_1eb

    const v4, 0x7f0d023d

    iget-object v6, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1eb

    :cond_20e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_232

    const v1, 0x7f0d021c

    iget-object v4, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9, v1}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/SystemShortcut;

    const v6, 0x7f0d01b7

    invoke-virtual {v3, v6, v1, v2, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    goto :goto_233

    :cond_232
    const/4 v4, 0x0

    :goto_233
    if-lez p3, :cond_237

    move v0, v7

    goto :goto_238

    :cond_237
    move v0, v4

    :goto_238
    invoke-direct {v3, v0, v4}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->updateSystemShortcuts(ZZ)V

    goto :goto_23d

    :cond_23c
    const/4 v4, 0x0

    :goto_23d
    invoke-virtual {v3, v4}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->reorderAndShow(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getTitleForAccessibility()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v0, v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_27c

    iget v0, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_25b

    return v7

    :cond_25b
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v0, v3, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    move-object v1, v5

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/popup/PopupPopulator;->createUpdateRunnable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_27c
    return v7
.end method

.method public removeClosePopupContainerListener(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reorderAndShow(I)V
    .registers 12

    const-string p1, "OplusPopupContainerWithArrow"

    const-string/jumbo v0, "reorderAndShow"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$Companion;->setMIsShowDragBox(Z)V

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/launcher3/popup/PopupBlurView;->getPopBlurView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/launcher3/popup/PopupBlurView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isShortcutAboveIcon()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_c4

    iget-object v3, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v2

    :goto_3c
    if-ge v5, v3, :cond_4a

    iget-object v6, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_4a
    iget-boolean v5, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    if-eqz v5, :cond_7c

    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    :goto_55
    if-ge v6, v5, :cond_74

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    add-int/lit8 v8, v5, -0x1

    if-ne v6, v8, :cond_71

    iget-object v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-direct {p0, v8, v0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setDeepShortcutViewPadding(Landroid/view/View;ZZ)V

    invoke-direct {p0, v7, v2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setDeepShortcutViewPadding(Landroid/view/View;Z)V

    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    :cond_74
    if-lez v5, :cond_78

    move v5, v0

    goto :goto_79

    :cond_78
    move v5, v2

    :goto_79
    invoke-direct {p0, v5, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->updateSystemShortcuts(ZZ)V

    :cond_7c
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v2

    :goto_85
    if-ge v0, v3, :cond_95

    iget-object v5, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    :cond_95
    iget-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    if-eqz v0, :cond_c4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v2

    :goto_a3
    if-ge v4, v0, :cond_af

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    :cond_af
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v4, v2

    :goto_b6
    if-ge v4, v0, :cond_c4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    :cond_c4
    invoke-virtual {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->orientAboutObject()V

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v0, :cond_de

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    if-eqz v4, :cond_da

    iget-object v3, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_da
    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto :goto_df

    :cond_de
    move-object v0, v3

    :goto_df
    instance-of v2, v3, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    const v4, 0x7f0a023e

    if-eqz v2, :cond_ed

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_ed
    instance-of v2, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v2, :cond_f8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f8
    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->onInflationComplete(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateOpen()V

    return-void
.end method

.method public updateHiddenShortcuts()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->setDeepShortcutViewPadding(Landroid/view/View;Z)V

    return-void
.end method

.method public updateNotificationHeader()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-nez v0, :cond_f

    const-class p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const-string p0, "PopupContainerWithArrow"

    const-string/jumbo v0, "updateNotificationHeader: mOriginalIcon is null."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-super {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    return-void
.end method
