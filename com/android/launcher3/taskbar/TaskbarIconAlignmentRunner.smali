.class public final Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;,
        Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskbarIconAlignmentRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskbarIconAlignmentRunner.kt\ncom/android/launcher3/taskbar/TaskbarIconAlignmentRunner\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,647:1\n1855#2,2:648\n1864#2,3:651\n1855#2,2:654\n1855#2,2:656\n82#3:650\n*S KotlinDebug\n*F\n+ 1 TaskbarIconAlignmentRunner.kt\ncom/android/launcher3/taskbar/TaskbarIconAlignmentRunner\n*L\n135#1:648,2\n201#1:651,3\n360#1:654,2\n384#1:656,2\n192#1:650\n*E\n"
    }
.end annotation


# static fields
.field private static final CLOSE_APP_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;

.field private static final DEBUG:Z = false

.field private static final DOCKER_ICON_THRESHOLD:F = 0.86f

.field private static final INVALID_CELL_X:I = -0x2

.field private static final LAUNCH_APP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Ljava/lang/String; = "TaskbarIconAlignmentRunner"

.field private static final TASKBAR_ICON_THRESHOLD:F = 0.7f

.field public static final TO_DOCK:F = 1.0f

.field public static final TO_TASK_BAR:F


# instance fields
.field private mChildCount:I

.field private mDockBgPosition:Landroid/graphics/RectF;

.field private mDockClipChildrenState:Z

.field private final mHotSeatPadding:I

.field private mHotseatDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHotseatIndex:I

.field private mIconReminder:F

.field private mIconScale:F

.field private mIsAnimating:Z

.field private mItemAnimParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mTaskbarDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mTaskbarIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field private mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

.field private mTaskbarViewBgPosition:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->Companion:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd  # 0.1f

    const v2, 0x3e19999a  # 0.15f

    const v3, 0x3db851ec  # 0.09f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->LAUNCH_APP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const-string/jumbo v1, "{\n            Interpolators.LINEAR\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_34

    :cond_2b
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd  # 0.2f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    :goto_34
    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->CLOSE_APP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;)V
    .registers 5

    const-string/jumbo v0, "mTaskbarContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mLauncher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mTaskbarIconAlphaForHome"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mItemAnimParams:Ljava/util/List;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIconScale:F

    sget-object p1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0806a6

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_50

    :cond_43
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0806a7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_50
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotseatDividerDrawable:Landroid/graphics/drawable/Drawable;

    sget-object p1, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1, p3}, Lcom/android/common/util/ThemeUtils$Companion;->isDarkMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6a

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0808e4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_77

    :cond_6a
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0808e3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_77
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarDividerDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarViewBgPosition:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mDockBgPosition:Landroid/graphics/RectF;

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotSeatPadding:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotseatIndex:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mDockClipChildrenState:Z

    return-void
.end method

.method public static final synthetic access$getCLOSE_APP_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->CLOSE_APP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic access$getLAUNCH_APP_INTERPOLATOR$cp()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->LAUNCH_APP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method private final calculateItemPosition(ILandroid/view/View;Landroid/graphics/RectF;Z)V
    .registers 11

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_19

    move v0, v3

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    instance-of v4, p2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v4, :cond_43

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLocationOnScreen()[I

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v1}, Lcom/android/launcher3/OplusBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    if-eqz p4, :cond_38

    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIconReminder:F

    neg-float v1, p2

    neg-float p2, p2

    invoke-virtual {p3, v1, p2}, Landroid/graphics/RectF;->inset(FF)V

    :cond_38
    aget p2, v0, v2

    int-to-float p2, p2

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p3, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_120

    :cond_43
    const/4 v4, 0x0

    if-eqz v0, :cond_92

    if-eqz p4, :cond_63

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v4, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_83

    :cond_63
    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.FolderIcon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.folder.OplusPreviewBackground"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :goto_83
    invoke-virtual {p2}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p2

    aget v0, p2, v2

    int-to-float v0, v0

    aget p2, p2, v3

    int-to-float p2, p2

    invoke-virtual {p3, v0, p2}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_120

    :cond_92
    if-eqz v1, :cond_ca

    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->getDividerView(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_9b

    return-void

    :cond_9b
    invoke-virtual {p2}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3, v4, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v1, v4

    invoke-virtual {p2, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p2, v1}, Landroid/view/View;->setPivotY(F)V

    aget p2, v0, v2

    int-to-float p2, p2

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p3, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_120

    :cond_ca
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_106

    if-eqz p4, :cond_106

    invoke-direct {p0, p2, v3}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->getDividerView(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_db

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    goto :goto_dc

    :cond_db
    const/4 p2, 0x0

    :goto_dc
    if-eqz p2, :cond_120

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setScaleY(F)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIconReminder:F

    neg-float v1, v0

    neg-float v0, v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getLocationOnScreen()[I

    move-result-object p2

    aget v0, p2, v2

    int-to-float v0, v0

    aget p2, p2, v3

    int-to-float p2, p2

    invoke-virtual {p3, v0, p2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_120

    :cond_106
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v4, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p2

    aget v0, p2, v2

    int-to-float v0, v0

    aget p2, p2, v3

    int-to-float p2, p2

    invoke-virtual {p3, v0, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_120
    :goto_120
    if-eqz p4, :cond_15a

    if-nez p1, :cond_146

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarViewBgPosition:Landroid/graphics/RectF;

    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotSeatPadding:I

    mul-int/lit8 v0, p4, 0x2

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIconScale:F

    div-float/2addr v0, p0

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    iget p2, p3, Landroid/graphics/RectF;->top:F

    mul-int/lit8 v0, p4, 0x2

    int-to-float v0, v0

    div-float/2addr v0, p0

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    mul-int/lit8 p4, p4, 0x2

    int-to-float p3, p4

    div-float/2addr p3, p0

    add-float/2addr p3, p2

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_15a

    :cond_146
    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mChildCount:I

    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_15a

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarViewBgPosition:Landroid/graphics/RectF;

    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotSeatPadding:I

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIconScale:F

    div-float/2addr p3, p0

    add-float/2addr p3, p2

    iput p3, p1, Landroid/graphics/RectF;->right:F

    :cond_15a
    :goto_15a
    return-void
.end method

.method private final calculateItemPosition(ILandroid/view/View;Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;)V
    .registers 8

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_32

    :cond_11
    const-string v1, "Measure the child index = "

    const-string v2, "TaskbarIconAlignmentRunner"

    invoke-static {v1, p1, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layoutChild(Landroid/view/View;)V

    :cond_32
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->calculateItemPosition(ILandroid/view/View;Landroid/graphics/RectF;Z)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, p2, v1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->calculateItemPosition(ILandroid/view/View;Landroid/graphics/RectF;Z)V

    invoke-virtual {p4}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->getDockItemPosition()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p4}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->getTaskbarIconPosition()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public static final childCountMisMatch(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/taskbar/TaskbarView;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->Companion:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;->childCountMisMatch(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/taskbar/TaskbarView;)Z

    move-result p0

    return p0
.end method

.method private final getDividerView(Landroid/view/View;Z)Landroid/view/View;
    .registers 4

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_13

    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_b

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_c

    :cond_b
    move-object p1, v0

    :goto_c
    if-eqz p1, :cond_31

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_31

    :cond_13
    instance-of p2, p1, Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-eqz p2, :cond_1a

    check-cast p1, Lcom/android/launcher3/hotseat/HotseatDividerView;

    goto :goto_1b

    :cond_1a
    move-object p1, v0

    :goto_1b
    if-eqz p1, :cond_22

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_23

    :cond_22
    move-object p1, v0

    :goto_23
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2a

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_2b

    :cond_2a
    move-object p1, v0

    :goto_2b
    if-eqz p1, :cond_31

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_31
    :goto_31
    return-object v0
.end method

.method public static final getDuration(ZZ)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->Companion:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;->getDuration(ZZ)I

    move-result p0

    return p0
.end method

.method public static final getInterpolator(Z)Landroid/view/animation/Interpolator;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->Companion:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;->getInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method private final prepareAnim(Ljava/util/function/Consumer;Ljava/lang/Float;Ljava/lang/Float;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    const-string v1, "TaskbarIconAlignmentRunner"

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    const-string p0, "Prepare return as stash anim is running"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    const-string/jumbo v3, "mLauncher.hotseat.shortcutsAndWidgets"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object v0

    invoke-static {v0}, Lj7/p;->s(Lj7/h;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconViews()[Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "prepareAnim, dockIconList size = "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", taskbarIconList size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_238

    const-string/jumbo v4, "taskbarIconList"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v3

    const/4 v5, 0x1

    if-nez v4, :cond_61

    move v4, v5

    goto :goto_62

    :cond_61
    move v4, v2

    :goto_62
    if-eqz v4, :cond_66

    goto/16 :goto_238

    :cond_66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    array-length v6, v3

    if-eq v4, v6, :cond_73

    const-string p0, "Size not match"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_73
    const-wide/16 v6, 0x8

    const-string/jumbo v1, "prepareAnim"

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mDockClipChildrenState:Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    if-eqz p1, :cond_99

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_99
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setScaleY(F)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/OplusHotseat;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mDockBgPosition:Landroid/graphics/RectF;

    aget v7, v4, v2

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->left:F

    aget v4, v4, v5

    int-to-float v4, v4

    iput v4, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v7, v4

    iput v7, v6, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mDockBgPosition:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v6, v1

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarAnimBgView;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v4}, Lcom/android/launcher3/taskbar/TaskbarAnimBgView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getHotseatBgDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/taskbar/TaskbarAnimBgView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;

    invoke-direct {v4}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;-><init>()V

    invoke-virtual {v4, v1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setTaskbarIconView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mDockBgPosition:Landroid/graphics/RectF;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setDockItemPosition(Landroid/graphics/RectF;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setBgView(Z)V

    invoke-virtual {v4, p2}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setStartValue(Ljava/lang/Float;)V

    invoke-virtual {v4, p3}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setEndValue(Ljava/lang/Float;)V

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mItemAnimParams:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->addViewToDragLayer(Lcom/android/launcher3/Launcher;)V

    new-instance v6, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$prepareAnim$$inlined$doOnPreDraw$1;

    invoke-direct {v6, v1, v4}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$prepareAnim$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;)V

    invoke-static {v1, v6}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object v1

    const-string v4, "View.doOnPreDraw(\n    cr…dd(this) { action(this) }"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIconReminder:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarAppIconActualSize(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIconScale:F

    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIconReminder:F

    div-float/2addr v4, v1

    iput v4, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIconReminder:F

    array-length v1, v3

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mChildCount:I

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_163
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_219

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v1, 0x1

    if-ltz v1, :cond_214

    check-cast v4, Landroid/view/View;

    new-instance v7, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;

    invoke-direct {v7}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;-><init>()V

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v9, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v7, v9}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setDockCellX(I)V

    invoke-virtual {v7, p2}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setStartValue(Ljava/lang/Float;)V

    invoke-virtual {v7, p3}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setEndValue(Ljava/lang/Float;)V

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    array-length v10, v3

    sub-int/2addr v10, v5

    if-gt v9, v10, :cond_199

    if-gez v9, :cond_198

    goto :goto_199

    :cond_198
    move v1, v9

    :cond_199
    :goto_199
    invoke-static {v8}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v9

    const-string/jumbo v10, "taskbarIconList[taskbarIndex]"

    if-eqz v9, :cond_1fa

    invoke-virtual {v7, v5}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setDivider(Z)V

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotseatDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    invoke-virtual {v7, v9}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setDividerScaleXForTaskbar(F)V

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotseatDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    invoke-virtual {v7, v9}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setDividerScaleXForDock(F)V

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotseatDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    invoke-virtual {v7, v9}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setDividerScaleYForTaskbar(F)V

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotseatDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    invoke-virtual {v7, v9}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setDividerScaleYForDock(F)V

    aget-object v9, v3, v1

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v9, v5}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->getDividerView(Landroid/view/View;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setTaskbarIconView(Landroid/view/View;)V

    goto :goto_1ff

    :cond_1fa
    aget-object v9, v3, v1

    invoke-virtual {v7, v9}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setTaskbarIconView(Landroid/view/View;)V

    :goto_1ff
    invoke-virtual {v7, v4}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setDockIconView(Landroid/view/View;)V

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget-object v1, v3, v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v8, v4, v1, v7}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->calculateItemPosition(ILandroid/view/View;Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mItemAnimParams:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto/16 :goto_163

    :cond_214
    invoke-static {}, Li4/o;->k()V

    const/4 p0, 0x0

    throw p0

    :cond_219
    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mItemAnimParams:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mTaskbarViewBgPosition:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setTaskbarIconPosition(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const-wide/16 p0, 0x8

    invoke-static {p0, p1}, Landroid/os/Trace;->traceEnd(J)V

    return v5

    :cond_238
    :goto_238
    return v2
.end method


# virtual methods
.method public final getCurrentRunnerEndValue()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mItemAnimParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mItemAnimParams:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->getEndValue()Ljava/lang/Float;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public final getItemAnimParams()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mItemAnimParams:Ljava/util/List;

    return-object p0
.end method

.method public final isAnimating()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIsAnimating:Z

    return p0
.end method

.method public final onIconAlignmentAnimationEnd(FLjava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIsAnimating:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIsAnimating:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Icon alignment animation end, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskbarIconAlignmentRunner"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotseatIndex:I

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mDockClipChildrenState:Z

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    if-eqz p2, :cond_35

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_35
    const/high16 p2, 0x3f800000  # 1.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    const-string p1, "End runnable run, reset view state, toDock = "

    invoke-static {p1, v0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mItemAnimParams:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->resetViewState(Lcom/android/launcher3/Launcher;)V

    goto :goto_47

    :cond_59
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mItemAnimParams:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->checkPendingUpdateRunnable()V

    return-void
.end method

.method public final onIconAlignmentAnimationStart(Ljava/util/function/Consumer;Ljava/lang/Float;Ljava/lang/Float;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->prepareAnim(Ljava/util/function/Consumer;Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIsAnimating:Z

    const-string p1, "Icon alignment animation start, mIsAnimating = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIsAnimating:Z

    const-string p2, "TaskbarIconAlignmentRunner"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final onUpdate(F)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mIsAnimating:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mItemAnimParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotseatIndex:I

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    const-string/jumbo v4, "mLauncher.hotseat"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->onAnimUpdate(FILcom/android/launcher3/OplusHotseat;)V

    goto :goto_a

    :cond_28
    return-void
.end method

.method public final resetClosingAppIndex()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotseatIndex:I

    return-void
.end method

.method public final setHotseatIndex(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mHotseatIndex:I

    return-void
.end method

.method public final updateEndValue(Ljava/lang/Float;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->mItemAnimParams:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$ItemAnimParam;->setEndValue(Ljava/lang/Float;)V

    goto :goto_6

    :cond_16
    return-void
.end method
