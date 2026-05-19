.class public Lcom/android/launcher3/folder/Folder;
.super Lcom/android/launcher3/AbstractFloatingView;
.source ""

# interfaces
.implements Lcom/android/launcher3/views/ClipPathView;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/model/data/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;,
        Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;,
        Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;,
        Lcom/android/launcher3/folder/Folder$OnScrollHintListener;,
        Lcom/android/launcher3/folder/Folder$FolderState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final FOLDER_COLOR_ANIMATION_DURATION:I = 0xc8

.field private static final FOLDER_LABEL_DELIMITER:Ljava/lang/CharSequence;

.field public static final FOLDER_NAME_ANIMATION_DURATION:I = 0x279

.field private static final ICON_OVERSCROLL_WIDTH_FACTOR:F = 0.45f

.field public static final ITEM_POS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIN_CONTENT_DIMEN:I = 0x5

.field private static final MIN_FOLDERS_FOR_HARDWARE_OPTIMIZATION:I = 0xa

.field public static final ON_EXIT_CLOSE_DELAY:I = 0x1e0

.field private static final REORDER_DELAY:I = 0xc8

.field private static final RESCROLL_EXTRA_DELAY:I = 0x96

.field public static final SCROLL_HINT_DURATION:I = 0x1f4

.field public static final SCROLL_LEFT:I = 0x0

.field public static final SCROLL_NONE:I = -0x1

.field public static final SCROLL_RIGHT:I = 0x1

.field public static final STATE_ANIMATING:I = 0x1

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_OPEN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field public static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field public mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field public mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mClipPath:Landroid/graphics/Path;

.field public mContent:Lcom/android/launcher3/folder/FolderPagedView;

.field public mCurrentAnimator:Landroid/animation/Animator;

.field private mCurrentDragView:Landroid/view/View;

.field public mCurrentScrollDir:I

.field public mDeleteFolderOnDropCompleted:Z

.field private mDestroyed:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field public mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field public mDragInProgress:Z

.field public mEmptyCellRank:I

.field public mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field public mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

.field public mFooter:Landroid/view/View;

.field public mFooterHeight:I

.field private mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field private mFromTitle:Ljava/lang/CharSequence;

.field public mInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field public mIsAnimatingClosed:Z

.field public mIsEditingName:Z

.field public mIsExternalDrag:Z

.field public mIsOpenForRename:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field public final mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mItemsInvalidated:Z

.field private mKeyboardInsetAnimationCallback:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

.field public mNeedShowRollbackItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnExitAlarm:Lcom/android/launcher3/Alarm;

.field public mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private mOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

.field private final mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

.field public mPrevTargetRank:I

.field public mRearrangeOnClose:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field public final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field public mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field public mRollbackRearrangeChildrenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollAreaOffset:I

.field public mScrollHintDir:I

.field public final mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

.field public mState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "STATE_CLOSED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "STATE_ANIMATING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "STATE_OPEN"
            .end subannotation
        }
    .end annotation
.end field

.field public mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field public mSuppressFolderDeletion:Z

.field public mTargetRank:I

.field public sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "~"

    sput-object v0, Lcom/android/launcher3/folder/Folder;->FOLDER_LABEL_DELIMITER:Ljava/lang/CharSequence;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/folder/Folder$9;

    invoke-direct {v0}, Lcom/android/launcher3/folder/Folder$9;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/launcher3/Alarm;

    invoke-direct {p2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    new-instance p2, Lcom/android/launcher3/Alarm;

    invoke-direct {p2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    new-instance p2, Lcom/android/launcher3/Alarm;

    invoke-direct {p2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    new-instance p2, Lcom/android/launcher3/Alarm;

    invoke-direct {p2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    iput p2, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mRollbackRearrangeChildrenViews:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mNeedShowRollbackItems:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    const-class v0, Lcom/android/launcher3/folder/IFolderExt;

    invoke-static {v0}, Lcom/oplus/ext/core/ExtLoader;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/IFolderExt;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mIsOpenForRename:Z

    new-instance v0, Lcom/android/launcher3/folder/Folder$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$6;-><init>(Lcom/android/launcher3/folder/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    new-instance v0, Lcom/android/launcher3/folder/Folder$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$7;-><init>(Lcom/android/launcher3/folder/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/views/ActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p2}, Lcom/android/launcher3/folder/LauncherDelegate;->from(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/LauncherDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/Folder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->lambda$updateItemLocationsInDatabaseBatch$7()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/folder/Folder;)Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mKeyboardInsetAnimationCallback:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    return-object p0
.end method

.method private addAnimatorListenerForPage(Landroid/animation/Animator;Lcom/android/launcher3/CellLayout;)V
    .registers 6

    invoke-direct {p0, p2}, Lcom/android/launcher3/folder/Folder;->shouldUseHardwareLayerForAnimation(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->isHardwareLayerEnabled()Z

    move-result v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$3;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/android/launcher3/folder/Folder$3;-><init>(Lcom/android/launcher3/folder/Folder;ZLcom/android/launcher3/CellLayout;Z)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animateClosed()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->cancelRunningAnimations()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher3/folder/IFolderExt;->getFolderAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/Folder$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$5;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->startAnimation(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/OplusDragLayer;Landroid/animation/Animator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->lambda$animateOpen$6(Lcom/android/launcher3/OplusDragLayer;Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->lambda$showLabelSuggestions$2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private clearDragInfo()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/folder/Folder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->lambda$bind$1()V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->lambda$getViewForInfo$8(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/android/launcher3/folder/Folder;Landroid/animation/Animator;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->lambda$startAnimation$4(Landroid/animation/Animator;Landroid/view/View;)V

    return-void
.end method

.method public static fromXml(Landroid/content/Context;)Lcom/android/launcher3/folder/Folder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)",
            "Lcom/android/launcher3/folder/Folder;"
        }
    .end annotation

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0281

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public static synthetic g(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->lambda$getIconsInReadingOrder$9(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private getFolderHeight(I)I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    add-int/2addr v1, p0

    return v1
.end method

.method private getHeightFromBottom()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    sub-int/2addr p0, v1

    return p0
.end method

.method public static getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher3/folder/Folder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->lambda$startEditingFolderName$0()V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/folder/Folder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->lambda$animateOpen$5()V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/folder/Folder;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->lambda$showLabelSuggestions$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$animateOpen$5()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$animateOpen$6(Lcom/android/launcher3/OplusDragLayer;Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/folder/IFolderExt;->setFolderRealOpened(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0, v1, v1}, Lcom/android/launcher3/folder/IFolderExt;->startDragLayerAnimation(ZZ)V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/launcher3/OplusDragLayer;->showGaussianBlurViewForFolder()V

    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/Folder;->startAnimation(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p0}, Lcom/android/launcher3/folder/IFolderExt;->getHostView()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->resetMoveInValidAera()V

    return-void
.end method

.method private synthetic lambda$bind$1()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    :cond_a
    return-void
.end method

.method private synthetic lambda$getIconsInReadingOrder$9(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getViewForInfo$8(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private static synthetic lambda$showLabelSuggestions$2(Ljava/lang/String;)Z
    .registers 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$showLabelSuggestions$3(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$startAnimation$4(Landroid/animation/Animator;Landroid/view/View;)V
    .registers 3

    check-cast p2, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->addAnimatorListenerForPage(Landroid/animation/Animator;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method private synthetic lambda$startEditingFolderName$0()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->showLabelSuggestions()V

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    return-void
.end method

.method private synthetic lambda$updateItemLocationsInDatabaseBatch$7()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderNameProvider;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/folder/FolderNameProvider;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/List;Lcom/android/launcher3/folder/FolderNameInfos;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    return-void
.end method

.method private shouldUseHardwareLayerForAnimation(Lcom/android/launcher3/CellLayout;)Z
    .registers 7

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    return v0

    :cond_a
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    if-ltz p1, :cond_29

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_20

    return v1

    :cond_20
    instance-of v3, v3, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_26

    add-int/lit8 v2, v2, 0x1

    :cond_26
    add-int/lit8 p1, p1, -0x1

    goto :goto_15

    :cond_29
    const/16 p0, 0xa

    if-lt v2, p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0
.end method

.method private showLabelSuggestions()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasSuggestions()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasPrimary()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/h2;->c:Lcom/android/launcher3/h2;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/d2;->c:Lcom/android/launcher3/d2;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/folder/c;->b:Lcom/android/launcher3/folder/c;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/badge/f;

    invoke-direct {v2, p0}, Lcom/android/launcher/badge/f;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/FolderNameEditText;->displayCompletions(Ljava/util/List;)V

    :cond_7a
    return-void
.end method

.method private showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    if-eq v0, p1, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->showScrollHint(I)V

    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    if-eq v0, p1, :cond_38

    :cond_17
    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    :cond_38
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 3

    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 p1, 0x1

    if-eqz p0, :cond_12

    const/4 v0, 0x6

    if-eq p0, v0, :cond_12

    if-eq p0, p1, :cond_12

    const/16 v0, 0x65

    if-ne p0, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :cond_12
    :goto_12
    return p1
.end method

.method public animateOpen()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/Folder;->animateOpen(Ljava/util/List;I)V

    return-void
.end method

.method public animateOpen(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getAnyView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_2d

    if-eq v0, p0, :cond_2d

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v2}, Lcom/android/launcher3/folder/IFolderExt;->isFolderRealOpened()Z

    move-result v2

    const-string v3, "Launcher.Folder"

    const-string v4, "Folder"

    if-nez v2, :cond_27

    iget-boolean v2, v0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v2, :cond_1e

    goto :goto_27

    :cond_1e
    const-string v2, " animateOpen: last folder is closing, should to end animation"

    invoke-static {v4, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->cancelRunningAnimations()V

    goto :goto_2d

    :cond_27
    :goto_27
    const-string p0, " animateOpen: last folder is opening, return"

    invoke-static {v4, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->bindItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p1}, Lcom/android/launcher3/folder/IFolderExt;->reLayoutChildren()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->centerAboutIcon()V

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mIsOpenForRename:Z

    if-eqz p1, :cond_4b

    new-instance p1, Landroidx/recyclerview/widget/a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4b
    iput-boolean v1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6a

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->addDragScrollerTarget()V

    :cond_6a
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->animateDot()V

    if-eqz p1, :cond_74

    invoke-virtual {p1}, Lcom/android/launcher3/OplusDragLayer;->resetGaussianAnimState()V

    :cond_74
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->cancelRunningAnimations()V

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p2, v1}, Lcom/android/launcher3/folder/IFolderExt;->getFolderAnimator(Z)Landroid/animation/Animator;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->initFolderAnimationManager()V

    new-instance v0, Lcom/android/launcher3/folder/Folder$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$4;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/OplusDragLayer;Landroid/animation/Animator;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-eqz p1, :cond_b2

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    :cond_b2
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    return-void
.end method

.method public beginExternalDrag()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/Folder;->animateOpen(Ljava/util/List;I)V

    return-void
.end method

.method public bind(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iput-boolean p1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2a
    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4b

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_5a

    :cond_4b
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const v0, 0x7f120269

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    :goto_5a
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    new-instance v0, Lcom/android/launcher3/folder/s;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/s;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public canInterceptEventsInSystemGestureRegion()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public cancelRunningAnimations()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method

.method public centerAboutIcon()V
    .registers 13

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getFolderWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    sget-object v5, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v1, v6

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v4, v7

    iget-object v8, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v8}, Lcom/android/launcher3/views/ActivityContext;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    invoke-static {v1, v8, v9}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v3

    invoke-static {v4, v9, v10}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v9

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v8, v10, v11

    const/4 v8, 0x1

    aput v9, v10, v8

    iget-object v9, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v9, v10, v5, v2, v3}, Lcom/android/launcher3/views/ActivityContext;->updateOpenFolderPosition([ILandroid/graphics/Rect;II)V

    aget v5, v10, v11

    aget v8, v10, v8

    sub-int/2addr v1, v5

    add-int/2addr v1, v6

    sub-int/2addr v4, v8

    add-int/2addr v4, v7

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    int-to-float v1, v4

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iput v8, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v11, v11, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    return-void
.end method

.method public checkDestroyed()V
    .registers 4

    const-string v0, "checkDestroyed: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Folder"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_49

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    if-gt v0, v2, :cond_3f

    :cond_31
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v1

    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_49

    if-eqz v2, :cond_49

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    :cond_49
    return-void
.end method

.method public closeComplete(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->closeCompleteEntryPoint()V

    :cond_1e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_66

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->animateBgShadowAndStroke()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->onFolderClose(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    goto :goto_66

    :cond_4e
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p1}, Lcom/android/launcher3/folder/IFolderExt;->updateDoteState()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p1

    if-eqz p1, :cond_66

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recreateCurrentPage()V

    :cond_66
    :goto_66
    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    if-eqz p1, :cond_6d

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    :cond_6d
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    if-gt p1, v1, :cond_84

    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez p1, :cond_7f

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    if-nez v0, :cond_7f

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    goto :goto_8d

    :cond_7f
    if-eqz p1, :cond_8d

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    goto :goto_8d

    :cond_84
    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez p1, :cond_8d

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->unbindItems()V

    :cond_8d
    :goto_8d
    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->clearDragInfo()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setState(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    instance-of p1, p1, Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_a5

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p0}, Lcom/android/launcher3/folder/IFolderExt;->closeCompleteExitPoint()V

    :cond_a5
    return-void
.end method

.method public completeDragExit()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_18

    :cond_b
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne v0, v1, :cond_12

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_18

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->clearDragInfo()V

    :goto_18
    return-void
.end method

.method public createFolderGridOrganizer(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/FolderGridOrganizer;
    .registers 2

    instance-of p1, p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p1, :cond_12

    new-instance p1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderGridOrganizer;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-object p1

    :cond_12
    new-instance p1, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-object p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_21

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_21
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public endRunningAnimations()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_f
    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .registers 4

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityInitialFocusView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->getAccessibilityInitialFocusView()Landroid/view/View;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getAccessibilityTarget()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120265

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_16
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method public getContent()Lcom/android/launcher3/folder/FolderPagedView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    return-object p0
.end method

.method public getContentAreaHeight()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    sub-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getContentAreaWidth()I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v0, 0x5

    if-nez p0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getDragProgress()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    return p0
.end method

.method public getFolderHeight()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight(I)I

    move-result p0

    return p0
.end method

.method public getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    return-object p0
.end method

.method public getFolderWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public getIconsInReadingOrder()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v1, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    :cond_16
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemsOnPage(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result p0

    if-ne p1, v1, :cond_1c

    mul-int v1, p0, p1

    sub-int/2addr v2, v1

    goto :goto_1d

    :cond_1c
    move v2, p0

    :goto_1d
    mul-int/2addr p1, p0

    add-int p0, p1, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2d
    if-ge p1, p0, :cond_3b

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    :cond_3b
    return-object v1
.end method

.method public getLauncher()Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public getState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    return p0
.end method

.method public getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I
    .registers 5

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {p2, v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->findNearestArea(II)I

    move-result p0

    return p0
.end method

.method public getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v0, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v0, p1}, Lcom/android/exceptionmonitor/util/d;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public handleClose(Z)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez p1, :cond_14

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_14
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    :cond_1f
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->clearLeaveBehindIfExists()V

    :cond_26
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    instance-of v2, v2, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-interface {v1, p1, v2}, Lcom/android/launcher3/folder/IFolderExt;->fadeGaussianBlurState(ZZ)V

    if-eqz p1, :cond_35

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->animateClosed()V

    goto :goto_40

    :cond_35
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    new-instance p1, Landroidx/appcompat/widget/g;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_40
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p1, v0}, Lcom/android/launcher3/folder/IFolderExt;->setFolderRealOpened(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p0}, Lcom/android/launcher3/folder/IFolderExt;->onDragExitExitPoint()V

    return-void
.end method

.method public hasReorderAnimatorRunning()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->hasReorderAnimatorRunning()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_21
    return v1
.end method

.method public hideItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public ifOnExitAlarmPending()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result p0

    return p0
.end method

.method public isAnimateClosing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    return p0
.end method

.method public isDestroyed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    return p0
.end method

.method public isDropEnabled()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEditingName()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    return p0
.end method

.method public isLayoutRtl()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isOfType(I)Z
    .registers 2

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-eqz p1, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    return-void
.end method

.method public notifyDrop()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    :cond_7
    return-void
.end method

.method public onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->createFolderGridOrganizer(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->areViewsBound()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/view/View;

    :cond_33
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method public onBackKey()Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/model/data/FolderInfo;->setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderIcon;->onTitleChanged(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const v2, 0x7f120269

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    :cond_34
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_3a
    const/16 v1, 0x20

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120275

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v6, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iput-boolean v6, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    return v4
.end method

.method public onBackPressed()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    goto :goto_1c

    :cond_c
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->closeVirtualFolderIfOpened()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()Z

    :goto_1c
    const/4 p0, 0x1

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_22

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    return v3

    :cond_22
    return v1

    :cond_23
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2, p1, v0, p0}, Lcom/android/launcher3/folder/LauncherDelegate;->interceptOutsideTouch(Landroid/view/MotionEvent;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/folder/Folder;)Z

    move-result p0

    if-eqz p0, :cond_32

    return v3

    :cond_32
    return v1
.end method

.method public onDragEnd()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegionWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_20

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result p1

    if-nez p1, :cond_20

    :cond_12
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x1e0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_20
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3b

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->clearScrollHint()V

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    :cond_3b
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p0}, Lcom/android/launcher3/folder/IFolderExt;->onDragExitExitPoint()V

    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_bf

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    if-nez v0, :cond_e

    goto/16 :goto_bf

    :cond_e
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iget v2, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_51

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_51

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f1203a3

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_51
    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_62

    return-void

    :cond_62
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3ee66666  # 0.45f

    mul-float/2addr v2, v5

    cmpg-float v5, v0, v2

    if-gez v5, :cond_77

    move v5, v4

    goto :goto_78

    :cond_77
    move v5, v3

    :goto_78
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    cmpl-float v0, v0, v6

    if-lez v0, :cond_84

    move v0, v4

    goto :goto_85

    :cond_84
    move v0, v3

    :goto_85
    if-lez v1, :cond_96

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v2, v2, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v2, :cond_90

    if-eqz v0, :cond_96

    goto :goto_92

    :cond_90
    if-eqz v5, :cond_96

    :goto_92
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/folder/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_bf

    :cond_96
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_ae

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v1, v1, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v1, :cond_a8

    if-eqz v5, :cond_ae

    goto :goto_aa

    :cond_a8
    if-eqz v0, :cond_ae

    :goto_aa
    invoke-direct {p0, v4, p1}, Lcom/android/launcher3/folder/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_bf

    :cond_ae
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_bf

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->clearScrollHint()V

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    :cond_bf
    :goto_bf
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 5

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq p2, p0, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of p2, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v0, 0x1

    if-eqz p2, :cond_31

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    new-instance p2, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    :try_start_1a
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_27

    invoke-virtual {p2}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    goto :goto_31

    :catchall_27
    move-exception p0

    :try_start_28
    invoke-virtual {p2}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw p0

    :cond_31
    :goto_31
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p0}, Lcom/android/launcher3/folder/IFolderExt;->onDragStartExitPoint()V

    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v3, v0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_26

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/folder/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v4, v0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {v2, v4}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_26
    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v4

    if-nez v4, :cond_34

    return-void

    :cond_34
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v5, v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v5, :cond_3e

    check-cast v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    move-object v5, v2

    goto :goto_3f

    :cond_3e
    move-object v5, v3

    :goto_3f
    if-eqz v5, :cond_48

    iget-object v2, v5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    goto :goto_49

    :cond_48
    move-object v2, v3

    :goto_49
    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v5, :cond_69

    if-nez v2, :cond_69

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v2, v0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 v8, 0x0

    iget v9, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v10, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    iput-boolean v12, v1, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iput-boolean v11, v0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto/16 :goto_111

    :cond_69
    const-string/jumbo v5, "onDrop: mIsExternalDrag="

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    const-string v7, "Launcher.Folder"

    invoke-static {v5, v6, v7}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v2, :cond_7a

    goto :goto_89

    :cond_7a
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v5, v2, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v5, :cond_87

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    invoke-interface {v2, v4}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    goto :goto_89

    :cond_87
    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    :goto_89
    iget-boolean v5, v0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    if-eqz v5, :cond_b0

    iget-object v5, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v6, v0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v5, v2, v6}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v13

    iget-object v6, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v15, v6, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/16 v16, 0x0

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v14, v2

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iput-boolean v12, v0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    goto :goto_c9

    :cond_b0
    iget-object v5, v0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    if-nez v5, :cond_c2

    const-string v2, "mCurrentDragView is null, Canceled."

    invoke-static {v7, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v2, v1, v12}, Lcom/android/launcher3/folder/Folder;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    return-void

    :cond_c2
    iget-object v6, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v7, v0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v6, v5, v2, v7}, Lcom/android/launcher3/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    :goto_c9
    iget-object v6, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v6

    if-eqz v6, :cond_f1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result v7

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setScaleY(F)V

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v4

    iget-object v8, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v4, v8, v5, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setScaleY(F)V

    goto :goto_f6

    :cond_f1
    iput-boolean v12, v1, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_f6
    iput-boolean v11, v0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    new-instance v3, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v3, v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    :try_start_100
    iget-object v4, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v5, v0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v4, v2, v5, v12}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V
    :try_end_107
    .catchall {:try_start_100 .. :try_end_107} :catchall_153

    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v2, v0, :cond_111

    invoke-virtual {v0, v12}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    :cond_111
    :goto_111
    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v2, v1}, Lcom/android/launcher3/folder/IFolderExt;->enableFeatureTraceLauncherLayout(Lcom/android/launcher3/DropTarget$DragObject;)V

    iput-boolean v12, v0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-le v2, v11, :cond_12c

    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v3, 0x4

    iget-object v4, v0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    invoke-virtual {v2, v3, v11, v4}, Lcom/android/launcher3/model/data/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    :cond_12c
    iget-object v2, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v2}, Lcom/android/launcher3/folder/IFolderExt;->onDropExitPoint()V

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v2, :cond_13b

    const v3, 0x7f1202f7

    invoke-virtual {v2, v3}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    :cond_13b
    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void

    :catchall_153
    move-exception v0

    move-object v1, v0

    :try_start_155
    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_158
    .catchall {:try_start_155 .. :try_end_158} :catchall_159

    goto :goto_15e

    :catchall_159
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15e
    throw v1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 11

    instance-of v0, p2, Lcom/android/launcher/batchdrag/BatchDragObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    goto :goto_76

    :cond_17
    if-eqz p3, :cond_27

    iget-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz p2, :cond_76

    iget-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez p2, :cond_76

    if-eq p1, p0, :cond_76

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    goto :goto_76

    :cond_27
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_38

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_38

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    goto :goto_3e

    :cond_38
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v4

    :goto_3e
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/folder/Folder;->mRollbackRearrangeChildrenViews:Ljava/util/ArrayList;

    iget v6, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v6, v3, v5}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mRollbackRearrangeChildrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne v0, v2, :cond_5c

    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_69

    :cond_5c
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPagedView;->sOPlusFolderPagedViewExtV2:Lcom/android/launcher3/folder/IFolderPagedViewExt;

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mRollbackRearrangeChildrenViews:Ljava/util/ArrayList;

    invoke-interface {v0, v4, v3}, Lcom/android/launcher3/folder/IFolderPagedViewExt;->arrangeChildren(Ljava/util/List;Z)V

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mRollbackRearrangeChildrenViews:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    :goto_69
    new-instance v0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    :try_start_6e
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4, p2, v2}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_b5

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    :cond_76
    :goto_76
    if-eq p1, p0, :cond_91

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result p1

    if-eqz p1, :cond_91

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    if-nez p3, :cond_89

    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    :cond_89
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_91
    iput-boolean v3, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    iput-boolean v3, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    iput-boolean v3, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result p2

    if-gt p1, p2, :cond_b4

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 p2, 0x4

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p1, p2, v3, p0}, Lcom/android/launcher3/model/data/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    :cond_b4
    return-void

    :catchall_b5
    move-exception p0

    :try_start_b6
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_be

    :catchall_ba
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_be
    throw p0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x6

    if-ne p2, p1, :cond_a

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public onFinishInflate()V
    .registers 6

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f080939

    invoke-static {v2, v4, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    const v2, 0x7f0a02b4

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/folder/FolderPagedView;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v1}, Lcom/android/launcher3/folder/IFolderExt;->onFinishInflateEntryPoint()V

    const v1, 0x7f0a02bb

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderNameEditText;

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextSizePx:I

    int-to-float v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    const v3, -0x8001

    and-int/2addr v2, v3

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->forceDisableSuggestions(Z)V

    const v0, 0x7f0a02b7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070835

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mKeyboardInsetAnimationCallback:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    :cond_99
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    if-ne p1, v0, :cond_24

    if-eqz p2, :cond_21

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_f

    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mIsOpenForRename:Z

    if-eqz p1, :cond_21

    :cond_f
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->startEditingFolderName()V

    goto :goto_24

    :cond_21
    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    :cond_24
    :goto_24
    return-void
.end method

.method public onItemsChanged(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    new-instance v0, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z

    move-result p0

    return p0
.end method

.method public onMeasure(II)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result p2

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;->setFixedSize(II)V

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_59

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_59
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    invoke-direct {p0, p2}, Lcom/android/launcher3/folder/Folder;->getFolderHeight(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRecommendContentChanged()V
    .registers 1

    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/launcher3/folder/b;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/b;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/g;

    invoke-direct {v2, v1}, Lcom/android/launcher3/g;-><init>(Lcom/android/launcher3/folder/FolderPagedView;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne p1, v0, :cond_24

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_27

    :cond_24
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    :goto_27
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    if-gt p1, v0, :cond_38

    iget-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz p1, :cond_35

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_38

    :cond_35
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    :cond_38
    :goto_38
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {v0, p0}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    :cond_14
    return-void
.end method

.method public rearrangeChildren()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->areViewsBound()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    goto :goto_2c

    :cond_1d
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPagedView;->sOPlusFolderPagedViewExtV2:Lcom/android/launcher3/folder/IFolderPagedViewExt;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mRollbackRearrangeChildrenViews:Ljava/util/ArrayList;

    if-nez v2, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    :cond_29
    invoke-interface {v0, v2, v1}, Lcom/android/launcher3/folder/IFolderPagedViewExt;->arrangeChildren(Ljava/util/List;Z)V

    :goto_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mRollbackRearrangeChildrenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mNeedShowRollbackItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_3a

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v3, v2}, Lcom/android/launcher3/folder/IFolderExt;->showItems(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mNeedShowRollbackItems:Ljava/util/ArrayList;

    :cond_3a
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    return-void
.end method

.method public replaceFolderWithFinalItem()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/LauncherDelegate;->replaceFolderWithFinalItem(Lcom/android/launcher3/folder/Folder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    return-void
.end method

.method public resetOnExitAlarm()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x1e0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setDragController(Lcom/android/launcher3/dragndrop/DragController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    return-void
.end method

.method public setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/folder/LauncherDelegate;->init(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderIcon;)V

    return-void
.end method

.method public setIsOpenForRename(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mIsOpenForRename:Z

    return-void
.end method

.method public setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V
    .registers 2
    .param p1  # Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    return-void
.end method

.method public setState(I)V
    .registers 5

    const-string/jumbo v0, "newState = "

    const-string v1, ", caller = "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "Launcher.Folder"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    if-eqz p0, :cond_18

    invoke-interface {p0, p1}, Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;->onFolderStateChanged(I)V

    :cond_18
    return-void
.end method

.method public showItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public startAnimation(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    new-instance v1, Lcom/android/launcher/model/c;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/model/c;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/LauncherDelegate;->forEachVisibleWorkspacePage(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/launcher3/folder/Folder$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/folder/Folder$2;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_3f

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v1, Lcom/android/launcher3/folder/Folder$1;

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    sget-object v4, Lcom/android/launcher3/c2;->c:Lcom/android/launcher3/c2;

    invoke-direct {v1, p0, v3, v4}, Lcom/android/launcher3/folder/Folder$1;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/view/ViewGroup;Ljava/util/function/Function;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_28
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_3a

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iget-object v1, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForLongClick()V

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->forceHideDot(ZZ)V

    :cond_3a
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/launcher3/folder/LauncherDelegate;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    :cond_3f
    return v2
.end method

.method public startEditingFolderName()V
    .registers 2

    new-instance v0, Landroidx/core/widget/b;

    invoke-direct {v0, p0}, Landroidx/core/widget/b;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateAllReorderWithoutAnimator()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->updateAllReorderWithoutAnimator()V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_20
    return-void
.end method

.method public updateItemLocationsInDatabaseBatch(Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->createFolderGridOrganizer(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_33

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v5, v5, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v5, v4}, Lcom/android/launcher3/folder/FolderGridOrganizer;->updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_33
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/launcher3/model/ModelWriter;->moveItemsInDatabase(Ljava/util/ArrayList;II)V

    :cond_46
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_5d

    if-nez p1, :cond_5d

    const/4 p1, 0x1

    if-le v2, p1, :cond_5d

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/folder/a;

    invoke-direct {v0, p0, v3}, Lcom/android/launcher3/folder/a;-><init>(Lcom/android/launcher3/folder/Folder;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_5d
    return-void
.end method

.method public updateTextViewFocus()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_62

    if-eqz v1, :cond_62

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusRightId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusLeftId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusForwardId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setNextFocusDownId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setNextFocusUpId(I)V

    new-instance v0, Lcom/android/launcher3/folder/Folder$8;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/folder/Folder$8;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_66

    :cond_62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_66
    return-void
.end method
