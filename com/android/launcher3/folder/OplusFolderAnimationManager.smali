.class public Lcom/android/launcher3/folder/OplusFolderAnimationManager;
.super Lcom/android/launcher3/folder/FolderAnimationManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;,
        Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;
    }
.end annotation


# static fields
.field public static final BACKGROUND_ALPHA_DURATION:F = 350.0f

.field private static final BACKGROUND_APPEAR_DURATION:I = 0xc8

.field private static final BACKGROUND_DISAPPEAR_DURATION:I = 0x64

.field private static final BG_BACKGROUND_CORN_RADIUS_BASE:F = 0.1f

.field private static final DEBUG:Z = false

.field private static final FANCYDRAWABLE_MAX_ALPHA:I = 0xff

.field private static final FLODER_OPEN_TEXT_ALPHA:Landroid/view/animation/PathInterpolator;

.field private static final FOLDER_CENTER_POS_DEFAULT:I = 0x3

.field public static final FOLDER_TEXT_ALPHA_ANIMATION:J = 0xb4L

.field private static final FOLDER_ZOOM_CLOSE_CHANGE_BG_AND_TEXT_VALUE:F = 0.75f

.field private static final FOLDER_ZOOM_MAX_VALUE:F = 1.0f

.field private static final ICON_ANIMATION_GRADIENT_DELAY_DURATION:I = 0x11

.field private static final ICON_TEXT_ANIMATION_DURATION:I = 0x103

.field private static final MAX_FOLDER_ICON_LIGHT_ANIM:I = 0x7

.field private static final TAG:Ljava/lang/String; = "OplusFolderAnimationManager"

.field private static final VISIBLE_THRESHOLD_VALUE:F = 0.75f

.field public static final WORKSPACE_SCALE_RATE:F = 0.92f


# instance fields
.field private mAddCount:I

.field private mChildListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

.field private mContentbackgroundAnim:Landroid/animation/ObjectAnimator;

.field private mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

.field private mFolderCloseDuration:I

.field private mFolderContentRoot:Landroid/widget/FrameLayout;

.field private mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

.field private mFolderOpenDuration:I

.field private mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mRealCount:I

.field private mbgRadius:F

.field private mbgRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3dcccccd  # 0.1f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->FLODER_OPEN_TEXT_ALPHA:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/Folder;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/FolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRadius:F

    new-instance p2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    iput v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mAddCount:I

    iput v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mRealCount:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mChildListeners:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$11;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$11;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    iget-object p2, p1, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast p1, Lcom/android/launcher3/folder/OplusFolder;

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    sget-object p1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getInstance()Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    new-instance p1, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b005d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b005e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    check-cast p1, Lcom/android/launcher3/folder/OplusFolder;

    iget-object p1, p1, Lcom/android/launcher3/folder/OplusFolder;->mFolderContentRoot:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderContentRoot:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFFFZZZLandroid/animation/ValueAnimator;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->lambda$getChildrenAnimatorSet$4(Lcom/android/launcher3/BubbleTextView;FFFFZZZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderContentRoot:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/BubbleTextView;ZZZZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->refreshViewMultiNodeState(Lcom/android/launcher3/BubbleTextView;ZZZZ)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mAddCount:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mRealCount:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRadius:F

    return p0
.end method

.method public static synthetic access$802(Lcom/android/launcher3/folder/OplusFolderAnimationManager;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRadius:F

    return p1
.end method

.method public static synthetic access$900(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private addChildrenAnimListeners(Landroid/animation/Animator;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    iget-object p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p2

    const-string v0, "OplusFolderAnimationManager"

    const-string v1, "Folder"

    if-nez p2, :cond_25

    const-string p0, "addChildrenAnimListeners, cell layout is null"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p2

    if-nez p2, :cond_31

    const-string p0, "addChildrenAnimListeners, ShortcutAndWidgetContainer is null"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_31
    new-instance v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$8;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/ShortcutAndWidgetContainer;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->lambda$getBackgroundAndIndicatorAnimator$3(Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->lambda$createFolderChildAnimationSet$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createFolderChildAnimationSet(Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .registers 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    if-nez p2, :cond_e

    return-object v1

    :cond_e
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v0, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_1a

    sget-object v2, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_1c

    :cond_1a
    sget-object v2, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    :goto_1c
    if-eqz v0, :cond_21

    iget v0, v7, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    goto :goto_2c

    :cond_21
    iget v0, v7, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    int-to-float v0, v0

    iget-object v3, v7, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getFolderItemRoomInProgress()F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    :goto_2c
    iget-object v3, v7, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v4, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v3, v3, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const/4 v10, 0x2

    new-array v4, v10, [I

    iget-object v5, v7, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    iget-object v6, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v5, v6, v4}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v4

    int-to-float v3, v3

    iget-object v5, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    mul-float/2addr v3, v4

    new-array v4, v10, [F

    iget-object v5, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v6, v7, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    const/4 v11, 0x0

    invoke-static {v5, v6, v4, v11}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    new-array v5, v10, [F

    iget-object v6, v7, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-static {v8, v6, v5, v11}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v6, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v6

    if-eqz v6, :cond_70

    iget-object v1, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v1

    :cond_70
    invoke-direct {v7, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderDistance(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v1

    iget-boolean v6, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/high16 v12, 0x40000000  # 2.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000  # 1.0f

    if-eqz v6, :cond_9d

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget-object v15, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v12

    aget v4, v4, v13

    aget v5, v5, v13

    sub-float/2addr v4, v5

    add-float/2addr v4, v15

    sub-float v5, v14, v3

    mul-float/2addr v5, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v5, v1

    move v4, v3

    move v15, v5

    move v5, v10

    move v1, v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v10, v6

    goto :goto_cd

    :cond_9d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v15

    iget v11, v1, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget-object v10, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v12

    aget v4, v4, v13

    aget v5, v5, v13

    sub-float/2addr v4, v5

    add-float/2addr v4, v10

    sub-float v5, v14, v3

    mul-float/2addr v5, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v5, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    move v12, v5

    move v10, v6

    const/4 v5, 0x2

    move/from16 v21, v3

    move v3, v1

    move/from16 v1, v21

    :goto_cd
    new-array v6, v5, [F

    const/16 v16, 0x0

    aput v3, v6, v16

    aput v1, v6, v13

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    move/from16 v17, v15

    int-to-long v14, v0

    invoke-virtual {v6, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/common/util/r0;

    invoke-direct {v0, v8, v13}, Lcom/android/common/util/r0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v5, [F

    aput v4, v0, v16

    aput v1, v0, v13

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher/pageindicators/d;

    invoke-direct {v0, v8}, Lcom/android/launcher/pageindicators/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v5, [F

    fill-array-data v0, :array_1a2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;

    move-object v0, v2

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object v13, v2

    move-object/from16 v2, p1

    move-object/from16 v19, v9

    move-object v9, v5

    move v5, v10

    move-object/from16 v20, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Landroid/view/View;FFFF)V

    invoke-virtual {v9, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v13, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;

    move-object v0, v13

    move v3, v10

    move v4, v11

    move/from16 v5, v17

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Landroid/view/View;FFFF)V

    invoke-virtual {v9, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-boolean v0, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_141

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_142

    :cond_141
    const/4 v0, 0x0

    :goto_142
    const/4 v1, 0x2

    new-array v2, v1, [F

    iget-boolean v1, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_14b

    move v3, v0

    goto :goto_14d

    :cond_14b
    const/high16 v3, 0x3f800000  # 1.0f

    :goto_14d
    const/4 v4, 0x0

    aput v3, v2, v4

    if-eqz v1, :cond_154

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_154
    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/folder/q;

    invoke-direct {v3, v8, v4}, Lcom/android/launcher3/folder/q;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;

    invoke-direct {v3, v7, v8}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v3

    if-eqz v3, :cond_18c

    iget-boolean v3, v7, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v3, :cond_187

    sub-long/2addr v14, v1

    const-wide/16 v1, 0x0

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_18c

    :cond_187
    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_18c
    :goto_18c
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v20, v1, v2

    const/4 v2, 0x2

    aput-object v18, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_1a2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic d(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->lambda$createFolderChildAnimationSet$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->lambda$createFolderChildAnimationSet$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/BubbleTextView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->lambda$getChildrenAnimatorSet$5(Lcom/android/launcher3/BubbleTextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getBackgroundAndIndicatorAnimator()Landroid/animation/AnimatorSet;
    .registers 16

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget-object v5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    iget-object v6, v5, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/android/launcher3/OplusCellLayout;

    const/4 v9, 0x0

    if-eqz v8, :cond_3d

    check-cast v7, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_3b

    goto :goto_3d

    :cond_3b
    move v7, v9

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v7, 0x1

    :goto_3e
    iget-boolean v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const-string v10, "OplusFolderAnimationManager"

    const/high16 v11, 0x3f800000  # 1.0f

    if-nez v8, :cond_b0

    iget-object v8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v8

    iget-object v12, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/LauncherState;

    iget-object v13, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12, v13}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v12

    const-string v13, "getBackgroundAndIndicatorAnimator, Workspace current scale = "

    invoke-static {v13}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ",State scale = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v13

    iget v14, v12, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_8e

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget v12, v12, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_8e
    if-eqz v8, :cond_b0

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v12

    cmpg-float v12, v12, v11

    if-gez v12, :cond_b0

    iget-object v12, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/FolderIcon;->isInHotseat()Z

    move-result v12

    if-nez v12, :cond_aa

    iget-object v12, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v13, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v12, v13}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v12

    if-nez v12, :cond_b0

    :cond_aa
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_b0
    iget-object v8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v8

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v8, v11, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v8

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v12, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v12}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getVirtualFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v12

    if-ne v11, v12, :cond_cc

    const/4 v11, 0x1

    goto :goto_cd

    :cond_cc
    move v11, v9

    :goto_cd
    if-nez v11, :cond_167

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v11

    if-nez v11, :cond_fa

    aget v12, v1, v9

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v13}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v13

    div-int/2addr v3, v0

    add-int/2addr v13, v3

    int-to-float v13, v13

    mul-float/2addr v13, v8

    add-float/2addr v13, v12

    float-to-int v12, v13

    aput v12, v2, v9

    const/4 v12, 0x1

    aget v13, v1, v12

    int-to-float v13, v13

    iget-object v14, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v14}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v14

    add-int/2addr v14, v3

    int-to-float v3, v14

    mul-float/2addr v3, v8

    add-float/2addr v3, v13

    float-to-int v3, v3

    aput v3, v2, v12

    goto :goto_127

    :cond_fa
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v3

    aget v12, v1, v9

    int-to-float v12, v12

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    add-float/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v12

    aput v12, v2, v9

    const/4 v12, 0x1

    aget v13, v1, v12

    int-to-float v13, v13

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v2, v12

    :goto_127
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_174

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getBackgroundAndIndicatorAnimator isBigFolder: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", scale="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", folderIconLocation="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", folderIconCenter="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "getBackgroundAndIndicatorAnimator"

    invoke-direct {p0, v3, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->printFolderLog(Ljava/lang/String;[I)V

    goto :goto_174

    :cond_167
    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/2addr v3, v0

    aput v3, v2, v9

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    div-int/2addr v1, v0

    const/4 v3, 0x1

    aput v1, v2, v3

    :cond_174
    :goto_174
    new-array v1, v0, [F

    new-array v3, v0, [F

    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v8

    if-nez v8, :cond_1c2

    const-string v0, "getBackgroundAndIndicatorAnimator -- nextPage="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPageInTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1c2
    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v11, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-static {v8, v11, v1, v9}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    aget v11, v1, v9

    iget v12, v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    aput v11, v1, v9

    const/4 v11, 0x1

    aget v12, v1, v11

    iget v8, v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    int-to-float v8, v8

    add-float/2addr v12, v8

    aput v12, v1, v11

    aget v8, v1, v9

    iget-object v12, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000  # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v8

    aput v12, v3, v9

    aget v1, v1, v11

    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v13

    add-float/2addr v8, v1

    aput v8, v3, v11

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_22a

    aget v1, v2, v9

    int-to-float v1, v1

    aget v8, v3, v9

    sub-float/2addr v1, v8

    const/4 v8, 0x1

    aget v2, v2, v8

    int-to-float v2, v2

    aget v11, v3, v8

    sub-float/2addr v2, v11

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    aget v12, v3, v9

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    aget v3, v3, v8

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setPivotY(F)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto :goto_255

    :cond_22a
    const/4 v1, 0x1

    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v8

    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v11

    aget v12, v2, v9

    int-to-float v12, v12

    aget v13, v3, v9

    sub-float/2addr v12, v13

    aget v2, v2, v1

    int-to-float v2, v2

    aget v13, v3, v1

    sub-float/2addr v2, v13

    iget-object v13, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    aget v14, v3, v9

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v13, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    aget v1, v3, v1

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    move v3, v2

    move v1, v8

    move v2, v11

    move v8, v12

    :goto_255
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_286

    const-string v11, "getBackgroundAndIndicatorAnimator, mIsOpening="

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const-string v13, ", isInWorkspace="

    const-string v14, ", initialTranslation(X,Y)=("

    invoke-static {v11, v12, v13, v7, v14}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v12, ","

    const-string v13, "), finalTranslation(X,Y)=("

    invoke-static {v11, v1, v12, v2, v13}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_286
    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_28d

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    goto :goto_298

    :cond_28d
    iget v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getFolderItemRoomInProgress()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_298
    new-array v2, v0, [F

    fill-array-data v2, :array_302

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v10, v1

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v3, :cond_2ad

    sget-object v3, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_2af

    :cond_2ad
    sget-object v3, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    :goto_2af
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;

    invoke-direct {v3, p0, v5, v7, v6}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/Workspace;ZI)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;

    invoke-direct {v3, p0, v5, v7, v6}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/Workspace;ZI)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-boolean v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v3, :cond_2cb

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2cc

    :cond_2cb
    const/4 v3, 0x0

    :goto_2cc
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v0, [F

    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz p0, :cond_2d9

    move v7, v3

    goto :goto_2db

    :cond_2d9
    const/high16 v7, 0x3f800000  # 1.0f

    :goto_2db
    aput v7, v6, v9

    if-eqz p0, :cond_2e3

    const/4 p0, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    goto :goto_2e4

    :cond_2e3
    const/4 p0, 0x1

    :goto_2e4
    aput v3, v6, p0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    div-int/2addr v1, v0

    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/pageindicators/a;

    invoke-direct {v1, v4, p0}, Lcom/android/launcher/pageindicators/a;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v9

    aput-object v2, v0, p0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v5

    nop

    :array_302
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private getFolderAnimProps()Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;
    .registers 16

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIconCenter()[I

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    new-array v4, v2, [I

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v8, v5, Lcom/android/launcher3/CellLayout;

    if-eqz v8, :cond_32

    check-cast v5, Lcom/android/launcher3/CellLayout;

    goto :goto_3a

    :cond_32
    const/4 v5, 0x0

    goto :goto_3a

    :cond_34
    iget-object v5, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    :goto_3a
    if-nez v5, :cond_a7

    const-string v1, "getBackgroundAnimator -- nextPage = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getBackgroundAnimator currentPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getBackgroundAnimator pageCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getBackgroundAnimator isPageInTransition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OplusFolderAnimationManager"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    iput p0, v0, Landroid/graphics/Point;->x:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    new-instance v0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    new-instance v5, Lh4/j;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lh4/j;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v6, v1, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;-><init>(ZIILh4/j;Lh4/j;)V

    return-object v0

    :cond_a7
    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v9, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-static {v8, v9, v3, v7}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    aget v9, v3, v7

    iget v10, v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v3, v7

    aget v9, v3, v6

    iget v10, v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v3, v6

    aget v9, v3, v7

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v3, v7

    aget v9, v3, v6

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v3, v6

    aget v9, v3, v7

    iget-object v10, v5, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v3, v7

    aget v9, v3, v6

    iget-object v10, v5, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v3, v6

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getShortcutsAndWidgetsHeight()I

    move-result v9

    div-int/2addr v9, v2

    iget-object v10, v5, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x7

    if-gt v10, v11, :cond_101

    goto :goto_103

    :cond_101
    mul-int/lit8 v9, v9, 0x3

    :goto_103
    aget v10, v3, v7

    iget-object v5, v5, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v10, v5

    float-to-int v5, v10

    aput v5, v4, v7

    aget v3, v3, v6

    int-to-float v5, v9

    add-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v4, v6

    aget v3, v1, v7

    aget v5, v4, v7

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Point;->x:I

    aget v1, v1, v6

    aget v3, v4, v6

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Point;->y:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderBackgroundBounds(Landroid/graphics/Rect;)V

    new-instance v13, Lh4/j;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    div-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v13, p0, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Lh4/j;

    aget p0, v4, v7

    iget v1, v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    sub-int/2addr p0, v1

    aput p0, v4, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aget v1, v4, v6

    iget v2, v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    sub-int/2addr v1, v2

    aput v1, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v14, p0, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    const/4 v10, 0x1

    iget v11, v0, Landroid/graphics/Point;->x:I

    iget v12, v0, Landroid/graphics/Point;->y:I

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;-><init>(ZIILh4/j;Lh4/j;)V

    return-object p0
.end method

.method private getFolderBackgroundAnimator()Landroid/animation/Animator;
    .registers 22

    move-object/from16 v15, p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    iget-object v4, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v3

    iget-object v2, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v2, v2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v2, :cond_58

    iget-object v2, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    iget-object v4, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v4}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getInstance(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getBigFolderFallenCompletedStateScaleX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v2, v4

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getBigFolderFallenCompletedStateScaleY()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_62

    :cond_58
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/2addr v0, v1

    :goto_62
    move v10, v0

    move v9, v2

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIconCenterLocation()[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderBackgroundLocation()[I

    move-result-object v4

    aget v4, v4, v2

    sub-int v7, v0, v4

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderIconCenterLocation()[I

    move-result-object v0

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderBackgroundLocation()[I

    move-result-object v5

    aget v5, v5, v4

    sub-int v8, v0, v5

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v14, v0, Lcom/android/launcher3/folder/OplusFolder;->mContentAnimationBackground:Landroid/widget/ImageView;

    invoke-direct {v15, v14}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->updateAnimColorFilter(Landroid/widget/ImageView;)V

    invoke-virtual {v14}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {v14}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v11, v0, 0x2

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    invoke-virtual {v14}, Landroid/widget/ImageView;->getTop()I

    move-result v12

    invoke-virtual {v14}, Landroid/widget/ImageView;->getRight()I

    move-result v13

    invoke-virtual {v14}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    invoke-virtual {v0, v6, v12, v13, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    iget-boolean v0, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_c7

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mbgRect:Landroid/graphics/Rect;

    sub-int v2, v12, v9

    sub-int v6, v13, v10

    add-int v1, v12, v9

    add-int v4, v13, v10

    invoke-virtual {v0, v2, v6, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_c7
    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    iget-object v0, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result v0

    goto :goto_f3

    :cond_e6
    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/common/util/IconUtils;->getSmallFolderRadius(Landroid/content/Context;F)F

    move-result v0

    :goto_f3
    float-to-int v0, v0

    move v2, v0

    iget-object v0, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v6, v0

    iget-object v0, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getFolderBackgroundRoomInProgress()F

    move-result v0

    iget-boolean v1, v15, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    move/from16 v18, v4

    if-eqz v1, :cond_124

    iget v4, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    move/from16 v20, v13

    move-object/from16 v19, v14

    goto :goto_12d

    :cond_124
    move/from16 v20, v13

    move-object/from16 v19, v14

    iget v4, v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    :goto_12d
    int-to-long v13, v4

    if-eqz v1, :cond_133

    sget-object v4, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_135

    :cond_133
    sget-object v4, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    :goto_135
    if-eqz v1, :cond_142

    const/4 v1, 0x2

    new-array v0, v1, [F

    fill-array-data v0, :array_184

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_152

    :cond_142
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/16 v16, 0x0

    aput v0, v1, v16

    const/4 v0, 0x0

    const/16 v16, 0x1

    aput v0, v1, v16

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_152
    move-object v1, v0

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v14, Lcom/android/launcher3/folder/OplusFolderAnimationManager$9;

    move-object v0, v14

    move-object v13, v1

    move-object/from16 v1, p0

    move/from16 v16, v18

    move v4, v5

    move v5, v6

    move/from16 v6, v16

    move-object v15, v13

    move/from16 v13, v20

    move-object/from16 v17, v15

    move-object/from16 v16, v19

    move-object v15, v14

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$9;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;IFIFFIIIIIIILandroid/widget/ImageView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/folder/OplusFolderAnimationManager$10;

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$10;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_184
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private getFolderBackgroundLocation()[I
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [F

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-nez v3, :cond_50

    const-string v0, "getFolderBackgroundLocation -- nextPage = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFolderBackgroundLocation currentPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFolderBackgroundLocation pageCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFolderBackgroundLocation isPageInTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusFolderAnimationManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_50
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    aget v4, v1, v5

    iget v6, v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    aput v4, v1, v5

    const/4 v4, 0x1

    aget v6, v1, v4

    iget v3, v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    int-to-float v3, v3

    add-float/2addr v6, v3

    aput v6, v1, v4

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolder;->mContentAnimationBackground:Landroid/widget/ImageView;

    aget v3, v1, v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    aput v3, v2, v5

    aget v1, v1, v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    int-to-float p0, p0

    add-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v2, v4

    return-object v2
.end method

.method private getFolderDistance(Landroid/graphics/Rect;)Landroid/graphics/Point;
    .registers 13

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    goto :goto_15

    :cond_10
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    move p1, v1

    :goto_15
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getVirtualFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_27

    move v2, v4

    goto :goto_28

    :cond_27
    move v2, v5

    :goto_28
    const/4 v3, 0x2

    new-array v6, v3, [I

    const-string v7, "OplusFolderAnimationManager"

    if-nez v2, :cond_70

    new-array v2, v3, [I

    iget-object v8, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v8, v9, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v8

    aget v9, v2, v5

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v10

    div-int/2addr v1, v3

    add-int/2addr v1, v10

    int-to-float v1, v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v9

    float-to-int v1, v1

    aput v1, v6, v5

    aget v1, v2, v4

    int-to-float v1, v1

    iget-object v9, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v9

    div-int/2addr p1, v3

    add-int/2addr p1, v9

    int-to-float p1, p1

    mul-float/2addr p1, v8

    add-float/2addr p1, v1

    float-to-int p1, p1

    aput p1, v6, v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_7c

    const-string p1, "getFolderDistance getBackgroundAnimator:"

    invoke-static {v7, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "getFolderDistance"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->printFolderLog(Ljava/lang/String;[I)V

    goto :goto_7c

    :cond_70
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/2addr v1, v3

    aput v1, v6, v5

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    div-int/2addr p1, v3

    aput p1, v6, v4

    :cond_7c
    :goto_7c
    new-array p1, v3, [F

    new-array v1, v3, [I

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    if-nez v2, :cond_ce

    const-string p1, "getFolderDistance -- nextPage = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFolderDistance currentPage = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFolderDistance pageCount = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFolderDistance isPageInTransition = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    iput p0, v0, Landroid/graphics/Point;->x:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    return-object v0

    :cond_ce
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v7, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-static {v2, v7, p1, v5}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    aget v7, p1, v5

    iget v8, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, p1, v5

    aget v7, p1, v4

    iget v2, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    int-to-float v2, v2

    add-float/2addr v7, v2

    aput v7, p1, v4

    aget v2, p1, v5

    iget-object v7, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/2addr v7, v3

    int-to-float v7, v7

    add-float/2addr v2, v7

    float-to-int v2, v2

    aput v2, v1, v5

    aget p1, p1, v4

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    div-int/2addr p0, v3

    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    aput p0, v1, v4

    aget p0, v6, v5

    aget p1, v1, v5

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Point;->x:I

    aget p0, v6, v4

    aget p1, v1, v4

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private getFolderIconCenter()[I
    .registers 11

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v6, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getVirtualFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_27

    move v5, v7

    goto :goto_28

    :cond_27
    move v5, v8

    :goto_28
    if-nez v5, :cond_a4

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v5

    if-nez v5, :cond_54

    aget v6, v1, v8

    int-to-float v6, v6

    iget-object v9, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v9

    div-int/2addr v3, v0

    add-int/2addr v9, v3

    int-to-float v0, v9

    mul-float/2addr v0, v4

    add-float/2addr v0, v6

    float-to-int v0, v0

    aput v0, v2, v8

    aget v0, v1, v7

    int-to-float v0, v0

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v3, v6

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    float-to-int v0, v3

    aput v0, v2, v7

    goto :goto_80

    :cond_54
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v0

    aget v3, v1, v8

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v2, v8

    aget v3, v1, v7

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, v2, v7

    :goto_80
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_b0

    const-string v0, "getFolderIconCenter isBigFolder: "

    const-string v3, ", folderIconCenter = "

    invoke-static {v0, v5, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OplusFolderAnimationManager"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getFolderIconCenter"

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->printFolderLog(Ljava/lang/String;[I)V

    goto :goto_b0

    :cond_a4
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/2addr v1, v0

    aput v1, v2, v8

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    div-int/2addr p0, v0

    aput p0, v2, v7

    :cond_b0
    :goto_b0
    return-object v2
.end method

.method private getFolderIconCenterLocation()[I
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getVirtualFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v3

    :goto_13
    const/4 v1, 0x2

    new-array v4, v1, [I

    if-nez v0, :cond_56

    new-array v0, v1, [I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v5, v6, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v5

    aget v6, v0, v3

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v6

    float-to-int v6, v7

    aput v6, v4, v3

    aget v3, v0, v2

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v4, v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_62

    const-string v1, "getFolderIconCenterLocation"

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->printFolderLog(Ljava/lang/String;[I)V

    goto :goto_62

    :cond_56
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/2addr v0, v1

    aput v0, v4, v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    div-int/2addr p0, v1

    aput p0, v4, v2

    :cond_62
    :goto_62
    return-object v4
.end method

.method private getFolderWarpperLocation()[I
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [F

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-nez v3, :cond_51

    const-string v0, "getFolderWarpperLocation -- nextPage = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFolderWarpperLocation currentPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFolderWarpperLocation pageCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFolderWarpperLocation isPageInTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusFolderAnimationManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_51
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    aget v4, v1, v5

    iget v6, v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    aput v4, v1, v5

    const/4 v4, 0x1

    aget v6, v1, v4

    iget v3, v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    int-to-float v3, v3

    add-float/2addr v6, v3

    aput v6, v1, v4

    aget v3, v1, v5

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    aput v3, v2, v5

    aget v1, v1, v4

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    int-to-float p0, p0

    add-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v2, v4

    return-object v2
.end method

.method private getFullFolderAnimatorSet(Landroid/animation/AnimatorSet;)Landroid/animation/Animator;
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getBackgroundAndIndicatorAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getChildrenAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolder;->getFolderHeader()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->createFolderChildAnimationSet(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-static {p1, v0}, Lcom/oplus/view/OplusRenderNodeAnimator;->createRenderValueAnimator(Landroid/animation/Animator;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mChildListeners:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->addChildrenAnimListeners(Landroid/animation/Animator;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method private getShortcutsAndWidgetsHeight()I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_19

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_19
    return v1
.end method

.method private initAnimListeners(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getFolderOpenAnimTraceTag()Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    move-result-object v1

    goto :goto_17

    :cond_13
    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getFolderCloseAnimTraceTag()Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    move-result-object v1

    :goto_17
    new-instance v2, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private static synthetic lambda$createFolderChildAnimationSet$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleX(Landroid/view/View;F)Z

    return-void
.end method

.method private static synthetic lambda$createFolderChildAnimationSet$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleY(Landroid/view/View;F)Z

    return-void
.end method

.method private static synthetic lambda$createFolderChildAnimationSet$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/view/View;F)Z

    return-void
.end method

.method private static synthetic lambda$getBackgroundAndIndicatorAnimator$3(Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/view/View;F)Z

    return-void
.end method

.method private synthetic lambda$getChildrenAnimatorSet$4(Lcom/android/launcher3/BubbleTextView;FFFFZZZLandroid/animation/ValueAnimator;)V
    .registers 12

    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/lang/Float;

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result p9

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_15

    cmpl-float v0, p9, v1

    if-ltz v0, :cond_15

    return-void

    :cond_15
    sub-float v0, v1, p9

    mul-float/2addr p2, v0

    mul-float/2addr p3, p9

    add-float/2addr p3, p2

    invoke-static {p1, p3}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setTranslationX(Landroid/view/View;F)Z

    mul-float/2addr v0, p4

    mul-float/2addr p5, p9

    add-float/2addr p5, v0

    invoke-static {p1, p5}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setTranslationY(Landroid/view/View;F)Z

    iget-boolean p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/high16 p3, 0x3f400000  # 0.75f

    const/4 v0, 0x0

    if-eqz p2, :cond_31

    div-float p2, p9, p3

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p2

    goto :goto_39

    :cond_31
    div-float p2, p9, p3

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p2

    sub-float p2, v1, p2

    :goto_39
    if-eqz p6, :cond_3e

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setIconAlpha(F)V

    :cond_3e
    if-eqz p7, :cond_5f

    const/4 p3, 0x0

    const p4, 0x3f266666  # 0.65f

    iget-boolean p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz p2, :cond_4a

    move p5, v1

    goto :goto_4b

    :cond_4a
    move p5, v0

    :goto_4b
    if-eqz p2, :cond_4f

    move p6, v0

    goto :goto_50

    :cond_4f
    move p6, v1

    :goto_50
    sget-object p7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move p2, p9

    invoke-static/range {p2 .. p7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p2

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setIconAlpha(F)V

    goto :goto_77

    :cond_5f
    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    iget-object p3, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p3, p2}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->updateDotAlpha(F)V

    iget-object p3, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p3, p2}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->updateDotaAlphaWhenFolderUnfold(F)V

    sget-object p3, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_NEW_UPDATER_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result p3

    if-eqz p3, :cond_77

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->updateNewUpdateDotAlpha(F)V

    :cond_77
    :goto_77
    if-eqz p8, :cond_94

    iget-boolean p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/high16 p3, 0x437f0000  # 255.0f

    if-eqz p2, :cond_8a

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    invoke-static {p9, p3, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->updatePreviewDrawableAlpha(Lcom/android/launcher3/BubbleTextView;I)V

    goto :goto_94

    :cond_8a
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    invoke-static {p9, v0, p3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->updatePreviewDrawableAlpha(Lcom/android/launcher3/BubbleTextView;I)V

    :cond_94
    :goto_94
    return-void
.end method

.method private static synthetic lambda$getChildrenAnimatorSet$5(Lcom/android/launcher3/BubbleTextView;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleX(Landroid/view/View;F)Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleY(Landroid/view/View;F)Z

    return-void
.end method

.method private printFolderLog(Ljava/lang/String;[I)V
    .registers 4

    const-string v0, " folderIconPos:"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", left:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", offsetx:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", top:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", offsetY:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusFolderAnimationManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private refreshViewMultiNodeState(Lcom/android/launcher3/BubbleTextView;ZZZZ)V
    .registers 9

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_52

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    if-nez p4, :cond_f

    if-nez p3, :cond_f

    if-eqz p5, :cond_10

    :cond_f
    move v2, v1

    :cond_10
    invoke-virtual {p1, v1, v2, p4, v1}, Lcom/android/launcher3/BubbleTextView;->setMultiNodeEnable(ZZZZ)V

    const/4 p2, 0x0

    if-nez p3, :cond_18

    if-eqz p4, :cond_20

    :cond_18
    iget-boolean p3, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz p3, :cond_20

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setIconAlpha(F)V

    goto :goto_23

    :cond_20
    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setIconAlpha(F)V

    :goto_23
    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz p0, :cond_37

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->updateDotAlpha(F)V

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->updateDotaAlphaWhenFolderUnfold(F)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->updateNewUpdateDotAlpha(F)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    :cond_37
    if-eqz p5, :cond_5c

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    sget-object p0, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_NEW_UPDATER_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result p0

    if-eqz p0, :cond_47

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->updateNewUpdateDotAlpha(F)V

    :cond_47
    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->updateDotAlpha(F)V

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->updateDotaAlphaWhenFolderUnfold(F)V

    goto :goto_5c

    :cond_52
    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/android/launcher3/BubbleTextView;->setMultiNodeEnable(ZZZZ)V

    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz p0, :cond_5c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private shouldPlayFolderDisbandAnimation()Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/4 v1, 0x0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-boolean v0, v0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez v0, :cond_30

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v3, :cond_21

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    if-nez v0, :cond_21

    return v2

    :cond_21
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-gez v0, :cond_30

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p0

    if-gt p0, v2, :cond_30

    return v2

    :cond_30
    return v1
.end method

.method private updateAnimColorFilter(Landroid/widget/ImageView;)V
    .registers 3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f080672

    goto :goto_35

    :cond_10
    const v0, 0x7f080673

    goto :goto_35

    :cond_14
    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_24

    const v0, 0x7f0804de

    goto :goto_35

    :cond_24
    const v0, 0x7f080671

    goto :goto_35

    :cond_28
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_32

    const v0, 0x7f0804dd

    goto :goto_35

    :cond_32
    const v0, 0x7f080670

    :goto_35
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updatePivot(Lcom/android/launcher3/BubbleTextView;)V
    .registers 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getPivotX()F

    move-result p0

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-eq p0, v1, :cond_17

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setPivotX(F)V

    :cond_17
    invoke-virtual {p1}, Landroid/widget/TextView;->getPivotY()F

    move-result p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-eq p0, v1, :cond_2c

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setPivotY(F)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public createFolderBackgroundAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->getContentBackground()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mContentbackgroundAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_13
    const/4 v0, 0x0

    if-nez p1, :cond_30

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v2}, Lcom/android/launcher3/folder/IFolderExt;->getContentBackground()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->isVisibleToUser()Z

    move-result v2

    if-nez v2, :cond_30

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p0}, Lcom/android/launcher3/folder/IFolderExt;->getContentBackground()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-object v1

    :cond_30
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v2}, Lcom/android/launcher3/folder/IFolderExt;->getContentBackground()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    if-eqz p1, :cond_45

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_45
    aput v0, v3, v4

    const-string v0, "alpha"

    invoke-static {v2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mContentbackgroundAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_70

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mContentbackgroundAnim:Landroid/animation/ObjectAnimator;

    iget v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result p1

    if-eqz p1, :cond_75

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFooterController()Lcom/android/launcher/folder/recommend/FooterController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/FooterController;->updateBackgroundMargin()V

    goto :goto_75

    :cond_70
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_75
    :goto_75
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mContentbackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v1
.end method

.method public getAnimator()Landroid/animation/Animator;
    .registers 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isSuperLightFolderAnim()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-static {v1, v2}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getSuperLightFolderContentAnimation(ZLcom/android/launcher3/folder/Folder;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_26

    :cond_17
    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->shouldPlayFolderDisbandAnimation()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-static {v1}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getCloseFolderDisbandAnimation(Lcom/android/launcher3/folder/Folder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_26
    const/4 v1, 0x0

    goto :goto_2c

    :cond_28
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFullFolderAnimatorSet(Landroid/animation/AnimatorSet;)Landroid/animation/Animator;

    move-result-object v1

    :goto_2c
    if-eqz v1, :cond_30

    move-object v2, v1

    goto :goto_31

    :cond_30
    move-object v2, v0

    :goto_31
    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->initAnimListeners(Landroid/animation/Animator;)V

    iget-boolean v2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    iget-boolean v2, v2, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mColorFolder:Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->hasReorderAnimatorRunning()Z

    move-result p0

    if-nez p0, :cond_55

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_55
    if-eqz v1, :cond_58

    move-object v0, v1

    :cond_58
    return-object v0
.end method

.method public getChildrenAnimatorSet()Landroid/animation/AnimatorSet;
    .registers 50

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    instance-of v3, v2, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v3, :cond_16

    iget v0, v2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    :cond_16
    move v11, v0

    iget-object v0, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v12, v0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v13, v0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v2, "OplusFolderAnimationManager"

    if-eqz v0, :cond_41

    const-string v0, "getChildrenAnimatorSet, folderIconWidth:"

    const-string v3, ", iconSize:"

    const-string v4, ", cellWidth:"

    invoke-static {v0, v1, v3, v11, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cellHeight:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mChildListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_52

    iget v0, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenDuration:I

    goto :goto_5d

    :cond_52
    iget v0, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderCloseDuration:I

    int-to-float v0, v0

    iget-object v3, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getFolderItemRoomInProgress()F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    :goto_5d
    move v15, v0

    iget-boolean v0, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_65

    sget-object v0, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_67

    :cond_65
    sget-object v0, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    :goto_67
    move-object v9, v0

    iget-object v0, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getStyleBoundOffset()F

    move-result v16

    invoke-virtual {v8}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getStyleBoundBase()F

    move-result v17

    iget-object v0, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->snapToTargetIfNeed()V

    iget-object v0, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v7

    const-string v0, "Folder"

    const/16 v18, 0x0

    if-nez v7, :cond_90

    const-string v1, "getChildrenAnimatorSet, cell layout is null"

    invoke-static {v0, v2, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v18

    :cond_90
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    if-nez v6, :cond_9c

    const-string v1, "getChildrenAnimatorSet, ShortcutAndWidgetContainer is null"

    invoke-static {v0, v2, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v18

    :cond_9c
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->checkCurrentPreviewParams()V

    iget-object v4, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v4

    if-eqz v4, :cond_d5

    iget-object v1, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object/from16 v26, v14

    move/from16 v48, v5

    move v5, v4

    move/from16 v4, v48

    goto :goto_db

    :cond_d5
    move v4, v1

    move v5, v4

    move-object/from16 v26, v14

    move-object/from16 v1, v18

    :goto_db
    iget-object v14, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v14

    move-object/from16 v27, v9

    iget-object v9, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v14, v9, v3}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v14

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    iput v9, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mRealCount:I

    invoke-direct {v10, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getFolderDistance(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v9

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    iget-object v3, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v3, v3

    const v19, 0x3f0ccccd  # 0.55f

    mul-float v3, v3, v19

    cmpl-float v1, v1, v3

    if-lez v1, :cond_107

    const/4 v1, 0x1

    goto :goto_108

    :cond_107
    const/4 v1, 0x0

    :goto_108
    move v3, v1

    iget v1, v8, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    move/from16 v28, v15

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v15

    if-eq v1, v15, :cond_115

    const/4 v1, 0x1

    goto :goto_116

    :cond_115
    const/4 v1, 0x0

    :goto_116
    move/from16 v20, v1

    iget-object v1, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v1

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderUtil;->getFolderMaxCol(Z)I

    move-result v15

    iget-object v1, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v1

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderUtil;->getFolderMaxRow(Z)I

    move-result v1

    move-object/from16 v36, v9

    iget-object v9, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    move/from16 v37, v4

    iget v4, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mRealCount:I

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v22

    move/from16 v38, v13

    iget-object v13, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    move-object/from16 v19, v9

    move/from16 v21, v4

    move/from16 v23, v15

    move-object/from16 v24, v13

    move-object/from16 v25, v6

    invoke-virtual/range {v19 .. v25}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->addBubbleTextViewIfNeeded(ZIIILcom/android/launcher3/folder/FolderPagedView;Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result v4

    iput v4, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mAddCount:I

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const-string v4, "Folder children anima: isOpening = "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v9, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    move/from16 v19, v14

    const-string v14, ", newChildCount = "

    move/from16 v20, v11

    const-string v11, ", isMoveTopFirst = "

    invoke-static {v4, v9, v14, v13, v11}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    invoke-static {v4, v3, v0, v2}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_16a

    const/4 v0, 0x0

    goto :goto_17a

    :cond_16a
    add-int/lit8 v0, v13, -0x1

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_17a
    move v11, v0

    const/4 v0, 0x0

    move v14, v0

    :goto_17d
    if-ge v14, v13, :cond_3ca

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual {v8, v9, v0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getFolderAnimParma(Lcom/android/launcher3/BubbleTextView;I)Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;

    move-result-object v0

    iget v2, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mAddCount:I

    sub-int v2, v13, v2

    if-lt v14, v2, :cond_196

    const/4 v2, 0x1

    goto :goto_197

    :cond_196
    const/4 v2, 0x0

    :goto_197
    move/from16 v21, v2

    if-nez v21, :cond_1bc

    iget-object v2, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    iget v4, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewColumn:I

    move-object/from16 v22, v6

    iget v6, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewRow:I

    move/from16 v23, v13

    iget-object v13, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v13, v13, Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-object/from16 v29, v2

    move-object/from16 v30, v9

    move/from16 v31, v15

    move/from16 v32, v1

    move/from16 v33, v4

    move/from16 v34, v6

    move/from16 v35, v13

    invoke-virtual/range {v29 .. v35}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->addPreviewDrawableToBubble(Lcom/android/launcher3/BubbleTextView;IIIIZ)Z

    move-result v2

    goto :goto_1c1

    :cond_1bc
    move-object/from16 v22, v6

    move/from16 v23, v13

    const/4 v2, 0x0

    :goto_1c1
    move v13, v2

    iget-object v2, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mFolderOpenAnimHelper:Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    invoke-virtual {v2, v0, v15, v1}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->requireAlphaChild(Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;II)Z

    move-result v24

    iget v2, v8, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    iget v4, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewColumn:I

    iget-boolean v6, v8, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    move/from16 v25, v1

    const/4 v1, 0x1

    invoke-static {v2, v4, v1, v6}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result v1

    iget v2, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->folderIconPaddingX:F

    int-to-float v1, v1

    iget v4, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->previewItemWidthWithGap:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v2

    iget v2, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->folderIconPaddingY:F

    iget v4, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewRow:I

    int-to-float v4, v4

    iget v6, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->previewItemHeightWithGap:F

    mul-float/2addr v4, v6

    add-float/2addr v4, v2

    move-object v2, v9

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->isLayoutHorizontal()Z

    move-result v2

    if-eqz v2, :cond_207

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9, v2}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iget v6, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->scale:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    goto :goto_208

    :cond_207
    const/4 v2, 0x0

    :goto_208
    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout$LayoutParams;

    move-object/from16 v29, v8

    iget-object v8, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move/from16 v30, v15

    const/high16 v15, 0x40000000  # 2.0f

    div-float/2addr v8, v15

    move/from16 v31, v14

    int-to-float v14, v12

    div-float/2addr v14, v15

    sub-float/2addr v8, v14

    iget v14, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    int-to-float v14, v14

    sub-float/2addr v8, v14

    iget-object v14, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v8, v14

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v8, v14

    int-to-float v14, v5

    move/from16 v15, v20

    move/from16 v20, v5

    int-to-float v5, v15

    move/from16 v33, v12

    iget v12, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->scale:F

    mul-float/2addr v5, v12

    sub-float/2addr v14, v5

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v14, v5

    add-float v14, v14, v16

    sub-float/2addr v14, v1

    mul-float v14, v14, v19

    sub-float/2addr v8, v14

    int-to-float v1, v2

    sub-float/2addr v8, v1

    iget-object v1, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    move/from16 v12, v38

    int-to-float v2, v12

    div-float v14, v2, v5

    sub-float/2addr v1, v14

    iget v5, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget-object v5, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    move/from16 v5, v37

    int-to-float v6, v5

    const/high16 v14, 0x40000000  # 2.0f

    div-float/2addr v6, v14

    iget v5, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->scale:F

    invoke-static {v2, v5, v14, v6}, Landroidx/constraintlayout/core/motion/b;->a(FFFF)F

    move-result v2

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float v5, v5, v17

    iget v6, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->scale:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    add-float v5, v5, v16

    sub-float/2addr v5, v4

    mul-float v5, v5, v19

    sub-float/2addr v1, v5

    iget-boolean v2, v10, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v2, :cond_2b2

    move-object/from16 v14, v36

    iget v2, v14, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    add-float/2addr v8, v2

    iget v2, v14, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float v6, v6, v19

    iget v0, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->bubbleTextViewRow:I

    if-eqz v3, :cond_29c

    goto :goto_29e

    :cond_29c
    sub-int v0, v11, v0

    :goto_29e
    mul-int/lit8 v0, v0, 0x11

    int-to-long v4, v0

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    const/16 v32, 0x0

    move/from16 v34, v32

    move/from16 v32, v0

    move/from16 v48, v2

    move v2, v1

    move v1, v6

    move-wide v5, v4

    move/from16 v4, v48

    goto :goto_2e6

    :cond_2b2
    move-object/from16 v14, v36

    invoke-virtual {v9}, Landroid/widget/TextView;->getTranslationX()F

    move-result v2

    iget v4, v14, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v8, v4

    invoke-virtual {v9}, Landroid/widget/TextView;->getScaleX()F

    move-result v6

    iget v0, v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$AnimParam;->scale:F

    mul-float v0, v0, v19

    iget-object v4, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_2d1

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    goto :goto_2d2

    :cond_2d1
    const/4 v4, 0x0

    :goto_2d2
    invoke-virtual {v9}, Landroid/widget/TextView;->getTranslationY()F

    move-result v5

    sub-float/2addr v5, v4

    move/from16 v32, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    sub-float/2addr v1, v4

    move/from16 v34, v1

    move v1, v6

    move v4, v8

    move v8, v2

    move v2, v5

    const-wide/16 v5, 0x0

    :goto_2e6
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setScaleY(F)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3ce

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    move/from16 v35, v11

    move-object/from16 v36, v14

    move/from16 v11, v28

    move/from16 v28, v15

    int-to-long v14, v11

    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    move/from16 v38, v11

    move-object/from16 v11, v27

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move-object/from16 v27, v0

    invoke-virtual {v9}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    if-eqz v0, :cond_324

    invoke-virtual {v9}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v39

    check-cast v39, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    goto :goto_326

    :cond_324
    move-object/from16 v39, v18

    :goto_326
    if-eqz v13, :cond_334

    if-eqz v0, :cond_334

    move/from16 v40, v0

    invoke-static/range {v39 .. v39}, Lcom/android/launcher3/icons/FastBitmapUtils;->newIconFromFancyDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_336

    :cond_334
    move/from16 v40, v0

    :goto_336
    new-instance v0, Lcom/android/launcher3/folder/r;

    const/16 v41, 0x0

    move-object/from16 v42, v11

    move-object/from16 v11, v27

    move/from16 v27, v40

    move-object/from16 v40, v0

    move/from16 v43, v1

    move-object/from16 v1, p0

    move/from16 v44, v2

    move-object v2, v9

    move/from16 v45, v3

    move v3, v8

    move-wide/from16 v46, v5

    move/from16 v5, v44

    move/from16 v6, v34

    move-object/from16 v34, v7

    move/from16 v7, v24

    move/from16 v8, v21

    move/from16 v44, v12

    move-object v12, v9

    move v9, v13

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/folder/r;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFFFZZZ)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {v10, v12}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->updatePivot(Lcom/android/launcher3/BubbleTextView;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v43, v0, v41

    const/4 v1, 0x1

    aput v32, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-wide/from16 v4, v46

    invoke-virtual {v8, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move-object/from16 v9, v42

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher/folder/recommend/view/a;

    invoke-direct {v0, v12}, Lcom/android/launcher/folder/recommend/view/a;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v14, v10, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->mChildListeners:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v3, v24

    move v4, v13

    move/from16 v5, v21

    move/from16 v6, v27

    move-object/from16 v7, v39

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;-><init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/BubbleTextView;ZZZZLcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v11, v0, v41

    const/4 v1, 0x1

    aput-object v8, v0, v1

    move-object/from16 v1, v26

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v14, v31, 0x1

    move-object/from16 v27, v9

    move/from16 v5, v20

    move-object/from16 v6, v22

    move/from16 v13, v23

    move/from16 v1, v25

    move/from16 v20, v28

    move-object/from16 v8, v29

    move/from16 v15, v30

    move/from16 v12, v33

    move-object/from16 v7, v34

    move/from16 v11, v35

    move/from16 v28, v38

    move/from16 v38, v44

    move/from16 v3, v45

    goto/16 :goto_17d

    :cond_3ca
    move-object/from16 v1, v26

    return-object v1

    nop

    :array_3ce
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getFolderIcon()Lcom/android/launcher3/folder/OplusFolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    return-object p0
.end method

.method public isOpening()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    return p0
.end method
