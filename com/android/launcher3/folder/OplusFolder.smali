.class public Lcom/android/launcher3/folder/OplusFolder;
.super Lcom/android/launcher3/folder/Folder;
.source ""

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher/batchdrag/OplusBatchDragSource;
.implements Lcom/oplus/screenshot/OplusLongshotUnsupported;
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;
.implements Lcom/android/launcher/folder/recommend/DialogDismissCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/OplusFolder$FolderItemComparator;,
        Lcom/android/launcher3/folder/OplusFolder$SuppressAllInfoChanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/folder/Folder;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher/batchdrag/OplusBatchDragSource;",
        "Lcom/oplus/screenshot/OplusLongshotUnsupported;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher/folder/recommend/DialogDismissCallback;"
    }
.end annotation


# static fields
.field private static final DELAYED_CLOSE_FOLDER_TIME:I = 0x32

.field private static final DELAY_1000:I = 0x3e8

.field private static final FOLDER_GUID_ANIMATION_SCALE:F = 0.3f

.field private static final PREF_KEY_SIMPLE_FOLDER_GUID_LEFT:Ljava/lang/String; = "sp_key_simple_folder_guid_left"

.field private static final PREF_KEY_SIMPLE_FOLDER_GUID_RIGHT:Ljava/lang/String; = "sp_key_simple_folder_guid_right"

.field private static final SHOW_RECOMMEND_DELAY:J = 0x10L

.field private static final SPAN_X_ONE:I = 0x1

.field private static final SPAN_Y_ONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OplusFolder"


# instance fields
.field private mActionDownPoint:Landroid/graphics/PointF;

.field public mContentAnimationBackground:Landroid/widget/ImageView;

.field public mContentBackground:Landroid/widget/ImageView;

.field private mDragItemPendingAddBack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field public mFolderContentRoot:Landroid/widget/FrameLayout;

.field private mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mFolderHeaderHeight:I

.field private mFolderNameClear:Landroid/widget/ImageView;

.field public mFolderRecommendSetting:Landroid/widget/ImageView;

.field private mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mIndicatorActualMarginBottom:I

.field private mIsGuidShown:Z

.field public mIsLongPressEventOccur:Z

.field private mIsTouchMoveEvent:Z

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLongPressEnable:Z

.field private mMoveInValidAera:Z

.field private final mOnExitToastAlarm:Lcom/android/launcher3/Alarm;

.field private mOnExitToastListener:Lcom/android/launcher3/OnAlarmListener;

.field private mRecommendSettingDialogHelper:Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;

.field private mRecommendSettingOnClickListener:Landroid/view/View$OnClickListener;

.field private mSharePf:Landroid/content/SharedPreferences;

.field private mSimpleGuidAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

.field private mSimpleGuidLayout:Landroid/widget/RelativeLayout;

.field private mSimpleGuidStub:Landroid/view/ViewStub;

.field private mSimpleGuidTextView:Landroidx/appcompat/widget/AppCompatTextView;

.field private mSourceStartBatchDrag:Z

.field public mTextWatcher:Landroid/text/TextWatcher;

.field private mValidDragHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/launcher3/Alarm;

    invoke-direct {p2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mOnExitToastAlarm:Lcom/android/launcher3/Alarm;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsLongPressEventOccur:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mOnExitToastListener:Lcom/android/launcher3/OnAlarmListener;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mSourceStartBatchDrag:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mDragItemPendingAddBack:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mMoveInValidAera:Z

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsTouchMoveEvent:Z

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mLongPressEnable:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mActionDownPoint:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsGuidShown:Z

    iput p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicatorActualMarginBottom:I

    new-instance p2, Lcom/android/launcher3/folder/OplusFolder$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/OplusFolder$1;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    new-instance p2, Lcom/android/launcher3/folder/OplusFolder$6;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/OplusFolder$6;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-boolean p2, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    if-eqz p2, :cond_48

    const p2, 0x7f080628

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_48
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mSharePf:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/folder/OplusFolder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLongPressEnable:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/folder/OplusFolder;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderNameClear:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/folder/OplusFolder;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/folder/OplusFolder;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/folder/OplusFolder;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private applyDragState(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_1d
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    if-eqz p1, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setSecondaryTitle(IZ)V

    :cond_40
    return-void
.end method

.method private cancelSimpleGuid()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private checkFolderIconExist()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a2

    const-string v0, "Folder"

    const-string v1, "OplusFolder"

    const-string v2, "checkFolderIconExist -- need re-add the folder icon"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_81

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v2

    if-eqz v2, :cond_33

    instance-of v2, v1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v2, :cond_33

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusCellLayout;->revertTempStateCompletely()V

    :cond_33
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v2

    if-eqz v2, :cond_5e

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v4, 0x0

    aget v4, v2, v4

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v2, v2, v3

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_5e
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    goto :goto_a2

    :cond_81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can not find parent layout for folder icon: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a2
    :goto_a2
    return-void
.end method

.method private dispatchRecommendOnRemove(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/common/util/o;

    invoke-direct {v0, p0}, Lcom/android/common/util/o;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/common/a;

    invoke-direct {v2, v0}, Lcom/android/common/a;-><init>(Lcom/android/launcher3/folder/FolderPagedView;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne p1, v1, :cond_2a

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_2d

    :cond_2a
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    if-nez p1, :cond_50

    iget-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    if-nez p1, :cond_3f

    move v0, v1

    :cond_3f
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/OplusFolder;->replaceFolderWithFinalItem(ZZ)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_50

    :cond_46
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    if-nez p1, :cond_4d

    move v0, v1

    :cond_4d
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/OplusFolder;->replaceFolderWithFinalItem(ZZ)V

    :cond_50
    :goto_50
    return-void
.end method

.method public static fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d01dc

    invoke-virtual {p0, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/Folder;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-object v0, p0

    goto :goto_14

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-object v0
.end method

.method private isTouchToggleBarDoneButton(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->getDoneButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->lambda$onStateTransitionComplete$0()V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/folder/OplusFolder;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->lambda$onFinishInflate$2(Z)V

    return-void
.end method

.method private synthetic lambda$animateOpen$4(Lcom/android/launcher3/Alarm;)V
    .registers 3

    const-string p1, "OplusFolder"

    const-string v0, "folderOpen: folder exposed "

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/download/ReportController;->findCurrentPageItems(Lcom/android/launcher3/folder/OplusFolder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher/folder/download/ReportController;->reportAppsExposed(ILjava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$animateOpen$5(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->loadFolderIconDrawable()V

    return-void
.end method

.method private synthetic lambda$handleClose$10(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->isFolderRealOpened()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "Folder"

    const-string v1, "OplusFolder"

    const-string/jumbo v2, "super.handleClose still execute to make sure close"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/Folder;->handleClose(Z)V

    :cond_15
    return-void
.end method

.method private synthetic lambda$handleClose$9(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->handleClose(Z)V

    return-void
.end method

.method private synthetic lambda$onBackKey$7()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    const/4 v2, 0x4

    if-lt p0, v2, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    invoke-virtual {v0, v1, p0}, Lcom/android/launcher/folder/recommend/FooterController;->updatePadding(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method private synthetic lambda$onBackKey$8()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->close()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$2(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_32

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2d

    :cond_20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2d
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_32
    return-void
.end method

.method private synthetic lambda$onFinishInflate$3(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->showSettingPanel()V

    return-void
.end method

.method private synthetic lambda$onFolderOpenAnimationEnd$6()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher/folder/recommend/FooterController;->folderOpenOrClose(ZZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isSupportRecommendSetting()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13
    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/aer/ProvisionManager;->showEduGuideWhenWorkProfileBYOD(Lcom/android/launcher/Launcher;I)V

    return-void
.end method

.method private synthetic lambda$onStateTransitionComplete$0()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->lambda$onBackKey$7()V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher3/folder/OplusFolder;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->lambda$handleClose$10(Z)V

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/folder/OplusFolder;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->lambda$onFinishInflate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->lambda$onFolderOpenAnimationEnd$6()V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->lambda$onBackKey$8()V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->lambda$animateOpen$5(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/folder/OplusFolder;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->lambda$handleClose$9(Z)V

    return-void
.end method

.method private setFolderNameEllipsize()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_f
    return-void
.end method

.method private showSettingPanel()V
    .registers 5

    new-instance v0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isSupportFooterRecommend()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isSupportContentRecommend()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mRecommendSettingDialogHelper:Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    new-instance v2, Lcom/android/launcher3/folder/OplusFolder$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/OplusFolder$3;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->showRecommendSettingDialog(ILcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;)V

    return-void
.end method

.method private simpleGuidHasShownLeft()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSharePf:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "sp_key_simple_folder_guid_left"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private simpleGuidHasShownRight()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSharePf:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "sp_key_simple_folder_guid_right"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/folder/OplusFolder;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->lambda$onFinishInflate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/launcher3/folder/OplusFolder;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->lambda$animateOpen$4(Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method private updateRecommendImageViewColor()V
    .registers 4

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0607ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_21

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_21
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 6

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_45

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/OplusLauncherModel;->isShortcutExist(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, "Drag"

    const-string v0, "OplusFolder"

    const-string v1, "acceptDrop -- the drag is attempt to pin a shortcut but the shortcut has already pinned!"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120540

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    return v2

    :cond_45
    if-eqz v0, :cond_50

    const/4 p1, 0x6

    if-eq v0, p1, :cond_50

    if-eq v0, v3, :cond_50

    const/16 p1, 0x65

    if-ne v0, p1, :cond_57

    :cond_50
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isFull()Z

    move-result p0

    if-nez p0, :cond_57

    move v2, v3

    :cond_57
    return v2
.end method

.method public animateOpen()V
    .registers 10

    const-wide/16 v0, 0x8

    const-string v2, "animateOpen"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/FolerUtils;->notifyORMSAnimation()V

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    sget-object v3, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v3}, Lcom/android/launcher/guide/DrawerGuideManager;->cancelAllAnim()V

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v4, v3, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_2d

    check-cast v3, Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/views/WorkSpaceScrimView;->resetIconBlur()V

    :cond_2d
    const-string v3, "animateOpen: getMFolderConfigurationChange = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v4}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFolderConfigurationChange()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isFoldScreen = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v5}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isTablet"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "OplusFolder"

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getMFolderConfigurationChange()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_90

    invoke-virtual {v5}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    if-nez v3, :cond_72

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_90

    :cond_72
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    if-eqz v3, :cond_90

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    if-eqz v3, :cond_90

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/folder/OplusFolderUtil;->updateAllFolders(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {v4, v6}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMFolderConfigurationChange(Z)V

    :cond_90
    invoke-super {p0}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v3

    const-wide/16 v4, 0x3e8

    if-eqz v3, :cond_c5

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v3, :cond_c5

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v7, v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v7, :cond_c5

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object v7, v3, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v7}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v7

    if-eqz v7, :cond_b6

    iget-object v7, v3, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v7}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_b6
    iget-object v7, v3, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    new-instance v8, Lcom/android/launcher3/card/i;

    invoke-direct {v8, p0}, Lcom/android/launcher3/card/i;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object v3, v3, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_c5
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-static {v6}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->checkExpandGuidState(Z)V

    :cond_ce
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x1

    invoke-static {v3, v7}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    if-eqz v3, :cond_ea

    invoke-virtual {v3, v7, v6}, Lcom/android/launcher/folder/recommend/FooterController;->folderOpenOrClose(ZZ)V

    :cond_ea
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isSupportRecommendSetting()Z

    move-result v3

    if-eqz v3, :cond_113

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v7, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_113

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v7, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_105

    goto :goto_113

    :cond_105
    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->updateRecommendImageViewColor()V

    goto :goto_11a

    :cond_113
    :goto_113
    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_11a
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_133

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    :cond_133
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_145

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/statistics/LauncherStatistics;->statOpenMustPlay()V

    :cond_145
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v3, v2, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v3, :cond_174

    instance-of v3, v2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v3, :cond_174

    check-cast v2, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_161

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v2, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->containFancyDrawable()Z

    move-result v2

    if-eqz v2, :cond_174

    :cond_161
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mDelayLoadFolderIconDrawableAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mDelayLoadFolderIconDrawableAlarm:Lcom/android/launcher3/Alarm;

    new-instance v3, Lcom/android/launcher3/folder/o;

    invoke-direct {v3, p0}, Lcom/android/launcher3/folder/o;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    :cond_174
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public beginExternalDrag()V
    .registers 5

    invoke-super {p0}, Lcom/android/launcher3/folder/Folder;->beginExternalDrag()V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/folder/recommend/FooterController;->folderOpenOrClose(ZZ)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isSupportRecommendSetting()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_38
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-static {v2, v2, v2, p0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChangeForFolder(ZIZLcom/android/launcher3/folder/FolderPagedView;)V

    :cond_45
    return-void
.end method

.method public centerAboutIcon()V
    .registers 15

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    const v2, 0x7f0a0255

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iput v5, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    const-string v1, "centerAboutIcon: supportFooterRecommend = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Folder"

    const-string v7, "OplusFolder"

    invoke-static {v6, v7, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result v1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_e9

    const-string v1, "centerAboutIcon: mContent.mGridCountY = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v11, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v11, v11, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    invoke-static {v1, v11, v6, v7}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v1, v1, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    if-lt v1, v8, :cond_6c

    move v1, v10

    goto :goto_6d

    :cond_6c
    move v1, v9

    :goto_6d
    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/FooterController;->getDesiredHeight()I

    move-result v1

    int-to-float v1, v1

    const v11, 0x3f266666  # 0.65f

    mul-float/2addr v1, v11

    float-to-int v1, v1

    iget-object v11, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconConfig()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v11

    if-eqz v11, :cond_99

    invoke-virtual {v11}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v11

    const/16 v12, 0x12c0

    if-lt v11, v12, :cond_99

    int-to-float v1, v1

    const v11, 0x3f5b6db7

    mul-float/2addr v1, v11

    float-to-int v1, v1

    :cond_99
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v11

    if-eqz v11, :cond_aa

    iget-object v11, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v11, v10}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v11

    sub-int/2addr v1, v11

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_aa
    iget-object v11, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/common/config/ScreenInfo;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v11

    iget-object v12, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v12

    sub-int v13, v5, v1

    add-int/2addr v13, v12

    if-ge v13, v11, :cond_be

    sub-int v1, v5, v11

    add-int/2addr v1, v12

    :cond_be
    add-int v11, v3, v1

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v1, v5, v1

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    :cond_c6
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-le v0, v10, :cond_106

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v11, 0x7f070833

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_106

    :cond_e9
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-le v0, v10, :cond_106

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v11, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicatorActualMarginBottom:I

    if-eq v1, v11, :cond_106

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_106
    :goto_106
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result v0

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    if-lt p0, v8, :cond_119

    move v9, v10

    :cond_119
    invoke-virtual {v0, v1, v9}, Lcom/android/launcher/folder/recommend/FooterController;->updatePadding(Lcom/android/launcher3/Launcher;Z)V

    :cond_11c
    const-string p0, "centerAboutIcon: left: "

    const-string v0, ", top: "

    const-string v1, ", width: "

    invoke-static {p0, v4, v0, v5, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", height: "

    invoke-static {p0, v2, v0, v3}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, v7, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public centerAboutIconForRecommend()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->centerAboutIcon()V

    return-void
.end method

.method public close()V
    .registers 5

    const-string v0, "OplusFolder"

    const-string v1, "closeFolder"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsLongPressEventOccur:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isProtectAppsFolder(Lcom/android/launcher3/folder/Folder;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_29
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateAllReorderWithoutAnimator()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_2f
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public closeComplete(Z)V
    .registers 5

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/ReportController;->notifyLauncherFolderHide()V

    :cond_f
    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSourceStartBatchDrag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    iput-boolean v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mSourceStartBatchDrag:Z

    :cond_1e
    invoke-super {p0, p1}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    instance-of v0, p1, Lcom/android/launcher3/dragndrop/OplusDragController;

    if-eqz v0, :cond_2e

    check-cast p1, Lcom/android/launcher3/dragndrop/OplusDragController;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->removeDragScrollerTarget(Lcom/android/launcher3/dragndrop/DragScroller;)V

    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p1

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result p1

    if-gtz p1, :cond_67

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_67

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_67

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_67
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    const/4 v0, 0x1

    if-eqz p1, :cond_7d

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isAppStorePreEnable()Z

    move-result p1

    if-eqz p1, :cond_7d

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher/folder/recommend/FooterController;->folderOpenOrClose(ZZ)V

    :cond_7d
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    if-eqz p1, :cond_85

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_85
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v2, :cond_a4

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-nez p1, :cond_a4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    :cond_a4
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result p1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_ba

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_ba
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-static {v0, v1, v1, p1}, Lcom/android/common/util/StateSwitchUtils;->applyStateChangeForFolder(ZIZLcom/android/launcher3/folder/FolderPagedView;)V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result p1

    if-eqz p1, :cond_104

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez p1, :cond_104

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_104

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result p1

    if-eqz p1, :cond_e4

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_e4
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "closeComplete: exposed"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_104
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mRecommendSettingDialogHelper:Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;

    if-eqz p0, :cond_10b

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->dismissDialog()V

    :cond_10b
    return-void
.end method

.method public dismiss()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->getFooterController()Lcom/android/launcher/folder/recommend/FooterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/FooterController;->getRecycleView()Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->getFooterController()Lcom/android/launcher/folder/recommend/FooterController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FooterController;->getRecycleView()Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->setScrollEnable(Z)V

    :cond_16
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const-string/jumbo p0, "touchEvent on animating closed, ev = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusFolder"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getContent()Lcom/android/launcher3/folder/FolderPagedView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    return-object p0
.end method

.method public getContentAreaHeight()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    add-int/2addr v2, v0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    sub-int/2addr v2, v0

    goto :goto_2d

    :cond_21
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    sub-int v2, v0, v1

    :goto_2d
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredHeight()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_39
    const/4 p0, 0x5

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getFolderHeader()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public getFooterController()Lcom/android/launcher/folder/recommend/FooterController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    return-object p0
.end method

.method public getIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-object p0
.end method

.method public getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I
    .registers 5

    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeaderHeight:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

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

.method public handleClose(Z)V
    .registers 12

    const-string v0, "handleCloseFolder"

    const-string v1, "OplusFolder"

    const-wide/16 v2, 0x8

    :try_start_6
    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_165

    const-string v4, "Folder"

    if-nez v0, :cond_1d

    :try_start_14
    const-string p0, "handleClose return, because is not open!"

    invoke-static {v4, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_165

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isLightFolderAnim()Z

    move-result v0

    if-nez v0, :cond_38

    const-string p0, "handleClose return, because is in IconFallen state!"

    invoke-static {v4, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_165

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_38
    :try_start_38
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupBlurHelper;->executePopupDeferredImmediately(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isHoldFolderOpenForWorkEdu()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0, v5}, Lcom/android/launcher/Launcher;->setHoldFolderOpenForWorkEdu(Z)V

    const-string p0, "handleClose return, because work edu show!"

    invoke-static {v4, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_38 .. :try_end_5a} :catchall_165

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_5e
    :try_start_5e
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->isIconFallenTouchUpOnFolderFlag()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v6, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_81

    const-string p0, "handleClose return, because icon fallen touch on folder"

    invoke-static {v4, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_5e .. :try_end_7d} :catchall_165

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_81
    :try_start_81
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHoldFolderOpen()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0, v5}, Lcom/android/launcher/Launcher;->setHoldFolderOpen(Z)V

    const-string p0, "handleClose return, because recommend folder need to be opened"

    invoke-static {v4, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_81 .. :try_end_9f} :catchall_165

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_a3
    :try_start_a3
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {v0, v5, v5}, Lcom/android/launcher/folder/recommend/FooterController;->folderOpenOrClose(ZZ)V

    :cond_a8
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->isFolderRealOpened()Z

    move-result v0

    const/4 v6, 0x1

    const-wide/16 v7, 0x32

    if-nez v0, :cond_ec

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v9, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v9, :cond_d1

    new-instance v0, Lcom/android/launcher3/folder/p;

    invoke-direct {v0, p0, p1, v5}, Lcom/android/launcher3/folder/p;-><init>(Lcom/android/launcher3/folder/OplusFolder;ZI)V

    invoke-virtual {p0, v0, v7, v8}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, " handleClose folder not really opened,can be closed again in the OVERVIEW"

    invoke-static {v4, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    :cond_d1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/android/launcher3/folder/p;

    invoke-direct {v5, p0, p1, v6}, Lcom/android/launcher3/folder/p;-><init>(Lcom/android/launcher3/folder/OplusFolder;ZI)V

    const-wide/16 p0, 0x10e

    invoke-virtual {v0, v5, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, " handleClose folder not really opened, return"

    invoke-static {v4, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catchall {:try_start_a3 .. :try_end_e8} :catchall_165

    :goto_e8
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_ec
    if-eqz p1, :cond_10c

    :try_start_ee
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->hasReorderAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateAllReorderWithoutAnimator()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher3/Alarm;->setAlarm(J)V
    :try_end_108
    .catchall {:try_start_ee .. :try_end_108} :catchall_165

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_10c
    :try_start_10c
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    xor-int/2addr v0, v6

    and-int/2addr p1, v0

    if-eqz p1, :cond_145

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-nez v1, :cond_145

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_145

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isExternalDragInProgress()Z

    move-result v1

    if-nez v1, :cond_145

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    :cond_145
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    if-eqz v0, :cond_157

    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsGuidShown:Z

    if-eqz v0, :cond_157

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->cancelSimpleGuid()V

    :cond_157
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mRecommendSettingDialogHelper:Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;

    if-eqz v0, :cond_15e

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->dismissDialog()V

    :cond_15e
    invoke-super {p0, p1}, Lcom/android/launcher3/folder/Folder;->handleClose(Z)V
    :try_end_161
    .catchall {:try_start_10c .. :try_end_161} :catchall_165

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_165
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isDropEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    return p0
.end method

.method public isExternalDragInProgress()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isFull()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    instance-of v0, v0, Lcom/android/launcher3/folder/OplusFolderPagedView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderPagedView;->getMaxItemsInFolder()I

    move-result p0

    if-lt v0, p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public isLongshotUnsupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportContentRecommend()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v0, :cond_10

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_27

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->toolsEnable()Z

    move-result v0

    goto :goto_30

    :cond_27
    const/4 v1, 0x6

    if-ne p0, v1, :cond_30

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->mustPlayEnable()Z

    move-result v0

    :cond_30
    :goto_30
    return v0
.end method

.method public isSupportFooterRecommend()Z
    .registers 5

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isGProductSeries:Z

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v3, :cond_2c

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isDisableFolderFooterAd()Z

    move-result v3

    if-nez v3, :cond_2c

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isAppStorePreEnable()Z

    move-result p0

    if-eqz p0, :cond_2c

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    return v1
.end method

.method public isSupportRecommendSetting()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isSupportFooterRecommend()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isSupportContentRecommend()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public itemStartBatchDrag(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    new-instance v1, Lcom/android/launcher3/folder/OplusFolder$SuppressAllInfoChanges;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/OplusFolder$SuppressAllInfoChanges;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    :try_start_13
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_34

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolder$SuppressAllInfoChanges;->close()V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/FolderIcon;->onRemove(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-gt p1, v0, :cond_31

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    :cond_31
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    return-void

    :catchall_34
    move-exception p0

    :try_start_35
    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolder$SuppressAllInfoChanges;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw p0
.end method

.method public itemsAddedBackViaIcon(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemsAddedBackViaIcon -- mInfo = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pendingItems.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Folder"

    const-string v2, "OplusFolder"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/folder/OplusFolder$FolderItemComparator;

    invoke-direct {v0}, Lcom/android/launcher3/folder/OplusFolder$FolderItemComparator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    check-cast v2, Lcom/android/launcher/batchdrag/BatchDragView;

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Lcom/android/launcher/batchdrag/BatchDragView;->getOriginalView()Landroid/view/View;

    move-result-object v2

    goto :goto_55

    :cond_4f
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v2

    :goto_55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_59
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/DropTarget$DragObject;

    new-instance v0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    :try_start_7e
    iget-object v1, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v4, 0x0

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZ)V
    :try_end_8e
    .catchall {:try_start_7e .. :try_end_8e} :catchall_92

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    goto :goto_6c

    :catchall_92
    move-exception p0

    :try_start_93
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    goto :goto_9b

    :catchall_97
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9b
    throw p0

    :cond_9c
    return-void
.end method

.method public itemsReturnOnBatchDragCanceled(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->checkFolderIconExist()V

    new-instance v0, Lcom/android/launcher3/folder/OplusFolder$FolderItemComparator;

    invoke-direct {v0}, Lcom/android/launcher3/folder/OplusFolder$FolderItemComparator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "OplusFolder"

    const-string v4, "Folder"

    const/4 v5, 0x0

    if-eqz v2, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "itemsReturnOnBatchDragCanceled -- view is still in the folder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_44
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    :try_start_52
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v4, v3, v6, v5}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_60

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :catchall_60
    move-exception p0

    :try_start_61
    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_69
    throw p0

    :cond_6a
    iput-boolean v5, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isAnimateClosing()Z

    move-result p1

    if-eqz p1, :cond_85

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mRollbackRearrangeChildrenViews:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mNeedShowRollbackItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_8f

    const-string p1, "itemsReturnOnBatchDragCanceled,arrangeChildren delay"

    invoke-static {v4, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    :cond_85
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p1, v1}, Lcom/android/launcher3/folder/IFolderExt;->showItems(Ljava/util/List;)V

    :cond_8f
    :goto_8f
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    return-void
.end method

.method public layoutChildren()V
    .registers 11

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_53

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_50

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v0, v5, v9, v8}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v8

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    add-int/2addr v5, v8

    add-int v9, v1, v6

    invoke-virtual {v4, v8, v1, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v4

    add-int/2addr v6, v1

    move v1, v6

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_53
    return-void
.end method

.method public notifyBatchDrop()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/folder/Folder;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method

.method public onBackKey()Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderNameClear:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/Folder;->setIsOpenForRename(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7c

    :cond_43
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7c

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/folder/FolderIcon;->onTitleChanged(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x20

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120275

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v4, v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v5, v4}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    :cond_7c
    :goto_7c
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/statistics/LauncherStatistics;->statsRenameFolder(Ljava/lang/String;)V

    :cond_8f
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_c1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_c1

    new-instance v0, Landroidx/recyclerview/widget/a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_c1
    const-string/jumbo v0, "onBackKey: launcherState = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFolder"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isSupportRecommendSetting()Z

    move-result v0

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_10a

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_10a

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_10a

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_10a
    return v2
.end method

.method public onBatchDragCompleted(Z)V
    .registers 7

    const-string/jumbo v0, "onBatchDragCompleted -- success = "

    const-string v1, ", mDeleteFolderOnDropCompleted = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    const-string v2, "Folder"

    const-string v3, "OplusFolder"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_76

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_6a

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result p1

    if-eqz p1, :cond_6a

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_62

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v1

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v4

    if-ne v4, v1, :cond_5e

    const/4 v1, 0x1

    goto :goto_5f

    :cond_5e
    move v1, v0

    :goto_5f
    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    :cond_62
    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz p1, :cond_82

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->replaceFolderWithFinalItem()V

    goto :goto_82

    :cond_6a
    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz p1, :cond_72

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->replaceFolderWithFinalItem()V

    goto :goto_82

    :cond_72
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    goto :goto_82

    :cond_76
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mDragItemPendingAddBack:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->itemsAddedBackViaIcon(Ljava/util/ArrayList;)V

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mDragItemPendingAddBack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_82
    :goto_82
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mActionDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsTouchMoveEvent:Z

    iput-boolean v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsLongPressEventOccur:Z

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderNameClear:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v1, :cond_44

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v5

    if-nez v5, :cond_44

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v5, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_44

    move p1, v3

    goto :goto_45

    :cond_44
    move p1, v2

    :goto_45
    iput-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mLongPressEnable:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result p1

    if-eqz p1, :cond_d3

    if-nez v1, :cond_57

    if-nez v4, :cond_57

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    return v3

    :cond_57
    return v2

    :cond_58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_95

    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsTouchMoveEvent:Z

    if-nez v0, :cond_d3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolder;->mActionDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolder;->mActionDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, v0

    cmpl-float v1, v1, v0

    if-gez v1, :cond_92

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_d3

    :cond_92
    iput-boolean v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsTouchMoveEvent:Z

    goto :goto_d3

    :cond_95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_d3

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_d3

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->isTouchToggleBarDoneButton(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_d3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_c3
    iget-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsTouchMoveEvent:Z

    if-nez p1, :cond_d2

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p1}, Lcom/android/launcher3/folder/IFolderExt;->isFolderRealOpened()Z

    move-result p1

    if-eqz p1, :cond_d2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->close()V

    :cond_d2
    return v3

    :cond_d3
    :goto_d3
    return v2
.end method

.method public onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isDismissKeyguardAnimating()Z

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkScrollBigFolderTip(Landroid/view/View;Z)V

    return-void
.end method

.method public onDragEnd()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/folder/Folder;->onDragEnd()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/OplusFolder;->applyDragState(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    :cond_1a
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 5

    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_25

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_25

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mOnExitToastListener:Lcom/android/launcher3/OnAlarmListener;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mOnExitToastAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mOnExitToastAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x1e0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mOnExitToastListener:Lcom/android/launcher3/OnAlarmListener;

    :cond_25
    invoke-super {p0, p1}, Lcom/android/launcher3/folder/Folder;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    if-eqz v0, :cond_4d

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getMaxItemsPerPage()I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v1, v1, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v3, v0, v1

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getMaxItemsPerPage()I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v2, v1, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int v4, v0, v2

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V

    :cond_4d
    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    if-ltz v0, :cond_5d

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mValidDragHeight:I

    if-le v0, v1, :cond_56

    goto :goto_5d

    :cond_56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mMoveInValidAera:Z

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/Folder;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void

    :cond_5d
    :goto_5d
    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_9b

    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mMoveInValidAera:Z

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_9b

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-wide/16 v1, 0x1e0

    if-eqz v0, :cond_8f

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result p1

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mOnExitToastListener:Lcom/android/launcher3/OnAlarmListener;

    if-eqz p1, :cond_9b

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mOnExitToastAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mOnExitToastAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mOnExitToastListener:Lcom/android/launcher3/OnAlarmListener;

    goto :goto_9b

    :cond_8f
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_9b
    :goto_9b
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mMoveInValidAera:Z

    invoke-direct {p0, p2}, Lcom/android/launcher3/folder/OplusFolder;->applyDragState(Z)V

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of p2, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p2, :cond_1e

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result p1

    if-eqz p1, :cond_1e

    new-instance p1, Lcom/android/launcher3/folder/OplusFolder$5;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/OplusFolder$5;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mOnExitToastListener:Lcom/android/launcher3/OnAlarmListener;

    :cond_1e
    return-void
.end method

.method public onDropOneItemCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 6

    const-string/jumbo p1, "onDropOneItemCompleted -- success = "

    const-string v0, ", d.dragInfo = "

    invoke-static {p1, p3, v0}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Folder"

    const-string v1, "OplusFolder"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_26

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->checkFolderIconExist()V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mDragItemPendingAddBack:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    :cond_26
    return-void
.end method

.method public onFinishInflate()V
    .registers 7

    invoke-super {p0}, Lcom/android/launcher3/folder/Folder;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    const v2, 0x7f070840

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/FontManager;->setSuitableFontSize(Landroid/widget/TextView;Landroid/content/Context;II)V

    const v0, 0x7f0a02b3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mContentAnimationBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_2f

    const v0, 0x7f080672

    goto :goto_40

    :cond_2f
    const v0, 0x7f080673

    goto :goto_40

    :cond_33
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_3d

    const v0, 0x7f080671

    goto :goto_40

    :cond_3d
    const v0, 0x7f080670

    :goto_40
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mContentAnimationBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a02b6

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a02b8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_74

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    goto :goto_79

    :cond_74
    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    :goto_79
    const v4, 0x7f0a02bd

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object v4, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v4, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setFolderHost(Z)V

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v5, Lcom/android/launcher/folder/recommend/a;

    invoke-direct {v5, p0}, Lcom/android/launcher/folder/recommend/a;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a02be

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/launcher3/folder/p;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/launcher3/folder/p;-><init>(Lcom/android/launcher3/folder/OplusFolder;ZI)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/launcher/guide/side/b;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/side/b;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mRecommendSettingOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mContentBackground:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x7f0a0567

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidStub:Landroid/view/ViewStub;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    if-eqz v0, :cond_13f

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mContentBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v3

    if-eqz v3, :cond_107

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070975

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isBigSimpleModeSupport()Z

    move-result v3

    if-eqz v3, :cond_102

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070971

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_102
    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mContentBackground:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_107
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0569

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a056a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v3, 0x7f0a0568

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const v3, 0x3e99999a  # 0.3f

    invoke-virtual {v0, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setScale(F)V

    :cond_13f
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-static {v0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    const v0, 0x7f0a02bc

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderNameClear:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_162

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderNameClear:Landroid/widget/ImageView;

    const v3, 0x7f080675

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_162
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderNameClear:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/launcher3/folder/OplusFolder$2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/folder/OplusFolder$2;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    if-eqz v0, :cond_183

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0604de

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_183
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v4

    if-eqz v4, :cond_1ad

    iget-boolean v4, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v4, :cond_1ad

    iget-boolean v4, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v4, :cond_1ad

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070831

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1ba

    :cond_1ad
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070830

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_1ba
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v5, v4, :cond_1c5

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c5
    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicatorActualMarginBottom:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v4

    const v5, 0x7f070848

    if-eqz v4, :cond_1f0

    iget-boolean v4, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v4, :cond_1f0

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicatorActualMarginBottom:I

    goto :goto_23a

    :cond_1f0
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v2

    if-eqz v2, :cond_20e

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v2, :cond_20e

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v2, :cond_20e

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070849

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicatorActualMarginBottom:I

    goto :goto_23a

    :cond_20e
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v2

    if-eqz v2, :cond_22e

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v2

    if-eqz v2, :cond_22e

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07084a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicatorActualMarginBottom:I

    goto :goto_23a

    :cond_22e
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicatorActualMarginBottom:I

    :goto_23a
    iget v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v4, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicatorActualMarginBottom:I

    if-eq v2, v4, :cond_247

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_247
    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolder;->mContentBackground:Landroid/widget/ImageView;

    if-eqz v2, :cond_2ba

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v3

    const v4, 0x7f070829

    if-eqz v3, :cond_26a

    iget-boolean v3, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v3, :cond_26a

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_290

    :cond_26a
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v1

    if-eqz v1, :cond_286

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_286

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v0, :cond_286

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07082a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_290

    :cond_286
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_290
    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v1, v0, :cond_296

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_296
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07082b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v3

    if-eqz v3, :cond_2ad

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_2ad
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-ne v3, v0, :cond_2b5

    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v0, v1, :cond_2ba

    :cond_2b5
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mContentBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2ba
    return-void
.end method

.method public onFolderOpenAnimationEnd()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isAppStorePreEnable()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Landroidx/appcompat/widget/g;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2c

    :cond_1b
    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/aer/ProvisionManager;->showEduGuideWhenWorkProfileBYOD(Lcom/android/launcher/Launcher;I)V

    :goto_2c
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/OplusFolder;->startSimpleGuid(I)V

    :cond_36
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsOpenForRename:Z

    if-eqz v0, :cond_42

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/Folder;->setIsOpenForRename(Z)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard()V

    :cond_42
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p0, 0x0

    return p0

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_28

    return v1

    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isHiddenAppsFolderOpen()Z

    move-result v0

    if-eqz v0, :cond_37

    return v1

    :cond_37
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_70

    instance-of v2, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_70

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_65

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v2

    if-lez v2, :cond_70

    :cond_65
    iput-boolean v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mSourceStartBatchDrag:Z

    new-instance v2, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {v0, p1, v2, p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->startBatchDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;Lcom/android/launcher3/DragSource;)V

    return v1

    :cond_70
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a8

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_87

    goto :goto_a8

    :cond_87
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher/download/DownloadAppsManager;->longPressInstallingPrompts(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    return v1

    :cond_9e
    new-instance v0, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z

    move-result p0

    return p0

    :cond_a8
    :goto_a8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onLongClick: but DropView is animating, v = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Folder"

    const-string v0, "OplusFolder"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onMeasure(II)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->getContentAreaHeight()I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const-string v1, "Folder"

    const-string v2, "OplusFolder"

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    goto :goto_37

    :cond_30
    const-string/jumbo v0, "onMeasure: mContent.getCurrentCellLayout() is null "

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    :goto_37
    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v4, -0x80000000

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v0, v4}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeaderHeight:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    if-eqz v5, :cond_64

    invoke-virtual {v5, p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;->setFixedSize(II)V

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5, v0, v4}, Landroid/view/ViewGroup;->measure(II)V

    :cond_64
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v5, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result v0

    if-eqz v0, :cond_98

    const-string/jumbo v0, "onMeasure: supportFooterRecommend"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07086e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v5, v0

    :cond_98
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :try_start_a0
    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a5} :catch_a6

    goto :goto_bb

    :catch_a6
    move-exception v0

    const-string v1, "mFolderContentRoot.measure err:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bb
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070830

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0, v1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/folder/OplusFolder;->mValidDragHeight:I

    return-void
.end method

.method public onRecommendContentChanged()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v3, :cond_1e

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/folder/OplusFolder;->replaceFolderWithFinalItem(ZZ)V

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->areViewsBound()Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    :cond_27
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_62

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_56

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5f

    :cond_56
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_62
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPagedView;->sOPlusFolderPagedViewExtV2:Lcom/android/launcher3/folder/IFolderPagedViewExt;

    invoke-interface {v0, v3, v2}, Lcom/android/launcher3/folder/IFolderPagedViewExt;->arrangeChildren(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->centerAboutIconForRecommend()V

    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

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

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->dispatchRecommendOnRemove(Ljava/util/List;)V

    return-void

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/launcher/shimmer/c;

    invoke-direct {v1, p0}, Lcom/android/launcher/shimmer/c;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/common/util/m;

    invoke-direct {v2, v1}, Lcom/android/common/util/m;-><init>(Lcom/android/launcher3/folder/FolderPagedView;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne p1, v0, :cond_34

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_37

    :cond_34
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    :goto_37
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    if-gt p1, v0, :cond_54

    iget-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz p1, :cond_51

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    if-nez p1, :cond_49

    move p1, v0

    goto :goto_4a

    :cond_49
    const/4 p1, 0x0

    :goto_4a
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/OplusFolder;->replaceFolderWithFinalItem(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_54

    :cond_51
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->replaceFolderWithFinalItem()V

    :cond_54
    :goto_54
    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isSupportRecommendSetting()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result p1

    if-nez p1, :cond_18

    new-instance p1, Landroidx/core/widget/b;

    invoke-direct {p1, p0}, Landroidx/core/widget/b;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_9
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->close()V

    :cond_a
    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderNameClear:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x7f080675

    goto :goto_f

    :cond_c
    const v1, 0x7f080674

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080678

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2f

    :cond_24
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080677

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2f
    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_44

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_44
    return-void
.end method

.method public prepareGenerateNewFolder(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    new-instance v0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    :try_start_13
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw p0
.end method

.method public replaceFolderWithFinalItem()V
    .registers 2

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isProtectAppsFolder(Lcom/android/launcher3/folder/Folder;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v0, :cond_20

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    if-lez v0, :cond_20

    return-void

    :cond_20
    invoke-super {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    return-void
.end method

.method public replaceFolderWithFinalItem(ZZ)V
    .registers 4

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    if-lez v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Lcom/android/launcher3/folder/OplusFolder$7;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/folder/OplusFolder$7;-><init>(Lcom/android/launcher3/folder/OplusFolder;Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_32

    if-eqz p2, :cond_2c

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->performDestroyAnimation(Ljava/lang/Runnable;)V

    goto :goto_35

    :cond_2c
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->performDestroyAnimation(Ljava/lang/Runnable;)V

    goto :goto_35

    :cond_32
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_35
    return-void
.end method

.method public resetMoveInValidAera()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mMoveInValidAera:Z

    :cond_b
    return-void
.end method

.method public setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/Folder;->setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    const-string/jumbo v0, "setFolderIcon: title = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecommendId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const-string v2, "OplusFolder"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isGProductSeries:Z

    if-eqz v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    new-instance v3, Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v4

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez p1, :cond_43

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isDisableFolderFooterAd()Z

    move-result p1

    if-nez p1, :cond_43

    if-nez v0, :cond_43

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    invoke-direct {v3, v4, p0, v1}, Lcom/android/launcher/folder/recommend/FooterController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/OplusFolder;Z)V

    iput-object v3, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isSupportFooterRecommend()Z

    move-result p1

    if-nez p1, :cond_5d

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->isSupportContentRecommend()Z

    move-result p1

    if-nez p1, :cond_5d

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_62

    :cond_5d
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFolderRecommendSetting:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_62
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public startEditingFolderName()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/OplusFolder$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/OplusFolder$4;-><init>(Lcom/android/launcher3/folder/OplusFolder;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startSimpleGuid(I)V
    .registers 8

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    return-void

    :cond_15
    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->cancelSimpleGuid()V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSharePf:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "sp_key_simple_folder_guid_left"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f110024

    const v4, 0x7f110025

    if-nez v0, :cond_58

    if-nez p1, :cond_58

    iput-boolean v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsGuidShown:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v5, 0x7f120578

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_4b

    :cond_46
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0, v4}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    :goto_4b
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->simpleGuidHasShownLeft()V

    :cond_58
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mSharePf:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "sp_key_simple_folder_guid_right"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_91

    if-ne p1, v1, :cond_91

    iput-boolean v1, p0, Lcom/android/launcher3/folder/OplusFolder;->mIsGuidShown:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f120579

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1, v4}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_84

    :cond_7f
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    :goto_84
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolder;->mSimpleGuidAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolder;->simpleGuidHasShownRight()V

    :cond_91
    return-void
.end method

.method public supportFooterRecommend()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/FooterController;->supportFooterRecommend(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mFooterController:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FooterController;->recommendIsShowing()Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method
