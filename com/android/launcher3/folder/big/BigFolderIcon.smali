.class public final Lcom/android/launcher3/folder/big/BigFolderIcon;
.super Lcom/android/launcher3/folder/OplusFolderIcon;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/IAreaWidget;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher/AppLimitedStartUpManager$AppLimitedStateCallback;
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/BigFolderIcon$OnScrollPageEndCallback;,
        Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/folder/OplusFolderIcon;",
        "Lcom/android/launcher3/card/IAreaWidget;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;",
        "Lcom/android/launcher/AppLimitedStartUpManager$AppLimitedStateCallback;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBigFolderIcon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BigFolderIcon.kt\ncom/android/launcher3/folder/big/BigFolderIcon\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,1267:1\n1855#2,2:1268\n1855#2,2:1318\n1#3:1270\n59#4:1271\n56#4:1272\n42#5:1273\n94#5,14:1274\n42#5:1288\n94#5,14:1289\n31#5:1303\n94#5,14:1304\n42#5:1320\n94#5,14:1321\n31#5:1335\n94#5,14:1336\n*S KotlinDebug\n*F\n+ 1 BigFolderIcon.kt\ncom/android/launcher3/folder/big/BigFolderIcon\n*L\n422#1:1268,2\n1187#1:1318,2\n954#1:1271\n956#1:1272\n1172#1:1273\n1172#1:1274,14\n1177#1:1288\n1177#1:1289,14\n1180#1:1303\n1180#1:1304,14\n1226#1:1320\n1226#1:1321,14\n1230#1:1335\n1230#1:1336,14\n*E\n"
    }
.end annotation


# static fields
.field public static final AREA_AT_STACKED_ICON:I = 0x8

.field public static final AREA_NOT_AT_FOLDER_ICON:I = -0x1

.field public static final AREA_NOT_IN_FOLDER_BG:I = -0x2

.field private static final BIG_FOLDER_OPEN_BY_NAME:Ljava/lang/String; = "0"

.field public static final Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

.field public static final DEBUG_INDICATOR:Z = false

.field public static final DEBUG_LAYOUT:Z = false

.field public static final DOT_ANIMATION_DURATION:J = 0x190L

.field private static final FLOAT_0:F = 0.0f

.field private static final FLOAT_1:F = 1.0f

.field public static final GUIDE_TAG:Ljava/lang/String; = "BigFolderGuide"

.field public static final INDICATOR_TAG:Ljava/lang/String; = "FolderIndicator"

.field public static final INVALID_PAGE:I = -0x1

.field private static final SCROLL_END_ANIMATION_DELAY:J

.field public static final SCROLL_HIDE_CONTENT_DURATION:J = 0x12cL

.field private static final SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

.field public static final SCROLL_SHOW_CONTENT_DELAY:J = 0x43L

.field private static final SCROLL_SHOW_CONTENT_DURATION:J

.field public static final SCROLL_TO_ORIGINAL_PAGE_DELAY:J = 0x1b1L

.field private static final TAG:Ljava/lang/String; = "BigFolderIcon"


# instance fields
.field private alarm:Lcom/android/launcher3/Alarm;

.field private bgRect:Landroid/graphics/Rect;

.field private convertAnimBuilder:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

.field private dotAnim:Landroid/animation/ValueAnimator;

.field private iconWidth:I

.field private indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

.field private indicatorShowing:Z

.field private isIconFalling:Z

.field private isScrolling:Z

.field private leftPage:I

.field private longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

.field private mBgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

.field private mDropAnim:Landroid/animation/Animator;

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mInDragging:Z

.field private mIsLimitAppChanged:Z

.field private nextPage:I

.field private onScrollPageEndCallback:Lcom/android/launcher3/folder/big/BigFolderIcon$OnScrollPageEndCallback;

.field private originalPage:I

.field private rightPage:I

.field private scrollDistance:F

.field private scrollEndActionRunnable:Ljava/lang/Runnable;

.field public touchController:Lcom/android/launcher3/folder/big/BigFolderTouchController;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isRmSearchEntrySupport()Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/16 v0, 0x3b6

    goto :goto_13

    :cond_11
    const-wide/16 v0, 0x1f4

    :goto_13
    sput-wide v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_END_ANIMATION_DELAY:J

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isRmSearchEntrySupport()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0xfa

    goto :goto_20

    :cond_1e
    const-wide/16 v0, 0x15e

    :goto_20
    sput-wide v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_SHOW_CONTENT_DURATION:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/android/launcher3/folder/big/a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/folder/big/a;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;I)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    new-instance p1, Landroidx/core/widget/b;

    invoke-direct {p1, p0}, Landroidx/core/widget/b;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    return-object p0
.end method

.method public static final synthetic access$getMGlobalLayoutListener$p(Lcom/android/launcher3/folder/big/BigFolderIcon;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method public static final synthetic access$getMPreviewVerifier$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/folder/FolderGridOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    return-object p0
.end method

.method public static final synthetic access$getSCROLL_INDICATOR_SHOW_PATH$cp()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method public static final synthetic access$getSCROLL_SHOW_CONTENT_DURATION$cp()J
    .registers 2

    sget-wide v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_SHOW_CONTENT_DURATION:J

    return-wide v0
.end method

.method public static final synthetic access$initPageIndicator(Lcom/android/launcher3/folder/big/BigFolderIcon;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->initPageIndicator(I)V

    return-void
.end method

.method public static final synthetic access$setAlarm$p(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    return-void
.end method

.method public static final synthetic access$setFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/Folder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    return-void
.end method

.method public static final synthetic access$setMDotRenderer$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/icons/OplusDotRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    return-void
.end method

.method public static final synthetic access$setMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/OplusBubbleTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    return-void
.end method

.method public static final synthetic access$setMGlobalLayoutListener$p(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public static final synthetic access$setMInfo$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-void
.end method

.method public static final synthetic access$setMLauncher$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static final synthetic access$setMPreviewVerifier$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/FolderGridOrganizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    return-void
.end method

.method public static final synthetic access$updatePreviewItems(Lcom/android/launcher3/folder/big/BigFolderIcon;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    return-void
.end method

.method private final cancelExeScrollEndAction()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1f
    return-void
.end method

.method private final checkNeedPlayDotAnim()Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewParamsOnPage(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result v2

    if-ne v2, v3, :cond_2c

    move v2, v3

    goto :goto_2d

    :cond_2c
    move v2, v0

    :goto_2d
    if-nez v2, :cond_3e

    iget-object v1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result v1

    if-ne v1, v3, :cond_3b

    move v1, v3

    goto :goto_3c

    :cond_3b
    move v1, v0

    :goto_3c
    if-eqz v1, :cond_13

    :cond_3e
    return v3

    :cond_3f
    return v0
.end method

.method public static final fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/big/BigFolderIcon;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p0

    return-object p0
.end method

.method private final initPageIndicator(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setDotsCount(I)V

    :goto_8
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz p0, :cond_10

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setCurrentPosition(I)V

    :cond_10
    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->playItemDotAnimation$lambda$17(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final logForever()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getCurrentPreviewParams()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const-string/jumbo v4, "title = "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_2d

    iget-object v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_2d

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_2d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    :cond_3d
    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    goto :goto_4b

    :cond_4a
    move-object v1, v3

    :goto_4b
    const-string v2, ", BF-toString [ mPreviewPage = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",count = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p0, :cond_71

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_71

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", sizeSpacingConfig {"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_7d

    const-string v1, ""

    :cond_7d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}, preViewItem = {"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->playSingleItemDotAnimation$lambda$22(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final mapRange(FFF)F
    .registers 4

    invoke-static {p3, p2, p1, p2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable$lambda$2(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onDrop$lambda$13(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method private static final onAppsLimitedStateChange$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/content/ComponentName;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0
.end method

.method private static final onDrop$lambda$12(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/Folder;->showItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->showPreviewItems(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method private static final onDrop$lambda$13(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/Folder;->showItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->showPreviewItems(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method private static final onDrop$lambda$15(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 8

    const-string v0, "$d"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nameInfos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->folderNameProvider:Lcom/android/launcher3/folder/FolderNameProvider;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/List;Lcom/android/launcher3/folder/FolderNameInfos;)V

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    rem-int/2addr p3, v0

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {p1, p3, p4, p2, p0}, Lcom/android/launcher3/folder/FolderIcon;->showFinalView(ILcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V

    return-void
.end method

.method private final onItemSizeChanged()V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-nez v1, :cond_68

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    if-lez v1, :cond_68

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_33

    move v0, v3

    goto :goto_34

    :cond_33
    move v0, v5

    :goto_34
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v6}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setMPreviewPage(I)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/4 v7, 0x2

    invoke-static {p0, v6, v5, v7, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance$default(Lcom/android/launcher3/folder/big/BigFolderIcon;FZILjava/lang/Object;)V

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    :cond_67
    move-object v0, v1

    :cond_68
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recreateCurrentPage()V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    const-string/jumbo v5, "previewItems"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-nez v0, :cond_7f

    goto :goto_8f

    :cond_7f
    sget-object v1, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const-string v6, "mInfo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setDotsCount(I)V

    :goto_8f
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz v0, :cond_a3

    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->getDotsCount()I

    move-result v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_a3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_b3

    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    :cond_b3
    iput v4, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    iput v4, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onDrop$lambda$15(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method private static final playItemDotAnimation$lambda$17(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000  # 255.0f

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setMDotAlpha(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setMDotScale(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private static final playSingleItemDotAnimation$lambda$22(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string v0, "$param"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000  # 255.0f

    invoke-direct {p1, p2, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mSingeDotAlpha:F

    iput p2, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mSingeDotScale:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onDrop$lambda$12(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic r(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/content/ComponentName;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onAppsLimitedStateChange$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private static final scrollEndActionRunnable$lambda$2(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    sget-object v1, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2d
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->folderNameSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_34

    return-void

    :cond_34
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_55

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_55

    sget-wide v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_SHOW_CONTENT_DURATION:J

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x43

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_55
    return-void
.end method

.method private final snapDesPageForDrag()V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v2

    const/4 v3, 0x1

    int-to-float v4, v3

    add-float/2addr v0, v4

    int-to-float v4, v2

    cmpg-float v5, v0, v4

    if-gtz v5, :cond_1f

    return-void

    :cond_1f
    iget-object v5, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz v5, :cond_4c

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    rem-int/2addr v6, v2

    if-nez v6, :cond_4c

    invoke-virtual {v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->getDotsCount()I

    move-result v2

    sget-object v6, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v7

    const-string v8, "info"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result v6

    add-int/2addr v6, v3

    if-ge v2, v6, :cond_4c

    invoke-virtual {v5}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->getDotsCount()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v5, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setDotsCount(I)V

    :cond_4c
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v7, "info.contents"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v6}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getCurrentPreviewAndStackedItems(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_ALL_PREVIEW_AND_STACKED()I

    move-result v1

    if-ge v5, v1, :cond_72

    goto :goto_7c

    :cond_72
    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    add-int/lit8 v2, v0, -0x1

    :goto_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "snapDesPageForDrag: desPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderIcon"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0, v3}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(IZ)V

    return-void
.end method

.method private final updatePageParamsForLimitChanged()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "updatePageParamsForLimitChanged mPreviewPage:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".mPreviewPage, mIsLimitAppChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mIsLimitAppChanged:Z

    const-string v2, "BigFolderIcon"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_20
    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mIsLimitAppChanged:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mIsLimitAppChanged:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updateLeftPageParams(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updateRightPageParams(I)V

    :cond_45
    return-void
.end method

.method public static synthetic updateScrollDistance$default(Lcom/android/launcher3/folder/big/BigFolderIcon;FZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance(FZ)V

    return-void
.end method


# virtual methods
.method public final cancelItemDotAnimtion()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz v1, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_15
    return-void
.end method

.method public final checkPageValid(I)I
    .registers 2

    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result p0

    if-lt p1, p0, :cond_9

    goto :goto_a

    :cond_9
    return p1

    :cond_a
    :goto_a
    const/4 p0, -0x1

    return p0
.end method

.method public final createItemIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/folder/big/BigFolderItemIcon;
    .registers 12

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMItemRectArray()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_23

    move v2, v4

    goto :goto_24

    :cond_23
    move v2, v3

    :goto_24
    const/4 v5, 0x0

    if-eqz v2, :cond_3e

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v6, 0x0

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_3e

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recomputePreviewDrawingParams()V

    goto :goto_4a

    :cond_3e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_46

    move v1, v4

    goto :goto_47

    :cond_46
    move v1, v3

    :goto_47
    if-eqz v1, :cond_4a

    return-object v5

    :cond_4a
    :goto_4a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_4e
    if-ge v3, v1, :cond_103

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderPreviewItemManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMItemRectArray()Landroid/util/SparseArray;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v6, "mContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v5, p1, v4}, Lcom/android/launcher3/folder/PreviewItemManager;->getNewIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getIconRectBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_ec

    instance-of v1, v5, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v1, :cond_ec

    check-cast v5, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v5}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_ec

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/theme/LauncherIconConfig;->getUXScalar(Landroid/content/res/Resources;)F

    move-result v1

    sget-object v6, Lcom/android/common/util/CacheUtils;->INSTANCE:Lcom/android/common/util/CacheUtils;

    invoke-virtual {v6}, Lcom/android/common/util/CacheUtils;->getCloneAppDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getIconRectBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v8, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v1, v7, v8}, Lcom/android/common/util/IconUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    :cond_ec
    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setParentFolderIcon(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setIndex(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setItemInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_ff
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4e

    :cond_103
    return-object v5
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isIconFalling:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mBgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->convertAnimBuilder:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    if-eqz v3, :cond_23

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating()Z

    move-result v3

    if-nez v3, :cond_20

    move v3, v1

    goto :goto_21

    :cond_20
    move v3, v2

    :goto_21
    if-eqz v3, :cond_29

    :cond_23
    if-nez v0, :cond_29

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getIconVisible()Z

    move-result v3

    if-nez v3, :cond_37

    const-string p0, "BigFolderIcon"

    const-string p1, "dispatchDraw: !iconVisible"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_37
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->superDispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mBgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

    goto :goto_49

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->convertAnimBuilder:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->getBgParams()Lcom/android/launcher3/folder/big/ConvertBgParams;

    move-result-object v0

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v3, p1, v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->drawBackground(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/big/ConvertBgParams;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updatePreviewItemDrawingParams()V

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getTranX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getTranY()F

    move-result v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_73

    goto :goto_74

    :cond_73
    move v1, v2

    :goto_74
    if-nez v1, :cond_90

    :cond_76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getTranX()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getTranY()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_97

    :cond_90
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;Ljava/lang/Boolean;)V

    :goto_97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_25

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    if-eqz p0, :cond_23

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_23
    const/4 p0, 0x1

    return p0

    :cond_25
    invoke-super {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    if-eqz p0, :cond_32

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_32
    return v0
.end method

.method public drawDot(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic exposureForWorkspace(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->exposureForWorkspace(Z)V

    return-void
.end method

.method public exposureForWorkspace(Z)V
    .registers 9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->exposureForWorkspace(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-nez v0, :cond_c

    goto :goto_1c

    :cond_c
    sget-object v1, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const-string v3, "mInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setDotsCount(I)V

    :goto_1c
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->getDotsCount()I

    move-result v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_30

    :cond_2f
    move-object v0, v2

    :goto_30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    if-gtz v0, :cond_7e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_43

    return-void

    :cond_43
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_53

    :cond_52
    move-object p1, v2

    :goto_53
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-eqz p1, :cond_63

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    if-nez p1, :cond_60

    goto :goto_63

    :cond_60
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_63
    :goto_63
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz p1, :cond_6f

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_6f
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-eqz p1, :cond_7d

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-nez p0, :cond_7a

    goto :goto_7d

    :cond_7a
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_7d
    :goto_7d
    return-void

    :cond_7e
    const-string v0, "BigFolderIcon"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->logInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "exposureForWorkspace exposure = "

    const-string v6, ", folderName.alpha = "

    invoke-static {v5, p1, v6}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v6

    if-eqz v6, :cond_a5

    invoke-virtual {v6}, Landroid/widget/TextView;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_a5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b6

    return-void

    :cond_b6
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->cancelExeScrollEndAction()V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_c6
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz v0, :cond_d3

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_d3

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_d3
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-eqz v0, :cond_da

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_da
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    const/4 v2, 0x0

    if-nez v0, :cond_e0

    goto :goto_e3

    :cond_e0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_e3
    iput-boolean v2, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-nez v0, :cond_ea

    goto :goto_ed

    :cond_ea
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :goto_ed
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    if-nez v0, :cond_f4

    goto :goto_f7

    :cond_f4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_f7
    if-nez p1, :cond_fa

    return-void

    :cond_fa
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p1

    if-eqz p1, :cond_123

    iget-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mInDragging:Z

    if-nez p1, :cond_123

    iput-boolean v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-nez p1, :cond_10f

    goto :goto_112

    :cond_10f
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_112
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    if-nez p1, :cond_119

    goto :goto_11c

    :cond_119
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_11c
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(IZ)V

    :cond_123
    return-void
.end method

.method public getAreaType()Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->BIG_FOLDER:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    return-object p0
.end method

.method public final getBgRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getBgRectInDragLayer(Lcom/android/launcher3/dragndrop/DragLayer;)Landroid/graphics/Rect;
    .registers 6

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMSpacingConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 p0, 0x0

    return-object p0

    :cond_1c
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getConvertAnimBuilder()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->convertAnimBuilder:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    return-object p0
.end method

.method public final getDotAnim()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getFolderViewBounds(Landroid/graphics/Rect;)V
    .registers 3

    const-string/jumbo v0, "outBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getIconPageNum()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    int-to-float p0, p0

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public final getIconWidth()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result p0

    return p0
.end method

.method public final getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    return-object p0
.end method

.method public final getIndicatorShowing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    return p0
.end method

.method public final getItemWithPosition([F)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 9

    const-string/jumbo v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderPreviewItemManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMItemRectArray()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_3b

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    aget v5, p1, v2

    const/4 v6, 0x1

    aget v6, p1, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-object p0

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLeftPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    return p0
.end method

.method public final getLocalCenterAndIndexForBig(Lcom/android/launcher3/model/data/WorkspaceItemInfo;III[I)Lh4/j;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "III[I)",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "workspaceItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "center"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    sub-int/2addr p3, p2

    const/4 p2, 0x1

    add-int/2addr p3, p2

    sub-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDesPage(I)I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocalCenterAndIndexForBig: destPreviewPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderIcon"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v2, "info.contents"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getCurrentPreviewAndStackedItems(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p3, 0x3

    if-gez p1, :cond_63

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLocalCenterForIndexStacked(II[I)F

    move-result p0

    new-instance p1, Lh4/j;

    sget-object p2, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_ALL_PREVIEW_AND_STACKED()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ac

    :cond_63
    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_ALL_PREVIEW_AND_STACKED()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_73

    if-gt v1, p1, :cond_73

    move v3, p2

    :cond_73
    if-eqz v3, :cond_91

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p2

    rem-int p2, p1, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p2, p4, p5}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLocalCenterForIndexStacked(II[I)F

    move-result p0

    new-instance p2, Lh4/j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ab

    :cond_91
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-super {p0, p1, p4, p5}, Lcom/android/launcher3/folder/OplusFolderIcon;->getLocalCenterForIndex(II[I)F

    move-result p0

    new-instance p2, Lh4/j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_ab
    move-object p1, p2

    :goto_ac
    return-object p1
.end method

.method public getLocalCenterForIndex(II[I)F
    .registers 6

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v1

    if-lt p1, v1, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getLocalCenterForIndex(II[I)F

    move-result p0

    goto :goto_16

    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getLocalCenterForIndex(II[I)F

    move-result p0

    :goto_16
    return p0
.end method

.method public final getLocalCenterForIndexStacked(II[I)F
    .registers 12

    const-string v0, "center"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    sget-object v1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    new-instance p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->computeStackedPreviewItemDrawingParams(ILcom/android/launcher3/folder/PreviewItemDrawingParams;)Z

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget v1, v1, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isBigFolderIcon()Z

    move-result p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    sub-float/2addr v2, p1

    iput v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    sub-float/2addr v2, p1

    iput v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    :cond_56
    sget-object p1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    if-eqz p1, :cond_6d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    goto :goto_6e

    :cond_6d
    const/4 p1, 0x0

    :goto_6e
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    sub-int/2addr v2, p1

    goto :goto_78

    :cond_77
    move v2, v1

    :goto_78
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v3, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    int-to-float v2, v2

    iget v4, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float v5, v2, v4

    iget v6, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    const/high16 v7, 0x40000000  # 2.0f

    invoke-static {v5, v6, v7, v3}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result v3

    iget p1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    mul-float/2addr v2, v4

    mul-float/2addr v2, v6

    div-float/2addr v2, v7

    add-float/2addr v2, p1

    iget p1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    mul-float/2addr p1, v4

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMStackedBaselineSubIconSize()F

    move-result v4

    div-float/2addr v4, v7

    add-float/2addr v4, p1

    iget p1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v5, v5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr p1, v5

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMStackedBaselineSubIconSize()F

    move-result v0

    div-float/2addr v0, v7

    add-float/2addr v0, p1

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p3, v1

    const/4 p1, 0x1

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p3, p1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget p0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    iget p1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr p0, p1

    return p0
.end method

.method public final getLongClickEffectHandler()Lcom/android/launcher3/card/LongClickEffectHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    return-object p0
.end method

.method public final getMBgParams()Lcom/android/launcher3/folder/big/ConvertBgParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mBgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

    return-object p0
.end method

.method public final getMDropAnim()Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mDropAnim:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getNextPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    return p0
.end method

.method public final getOriginalPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    return p0
.end method

.method public bridge synthetic getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderPreviewItemManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    return-object p0
.end method

.method public final getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderGridOrganizer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    return-object p0
.end method

.method public final getRightPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    return p0
.end method

.method public final getScrollDesPage(I)I
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    if-eqz v0, :cond_25

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2d

    :cond_25
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p0

    :goto_2d
    return p0
.end method

.method public final getScrollDistance()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollDistance:F

    return p0
.end method

.method public final getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->touchController:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string/jumbo p0, "touchController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getViewType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .registers 3

    const-string p0, "grid"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "out"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final inIconsRectArea(FF)I
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMIconsRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    const-string v1, "BigFolderIcon"

    if-nez v0, :cond_1d

    const-string p0, "inIconsRectArea: AREA_NOT_IN_FOLDER_BG"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    :cond_1d
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMItemRectArray()Landroid/util/SparseArray;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inIconsRectArea: rectArray = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, -0x1

    if-nez v2, :cond_51

    return v4

    :cond_51
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewItemManager;->getCurrentPageParams()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_5e
    if-ge v2, p0, :cond_7b

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_78

    const-string p0, "inIconsRectArea x = "

    const-string v0, ", index = "

    invoke-static {p0, p1, v3, p2, v0}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v2

    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_7b
    return v4
.end method

.method public final inSwipeArea(FF)Z
    .registers 7

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMIconsRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object p0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingX()F

    move-result v3

    add-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingY()F

    move-result v3

    add-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingX()F

    move-result v3

    add-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingY()F

    move-result p0

    add-float/2addr p0, v2

    sub-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inSwipeArea: rect = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", x = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BigFolderIcon"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public init()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    new-instance v0, Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/LongClickEffectHandler;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/AppLimitedStartUpManager;->addCallback(Lcom/android/launcher/AppLimitedStartUpManager$AppLimitedStateCallback;)V

    invoke-super {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->init()V

    return-void
.end method

.method public final initTouch()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderTouchController;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setTouchController(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V

    return-void
.end method

.method public isBigFolderIcon()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isEventInValidTouchArea(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMIconsRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public final isIconFalling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isIconFalling:Z

    return p0
.end method

.method public final isScrolling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    return p0
.end method

.method public isSmallIcon()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final logInfo()Ljava/lang/String;
    .registers 5

    const-string v0, "BF-"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    goto :goto_f

    :cond_e
    move-object v1, v2

    :goto_f
    if-nez v1, :cond_13

    const-string v1, ""

    :cond_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v3, :cond_26

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_27

    :cond_26
    move-object v3, v2

    :goto_27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_38

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_39

    :cond_38
    move-object v1, v2

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p0, :cond_61

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onItemSizeChanged()V

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->disableLongClickIconFlag()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->setBigFolderAddItemFlag()V

    return-void
.end method

.method public onAppsLimitedStateChange(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    move v1, v0

    :goto_d
    if-nez v1, :cond_56

    const-string v1, "BigFolderIcon"

    const-string/jumbo v2, "onAppsLimitedStateChange"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/folder/big/BigFolderIcon$onAppsLimitedStateChange$appList$1;->INSTANCE:Lcom/android/launcher3/folder/big/BigFolderIcon$onAppsLimitedStateChange$appList$1;

    new-instance v2, Lcom/android/launcher3/dragndrop/f;

    invoke-direct {v2, v1}, Lcom/android/launcher3/dragndrop/f;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewItemManager;->getCurrentPageParams()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mIsLimitAppChanged:Z

    :cond_56
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 7

    invoke-super {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_24

    :cond_23
    move-object v0, v2

    :goto_24
    iget-object v3, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4e

    move v0, v4

    goto :goto_4f

    :cond_4e
    move v0, v5

    :goto_4f
    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_5d
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v0

    if-eqz v0, :cond_9b

    iput-boolean v5, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/OplusBubbleTextView;->setAlpha(F)V

    goto :goto_9b

    :cond_6b
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_82

    move v5, v4

    :cond_82
    if-eqz v5, :cond_9b

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_90
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/OplusBubbleTextView;->setAlpha(F)V

    :cond_9b
    :goto_9b
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, v4}, Lcom/android/launcher3/IBubbleTextViewExt;->setTitleShadowEnable(Z)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setTextAlpha(F)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    move-result v0

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    if-eqz v1, :cond_22

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_2d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/AppLimitedStartUpManager;->removeCallBack(Lcom/android/launcher/AppLimitedStartUpManager$AppLimitedStateCallback;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_48
    return-void
.end method

.method public onDragEnd()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTextVisible(Z)V

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v0, :cond_d

    goto :goto_11

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setAlpha(F)V

    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mInDragging:Z

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_3c

    :cond_11
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mInDragging:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapDesPageForDrag()V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mInDragging:Z

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapDesPageForDrag()V

    return-void
.end method

.method public onDragExit()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getDragTargetLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getDropItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapToOriginalPage(Z)V

    :cond_2c
    invoke-super {p0}, Lcom/android/launcher3/folder/FolderIcon;->onDragExit()V

    iput-boolean v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mInDragging:Z

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    iget-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    :cond_e
    const-string/jumbo p1, "onDragStart originalPage = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isscrolling = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BigFolderIcon"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrop(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZ)V
    .registers 43

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    const-string v0, "item"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "d"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v11, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v11, :cond_197

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_197

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher3/Launcher;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v10

    const-string v0, "launcher.dragLayer"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v12, 0x3f800000  # 1.0f

    if-nez p3, :cond_6c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    const-string v2, "launcher.workspace"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v3

    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {v10, v6, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v4

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    sget-object v2, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v2}, Lcom/android/common/config/ScreenInfo$Companion;->getWindowBounds()Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    move-object v14, v0

    move v13, v4

    goto :goto_70

    :cond_6c
    move-object/from16 v14, p3

    move/from16 v13, p4

    :goto_70
    sget-object v35, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    add-int/lit8 v1, v9, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v15, 0x0

    invoke-virtual {v0, v7, v9, v15}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    const/4 v0, 0x2

    new-array v5, v0, [I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p5

    move-object/from16 v16, v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLocalCenterAndIndexForBig(Lcom/android/launcher3/model/data/WorkspaceItemInfo;III[I)Lh4/j;

    move-result-object v0

    iget-object v1, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    aget v2, v16, v15

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v16, v15

    const/4 v2, 0x1

    aget v3, v16, v2

    int-to-float v3, v3

    mul-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v16, v2

    aget v3, v16, v15

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aget v2, v16, v2

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-virtual {v14, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDrop: Index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", scale = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BigFolderIcon"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v25, 0x3f800000  # 1.0f

    mul-float/2addr v1, v13

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_104

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const-string v2, "mActivity.deviceProfile"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    mul-float/2addr v2, v1

    move/from16 v29, v2

    goto :goto_106

    :cond_104
    move/from16 v29, v1

    :goto_106
    new-instance v31, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct/range {v31 .. v31}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    instance-of v0, v11, Lcom/android/launcher/batchdrag/BatchDragView;

    if-eqz v0, :cond_13e

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v10, v11, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v22, v11

    check-cast v22, Lcom/android/launcher/batchdrag/BatchDragView;

    const/high16 v26, 0x3f800000  # 1.0f

    const/high16 v27, 0x3f800000  # 1.0f

    const/16 v30, 0x230

    new-instance v1, Lcom/android/launcher/widget/b;

    invoke-direct {v1, v6, v7}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v23, v0

    move-object/from16 v24, v14

    move/from16 v28, v29

    move-object/from16 v32, v1

    invoke-virtual/range {v22 .. v34}, Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;IZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher3/folder/big/BigFolderIcon;->mDropAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_165

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_165

    :cond_13e
    const/16 v16, 0x230

    new-instance v0, Lcom/android/launcher/widget/a;

    invoke-direct {v0, v6, v7}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v13, 0x3f800000  # 1.0f

    move-object v12, v14

    move/from16 v14, v29

    move/from16 v15, v29

    move-object/from16 v17, v31

    move-object/from16 v18, v0

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_165

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDragLayer;->getDragAnim()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_165

    iput-object v0, v6, Lcom/android/launcher3/folder/big/BigFolderIcon;->mDropAnim:Landroid/animation/Animator;

    :cond_165
    :goto_165
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/folder/Folder;->hideItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    new-instance v3, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_18b

    sget-object v10, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v11, Lcom/android/common/util/h;

    move-object v0, v11

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v4, p5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/common/util/h;-><init>(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_19a

    :cond_18b
    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    rem-int v0, v9, v0

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v6, v0, v7, v3, v1}, Lcom/android/launcher3/folder/FolderIcon;->showFinalView(ILcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V

    goto :goto_19a

    :cond_197
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :goto_19a
    const-string/jumbo v0, "to FolderIcon{title="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDrop"

    invoke-static {v1, v7, v0}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method public onItemsChanged(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recreateCurrentPage()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->onKeyDown(ILandroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onRecommendContentChanged()V
    .registers 3

    const-string v0, "BigFolderIcon"

    const-string/jumbo v1, "onRecommendContentChanged"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onItemSizeChanged()V

    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->onRemove(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onItemSizeChanged()V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    return-void
.end method

.method public final onScrollPageEnd()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->cancelExeScrollEndAction()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_END_ANIMATION_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageEndCallback:Lcom/android/launcher3/folder/big/BigFolderIcon$OnScrollPageEndCallback;

    if-eqz p0, :cond_1a

    invoke-interface {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon$OnScrollPageEndCallback;->onScrollPageEnd()V

    :cond_1a
    return-void
.end method

.method public final onScrollPageStart()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updatePageParamsForLimitChanged()V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mDropAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->isBatchDropping()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isBatchDropping"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->endBatchDropping()V

    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_2c
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->cancelExeScrollEndAction()V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz v0, :cond_55

    iget-boolean v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    if-nez v1, :cond_55

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-nez v0, :cond_45

    goto :goto_49

    :cond_45
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_49
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-nez v0, :cond_4e

    goto :goto_52

    :cond_4e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_52
    :goto_52
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollStartAnimation()V

    :cond_55
    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "info"

    if-nez v1, :cond_2e

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_2e
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->getDotsCount()I

    move-result v0

    sget-object v3, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result v3

    if-ne v0, v3, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    move v0, v1

    :goto_49
    if-nez v0, :cond_4e

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapToOriginalPage(Z)V

    :cond_4e
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz v0, :cond_6a

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    sget-object p1, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setDotsCount(I)V

    :cond_6a
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public final playItemDotAnimation()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->checkNeedPlayDotAnim()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_54

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string/jumbo v1, "ofFloat(0f, 1f)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/guide/f;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/f;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/folder/big/BigFolderIcon$playItemDotAnimation$$inlined$doOnStart$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/big/BigFolderIcon$playItemDotAnimation$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/folder/big/BigFolderIcon$playItemDotAnimation$$inlined$doOnStart$2;

    invoke-direct {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$playItemDotAnimation$$inlined$doOnStart$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/folder/big/BigFolderIcon$playItemDotAnimation$$inlined$doOnEnd$1;

    invoke-direct {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$playItemDotAnimation$$inlined$doOnEnd$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_54
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final playSingleItemDotAnimation(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V
    .registers 5

    const-string/jumbo v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_11

    :cond_10
    move-object v0, v2

    :goto_11
    if-nez v0, :cond_14

    return-void

    :cond_14
    instance-of v1, p1, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    if-nez v1, :cond_1e

    iget-object v1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object v2

    :cond_1e
    if-eqz v2, :cond_63

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->getNumberCount()I

    move-result v0

    if-gtz v0, :cond_2e

    goto :goto_63

    :cond_2e
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_64

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroidx/core/view/h;

    invoke-direct {v1, p1, p0}, Landroidx/core/view/h;-><init>(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo p0, "singeDotAnim"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/folder/big/BigFolderIcon$playSingleItemDotAnimation$$inlined$doOnStart$1;

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon$playSingleItemDotAnimation$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/android/launcher3/folder/big/BigFolderIcon$playSingleItemDotAnimation$$inlined$doOnEnd$1;

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon$playSingleItemDotAnimation$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_63
    :goto_63
    return-void

    :array_64
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final scrollStartAnimation()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_24

    sget-wide v1, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_SHOW_CONTENT_DURATION:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    sget-object v1, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_24
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->folderNameSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_2b

    return-void

    :cond_2b
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_4b

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4b
    return-void
.end method

.method public final setBgRect(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    return-void
.end method

.method public final setConvertAnimBuilder(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->convertAnimBuilder:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    return-void
.end method

.method public final setDotAnim(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setIconFalling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isIconFalling:Z

    return-void
.end method

.method public final setIconWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->iconWidth:I

    return-void
.end method

.method public final setIndicator(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    return-void
.end method

.method public final setIndicatorShowing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    return-void
.end method

.method public final setLeftPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    return-void
.end method

.method public final setLongClickEffectHandler(Lcom/android/launcher3/card/LongClickEffectHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    return-void
.end method

.method public final setMBgParams(Lcom/android/launcher3/folder/big/ConvertBgParams;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mBgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

    return-void
.end method

.method public final setMDropAnim(Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mDropAnim:Landroid/animation/Animator;

    return-void
.end method

.method public final setNextPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    return-void
.end method

.method public final setOnScrollPageEndCallback(Lcom/android/launcher3/folder/big/BigFolderIcon$OnScrollPageEndCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageEndCallback:Lcom/android/launcher3/folder/big/BigFolderIcon$OnScrollPageEndCallback;

    return-void
.end method

.method public final setOriginalPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    return-void
.end method

.method public final setRightPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    return-void
.end method

.method public final setScrollDistance(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollDistance:F

    return-void
.end method

.method public final setScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    return-void
.end method

.method public final setTouchController(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->touchController:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    return-void
.end method

.method public bridge synthetic showPreviewItems(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->showPreviewItems(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public showPreviewItems(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->showPreviewItems(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public final snapToClosingPage(I)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    div-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(IZ)V

    return-void
.end method

.method public final snapToOriginalPage(Z)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    const-string v2, "info"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    if-ne v0, v1, :cond_2a

    if-nez p1, :cond_33

    :cond_2a
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    invoke-virtual {p1, p0, v2}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(IZ)V

    :cond_33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->logForever()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateCurPage(I)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setMPreviewPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recreateCurrentPage()V

    :try_start_16
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eq v0, p1, :cond_69

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setCurrentPosition(I)V

    :cond_1f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3e

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    if-eqz v3, :cond_3e

    invoke-interface {v3}, Lcom/android/launcher3/folder/IFolderExt;->isFolderRealOpened()Z

    move-result v3

    if-ne v3, v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move v4, v5

    :goto_3f
    invoke-virtual {v1, v2, v0, p1, v4}, Lcom/android/statistics/LauncherStatistics;->statScrollBigFolder(Lcom/android/launcher3/model/data/FolderInfo;IIZ)V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez p1, :cond_69

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result p1

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_5b
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_69
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_6b
    .catchall {:try_start_16 .. :try_end_6b} :catchall_6c

    goto :goto_71

    :catchall_6c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_71
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7f

    const-string p1, "BigFolderIcon"

    const-string/jumbo v0, "updateCurPage : IndexOutOfBoundsException "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7f
    return-void
.end method

.method public final updateNextPageStatus(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    if-eq p1, v0, :cond_6

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    :cond_6
    return-void
.end method

.method public final updatePreviewItemDrawingParams()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderPreviewItemManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updatePreviewItemDrawingParams()V

    return-void
.end method

.method public final updatePreviewItemPara()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    return-void
.end method

.method public updatePreviewItems(Ljava/util/function/Predicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final updateScrollDistance(FZ)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->checkPageValid(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->checkPageValid(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2d

    move v4, v1

    move v1, v0

    move v0, v4

    :cond_2d
    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollDistance:F

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    const/4 v3, -0x1

    if-eq v0, v2, :cond_3f

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    if-eq v0, v3, :cond_3f

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updateRightPageParams(I)V

    :cond_3f
    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    if-eq v1, v0, :cond_4e

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    if-eq v1, v3, :cond_4e

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updateLeftPageParams(I)V

    :cond_4e
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollDistance:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v1

    mul-int/2addr v1, p1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    if-gez v1, :cond_76

    if-lez p1, :cond_76

    add-int/lit8 p1, p1, -0x1

    int-to-float v1, v2

    add-float/2addr v0, v1

    :cond_76
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    if-eqz p0, :cond_8c

    if-ltz p1, :cond_8c

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->getDotsCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_8c

    if-eqz p2, :cond_8c

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->a(IF)V

    :cond_8c
    return-void
.end method
