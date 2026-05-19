.class public final Lcom/android/launcher3/taskbar/OplusTaskbarView;
.super Lcom/android/launcher3/taskbar/TaskbarView;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/ITaskbarView;
.implements Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;
.implements Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;
.implements Lcom/android/launcher3/taskbar/TaskbarUtils$ILauncherAvailableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/OplusTaskbarView$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskbarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskbarView.kt\ncom/android/launcher3/taskbar/OplusTaskbarView\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 Color.kt\nandroidx/core/graphics/ColorKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1339:1\n37#2,2:1340\n337#3:1342\n125#4,17:1343\n125#4,17:1360\n117#4:1377\n1855#5,2:1378\n1855#5,2:1380\n1549#5:1382\n1620#5,3:1383\n800#5,11:1386\n1855#5,2:1397\n*S KotlinDebug\n*F\n+ 1 OplusTaskbarView.kt\ncom/android/launcher3/taskbar/OplusTaskbarView\n*L\n571#1:1340,2\n1237#1:1342\n1243#1:1343,17\n1257#1:1360,17\n1259#1:1377\n1284#1:1378,2\n1290#1:1380,2\n1334#1:1382\n1334#1:1383,3\n1334#1:1386,11\n1334#1:1397,2\n*E\n"
    }
.end annotation


# static fields
.field private static final ANIM_ADD_DURATION:J = 0x12cL

.field private static final ANIM_ADD_OR_REMOVE_SCALE:F = 0.8f

.field private static final ANIM_REMOVE_DURATION:J = 0x12cL

.field private static final ANIM_REPLACE_ALPHA_NORMAL:F = 1.0f

.field private static final ANIM_REPLACE_DURATION:J = 0x1f4L

.field private static final ANIM_REPLACE_SCALE:F = 0.9f

.field private static final ANIM_REPLACE_SCALE_NORMAL:F = 1.0f

.field private static final ANIM_START_DELAY:J = 0x32L

.field public static final Companion:Lcom/android/launcher3/taskbar/OplusTaskbarView$Companion;

.field private static final DEBUG_ANIMATOR:Z = false

.field public static final ITEM_TYPE_ALL_APPS:I = 0xcc

.field public static final ITEM_TYPE_DIVIDER_1:I = 0xcb

.field public static final ITEM_TYPE_DIVIDER_2:I = 0xc9

.field public static final ITEM_TYPE_EXPAND:I = 0xca

.field public static final ITEM_TYPE_EXPAND_CONTAINER:I = 0x7d0

.field public static final ITEM_TYPE_FILE_MANAGER:I = 0xce

.field public static final ITEM_TYPE_FOLDER:I = 0x3

.field public static final ITEM_TYPE_GLOBAL_SEARCH:I = 0xcd

.field private static final LONG_PRESS_TIMEOUT:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "OplusTaskbarView"


# instance fields
.field private deferTask:Lm7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/l<",
            "-",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimator:Landroid/animation/Animator;

.field private mBgColor:I

.field private mBgEvaluator:Landroid/animation/RectEvaluator;

.field private mBgMaxAlpha:I

.field private mBgRect:Landroid/graphics/Rect;

.field private final mDividerHeight:I

.field private final mDividerMarginHor:I

.field private final mDividerMarginTop:I

.field private final mDividerWidth:I

.field private final mHotSeatBgRect:Landroid/graphics/Rect;

.field private final mIconActualSize:I

.field private final mIconItemPadding:I

.field private mIconLeftRegionMarginHorWithNoNavButtons:I

.field private mIconLeftRegionMarginWithNavButtonsInLeft:I

.field private mIconLeftRegionMarginWithNavButtonsInRight:I

.field private final mIconMarginHor:I

.field private final mIconMarginVer:I

.field private final mIconRegionMarginHorWithNavButtons:I

.field private final mIconRegionMarginHorWithNoNavButtons:I

.field private mIconRegionNavButtonsSpaceWithNavLeft:I

.field private mIconRegionNavButtonsSpaceWithNavRight:I

.field private mIconRightRegionMarginHorWithNoNavButtons:I

.field private mIconRightRegionMarginWithNavButtonsInLeft:I

.field private mIconRightRegionMarginWithNavButtonsInRight:I

.field private final mIconTouchSize:I

.field private mIsDarkMode:Z

.field private mIsShowNavButtons:Z

.field private mNavButtonsPanelWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private final mRadius:F

.field private final mRes:Landroid/content/res/Resources;

.field private mShowNavBtnAtRight:Z

.field private final mStashHandleTranslateY:I

.field private final mTaskBarBgRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mPath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mTaskBarBgRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/animation/RectEvaluator;

    invoke-direct {p2}, Landroid/animation/RectEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgEvaluator:Landroid/animation/RectEvaluator;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mHotSeatBgRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070f93

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f070c40

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconTouchSize:I

    const v1, 0x7f070c3f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconActualSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconItemPadding:I

    const v0, 0x7f070c38

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconMarginHor:I

    const v0, 0x7f070c39

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconMarginVer:I

    const v0, 0x7f070c4e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerWidth:I

    const v0, 0x7f070c4c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerHeight:I

    const v0, 0x7f070c34

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerMarginHor:I

    const v0, 0x7f070c35

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerMarginTop:I

    const v0, 0x7f070c3b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRegionMarginHorWithNoNavButtons:I

    const v0, 0x7f070c42

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginHorWithNoNavButtons:I

    const v0, 0x7f070c49

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRightRegionMarginHorWithNoNavButtons:I

    const v0, 0x7f070c3a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRegionMarginHorWithNavButtons:I

    const v0, 0x7f070c43

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginWithNavButtonsInLeft:I

    const v0, 0x7f070c44

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginWithNavButtonsInRight:I

    const v0, 0x7f070c4a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRightRegionMarginWithNavButtonsInLeft:I

    const v0, 0x7f070c4b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRightRegionMarginWithNavButtonsInRight:I

    const v0, 0x7f070c48

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mNavButtonsPanelWidth:I

    const v0, 0x7f070c3c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRegionNavButtonsSpaceWithNavLeft:I

    const v0, 0x7f070c3d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRegionNavButtonsSpaceWithNavRight:I

    const v0, 0x7f07100d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mStashHandleTranslateY:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mShowNavBtnAtRight:Z

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo p2, "taskbar_region_is_dark"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIsDarkMode:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/OplusTaskbarView;IILandroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getReplaceAnimator$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarView;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$setDeferTask$p(Lcom/android/launcher3/taskbar/OplusTaskbarView;Lm7/l;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->deferTask:Lm7/l;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getAddAnimator$lambda$2(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/util/SparseArray;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getAddAnimator$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/util/SparseArray;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final computeBgRect(F)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgEvaluator:Landroid/animation/RectEvaluator;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mTaskBarBgRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mHotSeatBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "mBgEvaluator.evaluate(pr…arBgRect, mHotSeatBgRect)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgRect:Landroid/graphics/Rect;

    return-void
.end method

.method private final createItemViewContainer(Lcom/android/launcher3/model/data/ItemInfo;Z)Landroid/view/View;
    .registers 4

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->createViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->makeExpandItemContainerInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->createViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Z)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->createViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Z)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method private final createViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;IZ)Landroid/view/View;
    .registers 16

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_24

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;

    invoke-direct {v0, p0, v5}, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;Ll4/d;)V

    const/4 v6, 0x1

    invoke-static {v5, v0, v6, v5}, Lm7/h;->d(Ll4/f;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    :cond_24
    move-object v8, v0

    iput-object v5, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->deferTask:Lm7/l;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.model.data.FolderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, p1

    check-cast v10, Lcom/android/launcher3/model/data/FolderInfo;

    sget-object v6, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon$Companion;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string v0, "mActivityContext"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v7, p2

    move-object v9, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon$Companion;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

    move-result-object p2

    iget v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconItemPadding:I

    invoke-virtual {p2, v0, v0, v0, v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->setInitPadding(IIII)V

    invoke-virtual {p2, v4}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTextVisible(Z)V

    goto :goto_4f

    :cond_4b
    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarView;->inflate(I)Landroid/view/View;

    move-result-object p2

    :goto_4f
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string/jumbo v0, "view"

    if-eqz v1, :cond_5d

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->updateDividerBackground(Landroid/view/View;)V

    :cond_5d
    if-eqz v1, :cond_69

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerWidth:I

    iget v7, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_70

    :cond_69
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconTouchSize:I

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_70
    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_80

    iget v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerMarginHor:I

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerMarginHor:I

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_97

    :cond_80
    if-nez v2, :cond_88

    iget v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconItemPadding:I

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_8b

    :cond_88
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_8b
    if-eqz v3, :cond_8f

    move v2, v4

    goto :goto_91

    :cond_8f
    iget v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconMarginHor:I

    :goto_91
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    :goto_97
    if-eqz p3, :cond_b4

    instance-of p3, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz p3, :cond_ac

    instance-of p3, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p3, :cond_ac

    move-object p3, p2

    check-cast p3, Lcom/android/launcher3/BubbleTextView;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {p3, v4}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    :cond_ac
    if-nez v1, :cond_b4

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    :cond_b4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method private final createViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Z)Landroid/view/View;
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getExpectedLayoutResId(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->createViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/util/SparseArray;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getRemoveAnimator$lambda$4(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/util/SparseArray;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getRemoveAnimator$lambda$3(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getAddAnimator(IIILandroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/animation/Animator;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    move/from16 v0, p1

    add-int v7, v0, p3

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_3f

    move/from16 v8, p2

    if-ge v1, v8, :cond_14

    move-object/from16 v3, p4

    move v2, v1

    goto :goto_18

    :cond_14
    add-int v2, v1, p3

    move-object/from16 v3, p4

    :goto_18
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v6, p5

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v10, "oldItemLeft"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_3f
    move/from16 v8, p2

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x2

    new-array v0, v10, [F

    fill-array-data v0, :array_9a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v14, Lcom/android/launcher3/taskbar/g0;

    const/4 v6, 0x0

    move-object v0, v14

    move-object v1, p0

    move v2, v7

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/taskbar/g0;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/util/SparseArray;I)V

    invoke-virtual {v11, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v10, [F

    fill-array-data v0, :array_a2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x32

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v10, Lcom/android/launcher3/taskbar/f0;

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/f0;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIII)V

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v9

    nop

    :array_9a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_a2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final getAddAnimator$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/util/SparseArray;Landroid/animation/ValueAnimator;)V
    .registers 11

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newItemXDeltas"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-eq v1, p1, :cond_49

    const-string p0, "addItems transAnimator#"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->hashCode()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " return. rate: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", curChildCount: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", newChildCount: "

    invoke-static {p0, v1, p2, p1}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string p2, "OplusTaskbarView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_49
    const/4 p5, 0x0

    move v1, p5

    :goto_4b
    if-ge v1, p1, :cond_7d

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-lt v1, p2, :cond_5a

    add-int v4, p2, p3

    if-ge v1, v4, :cond_5a

    move v4, v3

    goto :goto_5b

    :cond_5a
    move v4, p5

    :goto_5b
    if-nez v4, :cond_7a

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_68

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_7a

    :cond_68
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    neg-float v4, v4

    int-to-float v3, v3

    sub-float/2addr v3, v0

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    :cond_7a
    :goto_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_7d
    return-void
.end method

.method private static final getAddAnimator$lambda$2(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/animation/ValueAnimator;)V
    .registers 10

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-eq v1, p1, :cond_44

    const-string p0, "addItems addedViewAnimator#"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->hashCode()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " return. rate: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", curChildCount: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", newChildCount: "

    invoke-static {p0, v1, p2, p1}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string p2, "OplusTaskbarView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_44
    const/4 p4, 0x0

    move v1, p4

    :goto_46
    if-ge v1, p1, :cond_6b

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-lt v1, p2, :cond_54

    add-int v3, p2, p3

    if-ge v1, v3, :cond_54

    const/4 v3, 0x1

    goto :goto_55

    :cond_54
    move v3, p4

    :goto_55
    if-eqz v3, :cond_68

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    const v3, 0x3f4ccccd  # 0.8f

    const v4, 0x3e4ccccc  # 0.19999999f

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_6b
    return-void
.end method

.method private final getChildrenAfterRemove(Landroid/view/ViewGroup;II)Lj7/h;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lj7/h<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz p2, :cond_33

    if-ltz p3, :cond_33

    add-int v1, p2, p3

    if-gt v1, v0, :cond_33

    const/4 p3, 0x0

    move v2, p3

    :goto_13
    if-ge v2, v0, :cond_2e

    if-lt v2, p2, :cond_1b

    if-ge v2, v1, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    move v3, p3

    :goto_1c
    if-nez v3, :cond_2b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "parent.getChildAt(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2e
    invoke-static {p0}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object p0

    return-object p0

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid params. totalCount: "

    const-string v1, ", startIndex: "

    const-string v2, ", count: "

    invoke-static {p1, v0, v1, p2, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getExpectedLayoutResId(Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isPredictedItem()Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f0d025b

    goto :goto_33

    :cond_a
    instance-of p0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p0, :cond_12

    const p0, 0x7f0d0248

    goto :goto_33

    :cond_12
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const p0, 0x7f0d01db

    goto :goto_33

    :cond_1c
    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_26

    const p0, 0x7f0d01d9

    goto :goto_33

    :cond_26
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_30

    const p0, 0x7f0d01da

    goto :goto_33

    :cond_30
    const p0, 0x7f0d01d8

    :goto_33
    return p0
.end method

.method private final getRemoveAnimator(IIILandroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/animation/Animator;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    move/from16 v6, p2

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    move/from16 v8, p1

    move v1, v0

    :goto_b
    if-ge v1, v8, :cond_4e

    if-lt v1, v6, :cond_15

    add-int v2, v6, p3

    if-ge v1, v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    move v2, v0

    :goto_16
    if-nez v2, :cond_47

    if-ge v1, v6, :cond_1e

    move-object/from16 v3, p4

    move v2, v1

    goto :goto_22

    :cond_1e
    sub-int v2, v1, p3

    move-object/from16 v3, p4

    :goto_22
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v5, p5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v10, "oldItemLeft"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4b

    :cond_47
    move-object/from16 v3, p4

    move-object/from16 v5, p5

    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_4e
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x2

    new-array v0, v10, [F

    fill-array-data v0, :array_a8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v14, Lcom/android/launcher3/taskbar/f0;

    const/4 v5, 0x1

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/f0;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIII)V

    invoke-virtual {v11, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v10, [F

    fill-array-data v0, :array_b0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    invoke-virtual {v10, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v12, Lcom/android/launcher3/taskbar/g0;

    const/4 v13, 0x1

    move-object v0, v12

    move-object v5, v7

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/taskbar/g0;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/util/SparseArray;I)V

    invoke-virtual {v10, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x32

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v9

    :array_a8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_b0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final getRemoveAnimator$lambda$3(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/animation/ValueAnimator;)V
    .registers 10

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-eq v1, p1, :cond_45

    const-string/jumbo p0, "removeItems removeViewAnimator#"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->hashCode()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " return. rate: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", curChildCount: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", oldChildCount: "

    invoke-static {p0, v1, p2, p1}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string p2, "OplusTaskbarView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_45
    const/4 p4, 0x0

    move v1, p4

    :goto_47
    if-ge v1, p1, :cond_6e

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-lt v1, p2, :cond_56

    add-int v4, p2, p3

    if-ge v1, v4, :cond_56

    move v4, v3

    goto :goto_57

    :cond_56
    move v4, p4

    :goto_57
    if-eqz v4, :cond_6b

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    int-to-float v3, v3

    const v4, 0x3e4ccccc  # 0.19999999f

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_6e
    return-void
.end method

.method private static final getRemoveAnimator$lambda$4(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/util/SparseArray;Landroid/animation/ValueAnimator;)V
    .registers 11

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newItemXDeltas"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-eq v1, p1, :cond_4a

    const-string/jumbo p0, "removeItems transAnimator#"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->hashCode()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " return. rate: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", curChildCount: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", oldChildCount: "

    invoke-static {p0, v1, p2, p1}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string p2, "OplusTaskbarView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4a
    const/high16 p5, 0x3f800000  # 1.0f

    cmpl-float p5, v0, p5

    const/4 v1, 0x1

    if-ltz p5, :cond_7a

    add-int/2addr p3, p2

    sub-int/2addr p3, v1

    if-gt p2, p3, :cond_61

    :goto_55
    invoke-static {p0, p3}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->removeAndRecycle(Landroid/view/View;)V

    if-eq p3, p2, :cond_61

    add-int/lit8 p3, p3, -0x1

    goto :goto_55

    :cond_61
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object p0

    invoke-interface {p0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_69
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_69

    :cond_7a
    const/4 p5, 0x0

    move v2, p5

    :goto_7c
    if-ge v2, p1, :cond_a5

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-lt v2, p2, :cond_8a

    add-int v4, p2, p3

    if-ge v2, v4, :cond_8a

    move v4, v1

    goto :goto_8b

    :cond_8a
    move v4, p5

    :goto_8b
    if-nez v4, :cond_a2

    if-ge v2, p2, :cond_91

    move v4, v2

    goto :goto_93

    :cond_91
    sub-int v4, v2, p3

    :goto_93
    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    :cond_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_a5
    return-void
.end method

.method private final getReplaceAnimator(II)Landroid/animation/Animator;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    add-int/2addr p2, p1

    new-instance v1, Lcom/android/launcher3/taskbar/h0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/taskbar/h0;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarView$getReplaceAnimator$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView$getReplaceAnimator$2;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "animator"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :array_2e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final getReplaceAnimator$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarView;IILandroid/animation/ValueAnimator;)V
    .registers 10

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    :goto_16
    if-ge p1, p2, :cond_a3

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    const-string v3, "OplusTaskbarView"

    const-string v4, "Taskbar"

    if-nez v2, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReplaceAnimator wrong item type. please debug this. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", i: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    :cond_4f
    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_65

    const-string/jumbo v0, "wrong child count, please debug this."

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    :cond_65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/view/View;->setAlpha(F)V

    const v4, 0x3f666666  # 0.9f

    const v5, 0x3dccccd0  # 0.100000024f

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float v4, v3, p3

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    int-to-float v2, v2

    sub-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    cmpl-float v2, p3, v3

    if-ltz v2, :cond_9f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const-string/jumbo v0, "oldChildView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->recycleView(Landroid/view/View;)V

    :cond_9f
    :goto_9f
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_16

    :cond_a3
    return-void
.end method

.method private final layoutChildLeft(Lj7/h;ZZ)Landroid/util/SparseArray;
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/h<",
            "+",
            "Landroid/view/View;",
            ">;ZZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p1}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string/jumbo v6, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    if-eqz v5, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v5}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v5

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_34
    if-nez v3, :cond_37

    return-object v0

    :cond_37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    if-eqz p2, :cond_50

    if-eqz p3, :cond_47

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginWithNavButtonsInRight:I

    goto :goto_52

    :cond_47
    iget p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mNavButtonsPanelWidth:I

    iget p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginWithNavButtonsInLeft:I

    add-int/2addr p2, p3

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRegionNavButtonsSpaceWithNavLeft:I

    add-int/2addr p0, p2

    goto :goto_52

    :cond_50
    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginHorWithNoNavButtons:I

    :goto_52
    const/4 p2, 0x2

    invoke-static {v1, v4, p2, p0}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result p0

    invoke-interface {p1}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result p2

    add-int/2addr p2, v1

    add-int/2addr p0, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_87
    return-object v0
.end method

.method private final recycleView(Landroid/view/View;)V
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v1, :cond_2e

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getSourceLayoutResId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    :cond_2e
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private final showNavButtons()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIsShowNavButtons:Z

    return p0
.end method


# virtual methods
.method public addItems(Ljava/util/List;IZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;IZ)V"
        }
    .end annotation

    const-string v0, "addedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->endLastAnimator()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->showNavButtons()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mShowNavBtnAtRight:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-gez p2, :cond_21

    move v3, v2

    goto :goto_24

    :cond_21
    if-gt p2, v2, :cond_6f

    move v3, p2

    :goto_24
    if-eqz p3, :cond_2f

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object p2

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->layoutChildLeft(Lj7/h;ZZ)Landroid/util/SparseArray;

    move-result-object p2

    goto :goto_34

    :cond_2f
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    :goto_34
    move-object v5, p2

    add-int/lit8 p2, v4, -0x1

    :goto_37
    const/4 v6, -0x1

    if-ge v6, p2, :cond_51

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->createItemViewContainer(Lcom/android/launcher3/model/data/ItemInfo;Z)Landroid/view/View;

    move-result-object v6

    if-eqz p3, :cond_4b

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_4b
    invoke-virtual {p0, v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_37

    :cond_51
    if-nez p3, :cond_54

    return-void

    :cond_54
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->layoutChildLeft(Lj7/h;ZZ)Landroid/util/SparseArray;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getAddAnimator(IIILandroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/animation/Animator;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/taskbar/OplusTaskbarView$addItems$1;

    invoke-direct {p2}, Lcom/android/launcher3/taskbar/OplusTaskbarView$addItems$1;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addItems invalid startIndex: "

    const-string p3, ", oldChildCount: "

    invoke-static {p1, p2, p3, v2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final endLastAnimator()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mAnimator:Landroid/animation/Animator;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "Taskbar"

    const-string v1, "OplusTaskbarView"

    const-string v2, "end last animator"

    invoke-static {p0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_19
    return-void
.end method

.method public final getAnimator()Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getFoldIcons()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1b

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

    if-nez v4, :cond_15

    goto :goto_18

    :cond_15
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getMBgMaxAlpha()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgMaxAlpha:I

    return p0
.end method

.method public final getMTaskBarBgRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mTaskBarBgRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getOriginTranslateY()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v0

    if-nez v0, :cond_1a

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mStashHandleTranslateY:I

    neg-int p0, p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final initBgParameters(IIIFF)V
    .registers 11

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandUtils;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getHotSeatBgColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgColor:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgColor:I

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v1, v1, 0xff

    const/4 v4, 0x0

    invoke-static {v4, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgColor:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgMaxAlpha:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mTaskBarBgRect:Landroid/graphics/Rect;

    int-to-float v1, p1

    sub-float/2addr v1, p4

    float-to-int p4, v1

    iput p4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    int-to-float p4, p2

    sub-float/2addr p4, p5

    float-to-int p4, p4

    iput p4, v0, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mHotSeatBgRect:Landroid/graphics/Rect;

    iput p1, p4, Landroid/graphics/Rect;->left:I

    iput p2, p4, Landroid/graphics/Rect;->right:I

    neg-int p1, p3

    iput p1, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p3

    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .registers 10

    const-string/jumbo v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_5e

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_5b

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_5b

    :cond_22
    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_54

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_54

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object v4

    invoke-interface {v4}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_37

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v6, v5}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_37

    return-void

    :cond_54
    invoke-interface {p1, v3, v2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5b

    return-void

    :cond_5b
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_5e
    return-void
.end method

.method public final onConfigurationChanged(I)V
    .registers 4

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getFoldIcons()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_34
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    if-eqz v1, :cond_34

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_46
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolder;->onDarkModeChanged()V

    goto :goto_4a

    :cond_5a
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1e
    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFileManagerVisibilityChange(Ljava/lang/String;I)V
    .registers 6

    const-string/jumbo v0, "settingsKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OplusTaskbarView"

    const-string/jumbo v1, "onFileManagerVisibilityChange dispatch begin!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->getSubscribeIconRunningTaskChangedListener()Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string v2, "mActivityContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->onShow(Landroid/content/Context;)V

    :cond_26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p2, p1, p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerIconSwitchUtils;->openOrCloseFileManagerCallBack(Ljava/lang/Integer;Ljava/lang/String;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForceDarkAllowed(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-lez v0, :cond_19

    const-string p0, "TaskbarDragLayer"

    const-string/jumbo p1, "prevent multi point event"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_19
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLauncherAvailable(Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->deferTask:Lm7/l;

    if-eqz p0, :cond_16

    const-string v0, "Taskbar"

    const-string v1, "OplusTaskbarView"

    const-string/jumbo v2, "resume suspended folder created task"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public final onLauncherCreate(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getFoldIcons()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->setLauncher(Lcom/android/launcher/Launcher;)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public final onLauncherDestroy()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getFoldIcons()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;->setLauncher(Lcom/android/launcher/Launcher;)V

    goto :goto_8

    :cond_19
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 11

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->showNavButtons()Z

    move-result p1

    iget-boolean p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mShowNavBtnAtRight:Z

    sub-int/2addr p4, p2

    if-eqz p1, :cond_17

    if-eqz p3, :cond_14

    iget p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mNavButtonsPanelWidth:I

    sub-int/2addr p4, p2

    iget p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRightRegionMarginWithNavButtonsInRight:I

    sub-int/2addr p4, p2

    iget p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRegionNavButtonsSpaceWithNavRight:I

    goto :goto_19

    :cond_14
    iget p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRightRegionMarginWithNavButtonsInLeft:I

    goto :goto_19

    :cond_17
    iget p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRightRegionMarginHorWithNoNavButtons:I

    :goto_19
    sub-int/2addr p4, p2

    if-eqz p1, :cond_2a

    if-eqz p3, :cond_21

    iget p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginWithNavButtonsInRight:I

    goto :goto_2c

    :cond_21
    iget p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mNavButtonsPanelWidth:I

    iget p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginWithNavButtonsInLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRegionNavButtonsSpaceWithNavLeft:I

    add-int/2addr p1, p2

    goto :goto_2c

    :cond_2a
    iget p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginHorWithNoNavButtons:I

    :goto_2c
    sub-int p1, p4, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 p3, 0x0

    move v0, p2

    move p5, p3

    :goto_37
    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ge v3, v0, :cond_64

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_53

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_53
    if-nez v2, :cond_56

    goto :goto_61

    :cond_56
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_5f

    add-int/lit8 p5, p5, 0x1

    goto :goto_61

    :cond_5f
    add-int/lit8 p3, p3, 0x1

    :goto_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    :cond_64
    iget v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconTouchSize:I

    iget v4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconMarginHor:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    mul-int/2addr v4, p3

    iget p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerWidth:I

    iget v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerMarginHor:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int/2addr v0, p5

    add-int/2addr v0, v4

    if-gt v0, p1, :cond_7c

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    goto :goto_86

    :cond_7c
    const-string p1, "Taskbar"

    const-string p3, "OplusTaskbarView"

    const-string/jumbo p5, "space need is bigger than valid region"

    invoke-static {p1, p3, p5}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_86
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iget p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconMarginVer:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    iget p5, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconTouchSize:I

    add-int/2addr p3, p5

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    :goto_93
    if-ge v3, p2, :cond_db

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p3, :cond_ab

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_ac

    :cond_ab
    move-object p3, v2

    :goto_ac
    if-nez p3, :cond_af

    goto :goto_d8

    :cond_af
    invoke-static {p3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p3

    if-eqz p3, :cond_b8

    iget p5, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerMarginHor:I

    goto :goto_ba

    :cond_b8
    iget p5, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconMarginHor:I

    :goto_ba
    sub-int/2addr p4, p5

    if-eqz p3, :cond_c0

    iget v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerWidth:I

    goto :goto_c2

    :cond_c0
    iget v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconTouchSize:I

    :goto_c2
    if-eqz p3, :cond_c7

    iget v4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerHeight:I

    goto :goto_c9

    :cond_c7
    iget v4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconTouchSize:I

    :goto_c9
    if-eqz p3, :cond_ce

    iget p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mDividerMarginTop:I

    goto :goto_d0

    :cond_ce
    iget p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconMarginVer:I

    :goto_d0
    sub-int v0, p4, v0

    add-int/2addr v4, p3

    invoke-virtual {p1, v0, p3, p4, v4}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v0, p5

    move p4, v0

    :goto_d8
    add-int/lit8 p2, p2, -0x1

    goto :goto_93

    :cond_db
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iput p4, p0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public onOpenCloseComplete(Z)V
    .registers 4

    const-string/jumbo v0, "onOpenCloseComplete open: "

    const-string v1, "OplusTaskbarView"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p1, :cond_10

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateAllAppsBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/views/ActivityContext;)V

    :cond_10
    return-void
.end method

.method public onOpenCloseStart(Z)V
    .registers 4

    const-string/jumbo v0, "onOpenCloseStart open: "

    const-string v1, "OplusTaskbarView"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateAllAppsBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_43

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_40

    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v4, :cond_16

    goto :goto_40

    :cond_16
    instance-of v4, v3, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v4, :cond_32

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.folder.taskbar.TaskBarFolderIcon"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.folder.taskbar.TaskBarFolderIconBackground"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->updateBgColorFilter()V

    goto :goto_40

    :cond_32
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_40

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_43
    return-void
.end method

.method public removeAndRecycle(Landroid/view/View;)V
    .registers 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_38

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_38

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_23
    const/4 v2, -0x1

    if-ge v2, v1, :cond_38

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    const-string v3, "child"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->recycleView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    :cond_38
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeItems(IIZ)V
    .registers 13

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->endLastAnimator()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const-string v6, "OplusTaskbarView"

    const-string v7, "Taskbar"

    if-nez v1, :cond_14

    const-string/jumbo p0, "removeItems return, taskbar view is empty"

    invoke-static {v7, v6, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    const-string v8, ", count: "

    if-ltz p1, :cond_7e

    if-lez p2, :cond_7e

    add-int v0, p1, p2

    if-le v0, v1, :cond_1f

    goto :goto_7e

    :cond_1f
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->showNavButtons()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mShowNavBtnAtRight:Z

    if-eqz p3, :cond_30

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->layoutChildLeft(Lj7/h;ZZ)Landroid/util/SparseArray;

    move-result-object v4

    goto :goto_35

    :cond_30
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    :goto_35
    if-nez p3, :cond_48

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_47

    :goto_3b
    invoke-static {p0, v0}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->removeAndRecycle(Landroid/view/View;)V

    if-eq v0, p1, :cond_47

    add-int/lit8 v0, v0, -0x1

    goto :goto_3b

    :cond_47
    return-void

    :cond_48
    invoke-direct {p0, p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getChildrenAfterRemove(Landroid/view/ViewGroup;II)Lj7/h;

    move-result-object p3

    invoke-direct {p0, p3, v2, v3}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->layoutChildLeft(Lj7/h;ZZ)Landroid/util/SparseArray;

    move-result-object v5

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getRemoveAnimator(IIILandroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/animation/Animator;

    move-result-object p3

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarView$removeItems$1;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarView$removeItems$1;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "removeItems startIndex: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " start animator"

    invoke-static {p0, p1, v7, v6}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7e
    :goto_7e
    const-string/jumbo p0, "removeItems return, invalid params. startIndex: "

    const-string p3, ", oldChildCount: "

    invoke-static {p0, p1, v8, p2, p3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v1, v7, v6}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public replaceItems(ILjava/util/List;ZZ)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    const-string/jumbo v3, "newReplaceItems"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->endLastAnimator()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const-string/jumbo v4, "replaceItems startReplaceIndex: "

    const-string v5, ", newReplaceItems size: "

    invoke-static {v4, v7, v5}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", replaceAll: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", showAnim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Taskbar"

    const-string v8, "OplusTaskbarView"

    invoke-static {v4, v2, v5, v8}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    if-ltz v7, :cond_1cd

    if-gt v7, v3, :cond_1cd

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v7, v3, :cond_49

    invoke-virtual {v6, v0, v3, v2}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->addItems(Ljava/util/List;IZ)V

    return-void

    :cond_49
    if-nez v4, :cond_5d

    if-nez v1, :cond_54

    const-string/jumbo v0, "replaceItems return. replace nothing"

    invoke-static {v5, v8, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {v6, v7, v0, v2}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->removeItems(IIZ)V

    return-void

    :cond_5d
    sub-int v9, v3, v7

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v10, v4, :cond_67

    const/4 v11, 0x1

    goto :goto_68

    :cond_67
    const/4 v11, 0x0

    :goto_68
    if-eqz v1, :cond_6e

    if-ge v10, v9, :cond_6e

    const/4 v1, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v1, 0x0

    :goto_6f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez v11, :cond_7b

    if-eqz v1, :cond_79

    goto :goto_7b

    :cond_79
    const/4 v12, 0x0

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 v12, 0x1

    :goto_7c
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->showNavButtons()Z

    move-result v13

    iget-boolean v14, v6, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mShowNavBtnAtRight:Z

    if-eqz v2, :cond_8f

    if-eqz v12, :cond_8f

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object v12

    invoke-direct {v6, v12, v13, v14}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->layoutChildLeft(Lj7/h;ZZ)Landroid/util/SparseArray;

    move-result-object v12

    goto :goto_94

    :cond_8f
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    :goto_94
    add-int v15, v7, v10

    move/from16 v16, v10

    move v10, v7

    :goto_99
    if-ge v10, v15, :cond_128

    move/from16 p3, v15

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move/from16 v17, v1

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v12

    const-string/jumbo v12, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    sub-int v12, v10, v7

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v19

    if-nez v19, :cond_e7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    const-string/jumbo v3, "replaceItems wrong item, not container, this should not happen, please debug this. "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v8, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "childView"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->removeAndRecycle(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-direct {v6, v12, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->createItemViewContainer(Lcom/android/launcher3/model/data/ItemInfo;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_112

    :cond_e7
    move/from16 v19, v3

    const/4 v1, 0x1

    invoke-direct {v6, v12, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->createViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Z)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v7, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Landroid/widget/FrameLayout;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    if-ne v7, v1, :cond_120

    const/4 v1, 0x0

    if-nez v2, :cond_10f

    invoke-virtual {v15, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v7, "subView"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->recycleView(Landroid/view/View;)V

    invoke-virtual {v15, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_10f
    invoke-virtual {v15, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_112
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p1

    move/from16 v15, p3

    move/from16 v1, v17

    move-object/from16 v12, v18

    move/from16 v3, v19

    goto/16 :goto_99

    :cond_120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "container must have and only have one child!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_128
    move/from16 v17, v1

    move/from16 v19, v3

    move-object/from16 v18, v12

    move/from16 p3, v15

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_176

    move/from16 v1, v16

    :goto_139
    if-ge v1, v4, :cond_155

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    invoke-direct {v6, v3, v5}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->createItemViewContainer(Lcom/android/launcher3/model/data/ItemInfo;Z)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_14f

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_14f
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_139

    :cond_155
    if-nez v2, :cond_158

    return-void

    :cond_158
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object v0

    invoke-direct {v6, v0, v13, v14}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->layoutChildLeft(Lj7/h;ZZ)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    sub-int v3, v0, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v19

    move-object/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getAddAnimator(IIILandroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1ac

    :cond_176
    if-eqz v17, :cond_1ac

    sub-int v3, v19, p3

    if-nez v2, :cond_195

    add-int/lit8 v3, v19, -0x1

    move/from16 v2, p3

    if-gt v2, v3, :cond_194

    :goto_182
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->removeAndRecycle(Landroid/view/View;)V

    if-eq v3, v2, :cond_194

    add-int/lit8 v3, v3, -0x1

    goto :goto_182

    :cond_194
    return-void

    :cond_195
    move/from16 v2, p3

    invoke-direct {v6, v6, v2, v3}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getChildrenAfterRemove(Landroid/view/ViewGroup;II)Lj7/h;

    move-result-object v0

    invoke-direct {v6, v0, v13, v14}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->layoutChildLeft(Lj7/h;ZZ)Landroid/util/SparseArray;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getRemoveAnimator(IIILandroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1ac
    :goto_1ac
    move/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getReplaceAnimator(II)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/launcher3/taskbar/OplusTaskbarView$replaceItems$1;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView$replaceItems$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, v6, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1cd
    move/from16 v19, v3

    move v0, v7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid params. startReplaceIndex: "

    const-string v3, ", oldChildCount: "

    move/from16 v4, v19

    invoke-static {v2, v0, v3, v4}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setBgAlpha(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgColor:I

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v1, v1, 0xff

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p1

    iget v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgMaxAlpha:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->computeBgRect(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setClickAndLongClickListenersForIcon(Landroid/view/View;)V
    .registers 4

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_17

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    :cond_17
    if-eqz v0, :cond_31

    iget-object p1, v0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    if-eqz p1, :cond_31

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CheckLongPressHelper;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CheckLongPressHelper;->setForceTrigger(Z)V

    const/high16 p0, 0x43960000  # 300.0f

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CheckLongPressHelper;->setLongPressTimeoutFactor(F)V

    :cond_31
    return-void
.end method

.method public final setMBgMaxAlpha(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mBgMaxAlpha:I

    return-void
.end method

.method public final setNavButtonsShowAtRight(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mShowNavBtnAtRight:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mShowNavBtnAtRight:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_9
    return-void
.end method

.method public final setShowNavButtons(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIsShowNavButtons:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIsShowNavButtons:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_9
    return-void
.end method

.method public updateAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->updateHotseatItems([Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public final updateDividerBackground(Landroid/view/View;)V
    .registers 3

    const-string v0, "dividerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a023e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIsDarkMode:Z

    if-eqz p0, :cond_22

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0808e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_30

    :cond_22
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0808e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_30
    return-void
.end method

.method public final updateDividerBg(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIsDarkMode:Z

    if-eq p1, v0, :cond_2f

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIsDarkMode:Z

    const/4 p1, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    :goto_b
    if-ge p1, v0, :cond_2f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2c

    instance-of v3, v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v3, :cond_1c

    goto :goto_2c

    :cond_1c
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "child"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->updateDividerBackground(Landroid/view/View;)V

    :cond_2c
    :goto_2c
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_2f
    return-void
.end method

.method public updateHotseatItems([Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "hotseatItemInfos"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->endLastAnimator()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->finishIconAlignmentAnimation()V

    :cond_15
    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_19
    if-ge v4, v2, :cond_e1

    aget-object v7, v1, v4

    if-nez v7, :cond_22

    const/4 v7, 0x0

    goto/16 :goto_dd

    :cond_22
    invoke-direct {v0, v7}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getExpectedLayoutResId(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v8

    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->makeExpandItemContainerInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v11

    goto :goto_32

    :cond_31
    const/4 v11, 0x0

    :goto_32
    if-eqz v9, :cond_3c

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v11}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getExpectedLayoutResId(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v12

    goto :goto_3d

    :cond_3c
    move v12, v8

    :goto_3d
    instance-of v13, v7, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v14

    :goto_43
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v15

    const/4 v10, 0x1

    if-ge v5, v15, :cond_8d

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getSourceLayoutResId()I

    move-result v3

    if-ne v3, v12, :cond_89

    if-eqz v13, :cond_5d

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v7, :cond_5d

    goto :goto_89

    :cond_5d
    if-eqz v9, :cond_87

    instance-of v3, v15, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_80

    move-object v3, v15

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ne v3, v10, :cond_80

    move-object v3, v15

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-static {v3, v10}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    const/4 v3, 0x1

    goto :goto_81

    :cond_80
    const/4 v3, 0x0

    :goto_81
    if-nez v3, :cond_87

    invoke-virtual {v0, v15}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->removeAndRecycle(Landroid/view/View;)V

    goto :goto_43

    :cond_87
    move-object v10, v15

    goto :goto_8e

    :cond_89
    :goto_89
    invoke-virtual {v0, v15}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->removeAndRecycle(Landroid/view/View;)V

    goto :goto_43

    :cond_8d
    const/4 v10, 0x0

    :goto_8e
    if-nez v10, :cond_b3

    if-eqz v9, :cond_93

    goto :goto_94

    :cond_93
    move-object v11, v7

    :goto_94
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {v0, v11, v12, v3}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->createViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;IZ)Landroid/view/View;

    move-result-object v10

    if-eqz v9, :cond_af

    const/4 v3, 0x1

    invoke-direct {v0, v7, v8, v3}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->createViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;IZ)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v8, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v10

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_af
    invoke-virtual {v0, v10, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_b8

    :cond_b3
    if-eqz v14, :cond_b8

    invoke-virtual {v0, v10}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->updateDividerBackground(Landroid/view/View;)V

    :cond_b8
    :goto_b8
    instance-of v3, v10, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_d5

    instance-of v3, v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_d5

    move-object v3, v10

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/BubbleTextView;->shouldAnimateIconChange(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v8

    invoke-virtual {v3, v7, v8, v6}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    if-eqz v8, :cond_d6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v7, 0x0

    :cond_d6
    :goto_d6
    if-nez v14, :cond_db

    invoke-virtual {v0, v10}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    :cond_db
    add-int/lit8 v5, v5, 0x1

    :goto_dd
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_19

    :cond_e1
    :goto_e1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_f4

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "getChildAt(nextViewIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->removeAndRecycle(Landroid/view/View;)V

    goto :goto_e1

    :cond_f4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarView;->calculateThemeIconsBackground()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mThemeIconsBackground:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->setThemedIconsBackgroundColor(I)V

    return-void
.end method

.method public final updateTaskbarSpacing()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070c42

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginHorWithNoNavButtons:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070c49

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRightRegionMarginHorWithNoNavButtons:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070c43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginWithNavButtonsInLeft:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070c44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconLeftRegionMarginWithNavButtonsInRight:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070c4a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRightRegionMarginWithNavButtonsInLeft:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070c4b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRightRegionMarginWithNavButtonsInRight:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070c48

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mNavButtonsPanelWidth:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070c3c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRegionNavButtonsSpaceWithNavLeft:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070c3d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;->mIconRegionNavButtonsSpaceWithNavRight:I

    return-void
.end method
