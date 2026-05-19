.class public Lcom/android/launcher3/taskbar/TaskbarView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;
.implements Lcom/android/launcher3/Insettable;


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskbarView"

.field private static final TASKBAR_BACKGROUND_LUMINANCE:F = 0.3f


# instance fields
.field public final mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field public final mIconLayoutBounds:Landroid/graphics/Rect;

.field public mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mIconTouchSize:I

.field private final mItemMarginLeftRight:I

.field private final mItemPadding:I

.field private mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTempOutLocation:[I

.field public mThemeIconsBackground:I

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/TaskbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x2

    new-array p3, p2, [I

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTouchEnabled:Z

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f070fe7

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    const v1, 0x7f070fe6

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int v1, v0, p3

    div-int/2addr v1, p2

    sub-int/2addr p4, v1

    iput p4, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    sub-int p3, v0, p3

    div-int/2addr p3, p2

    iput p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemPadding:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->calculateThemeIconsBackground()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mThemeIconsBackground:I

    sget-object p2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_IN_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p2

    if-eqz p2, :cond_65

    new-instance p2, Lcom/android/launcher3/views/AllAppsButton;

    invoke-direct {p2, p1}, Lcom/android/launcher3/views/AllAppsButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    invoke-virtual {p0, p3, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_65
    return-void
.end method

.method private getColorWithGivenLuminance(IF)I
    .registers 3

    const/4 p0, 0x3

    new-array p0, p0, [F

    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 p1, 0x2

    aput p2, p0, p1

    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public areIconsVisible()Z
    .registers 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public calculateThemeIconsBackground()I
    .registers 3

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    const v1, 0x3e99999a  # 0.3f

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->getColorWithGivenLuminance(IF)I

    move-result p0

    return p0

    :cond_19
    return v0
.end method

.method public clearFolderLeaveBehind(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTouchEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public drawFolderLeaveBehindForIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public getAllAppsButtonView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    return-object p0
.end method

.method public varargs getFirstMatch([Ljava/util/function/Predicate;)Landroid/view/View;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2e

    aget-object v3, p1, v2

    move v4, v1

    :goto_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2b

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v6, :cond_1b

    goto :goto_28

    :cond_1b
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v3, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    return-object v5

    :cond_28
    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2e
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    return-object p0
.end method

.method public getIconLayoutBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getIconViews()[Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_12

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    return-object v1
.end method

.method public inflate(I)Landroid/view/View;
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getIconOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconClickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getIconOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableTaskbarLongClickToStash()Z

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getBackgroundOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1f
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    if-eqz p1, :cond_2c

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getAllAppsButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2c
    return-void
.end method

.method public isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_2a

    move v2, v3

    :cond_2a
    return v2
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v2, v1}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_18

    return-void

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawLeaveBehind(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_27
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getHotseatEndOffset(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v2

    sub-int p2, p4, p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    sub-int p2, p4, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_28

    sub-int v5, p2, v0

    if-le v1, v5, :cond_2d

    goto :goto_2c

    :cond_28
    sub-int v5, p4, v1

    if-le p2, v5, :cond_2d

    :goto_2c
    move v3, v4

    :cond_2d
    if-eqz v3, :cond_39

    if-eqz v2, :cond_35

    sub-int p4, p2, v0

    sub-int/2addr v1, p4

    goto :goto_38

    :cond_35
    sub-int/2addr p4, v1

    sub-int v1, p4, p2

    :goto_38
    add-int/2addr p2, v1

    :cond_39
    iget-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iput p2, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    iput p5, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p5, p3

    iput p5, p4, Landroid/graphics/Rect;->bottom:I

    :goto_48
    if-lez p1, :cond_67

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    iget p4, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    sub-int/2addr p2, p4

    iget p4, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    sub-int p4, p2, p4

    iget-object p5, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v0, p5, Landroid/graphics/Rect;->top:I

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, p4, v0, p2, p5}, Landroid/view/View;->layout(IIII)V

    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    sub-int p2, p4, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_48

    :cond_67
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iput p2, p0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTouchEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_21

    return v1

    :cond_21
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    :try_start_2e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_39

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return p0

    :catchall_39
    move-exception p0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    throw p0

    :cond_3e
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 1

    return-void
.end method

.method public removeAndRecycle(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v1, :cond_1f

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getSourceLayoutResId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    :cond_1f
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setClickAndLongClickListenersForIcon(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    instance-of v1, p1, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    if-eqz v1, :cond_1b

    if-nez v0, :cond_1b

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->setOnCheckedChangeListener(Lcom/android/launcher3/OplusBubbleTextViewSubscribe$OnCheckedChangeListener;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public setThemedIconsBackgroundColor(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconViews()[Landroid/view/View;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2a

    aget-object v2, p0, v1

    instance-of v3, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;

    if-eqz v3, :cond_27

    check-cast v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/icons/ThemedIconDrawable;

    if-eqz v3, :cond_27

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/icons/ThemedIconDrawable;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/icons/ThemedIconDrawable;->changeBackgroundColor(I)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2a
    return-void
.end method

.method public setTouchesEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTouchEnabled:Z

    return-void
.end method

.method public updateHotseatItems([Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_7
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_f
    array-length v5, p1

    if-ge v2, v5, :cond_9d

    aget-object v5, p1, v2

    if-nez v5, :cond_18

    goto/16 :goto_99

    :cond_18
    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->isPredictedItem()Z

    move-result v6

    if-eqz v6, :cond_23

    const v6, 0x7f0d025b

    :goto_21
    move v7, v1

    goto :goto_30

    :cond_23
    instance-of v6, v5, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v6, :cond_2c

    const v6, 0x7f0d0129

    const/4 v7, 0x1

    goto :goto_30

    :cond_2c
    const v6, 0x7f0d0251

    goto :goto_21

    :goto_30
    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_4d

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getSourceLayoutResId()I

    move-result v9

    if-ne v9, v6, :cond_49

    if-eqz v7, :cond_4d

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v5, :cond_4d

    :cond_49
    invoke-virtual {p0, v8}, Lcom/android/launcher3/taskbar/TaskbarView;->removeAndRecycle(Landroid/view/View;)V

    goto :goto_30

    :cond_4d
    if-nez v8, :cond_7c

    if-eqz v7, :cond_68

    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v0, :cond_60

    const-string v5, "Taskbar"

    const-string v6, "TaskbarView"

    const-string v7, "launcher is null,update taskbar folder failed"

    invoke-static {v5, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    :cond_60
    invoke-static {v6, v0, p0, v7}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTextVisible(Z)V

    goto :goto_6c

    :cond_68
    invoke-virtual {p0, v6}, Lcom/android/launcher3/taskbar/TaskbarView;->inflate(I)Landroid/view/View;

    move-result-object v6

    :goto_6c
    move-object v8, v6

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v7, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemPadding:I

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v8, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_7c
    instance-of v6, v8, Lcom/android/launcher3/BubbleTextView;

    if-eqz v6, :cond_94

    instance-of v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v6, :cond_94

    move-object v6, v8

    check-cast v6, Lcom/android/launcher3/BubbleTextView;

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v6, v5}, Lcom/android/launcher3/BubbleTextView;->shouldAnimateIconChange(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v7

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V

    if-eqz v7, :cond_94

    add-int/lit8 v4, v4, 0x1

    :cond_94
    invoke-virtual {p0, v8}, Lcom/android/launcher3/taskbar/TaskbarView;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    :goto_99
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    :cond_9d
    :goto_9d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-ge v3, p1, :cond_ab

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->removeAndRecycle(Landroid/view/View;)V

    goto :goto_9d

    :cond_ab
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    if-eqz p1, :cond_c3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_ba

    goto :goto_be

    :cond_ba
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    :goto_be
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_c3
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->calculateThemeIconsBackground()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mThemeIconsBackground:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->setThemedIconsBackgroundColor(I)V

    return-void
.end method
