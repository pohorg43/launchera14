.class public Lcom/android/launcher3/BubbleTextView;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;
.implements Lcom/android/launcher3/views/IconLabelDotView;
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Lcom/android/launcher3/Reorderable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;,
        Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;
    }
.end annotation


# static fields
.field public static final DISPLAY_ALL_APPS:I = 0x1

.field public static final DISPLAY_FOLDER:I = 0x2

.field private static final DISPLAY_SEARCH_RESULT:I = 0x6

.field private static final DISPLAY_SEARCH_RESULT_SMALL:I = 0x7

.field public static final DISPLAY_TASKBAR:I = 0x5

.field public static final DISPLAY_WORKSPACE:I = 0x0

.field public static final DOT_SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/BubbleTextView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SEARCH_LOOP_COUNT:I = 0x14

.field private static final MIN_LETTER_SPACING:F = -0.05f

.field private static final STATE_PRESSED:[I

.field private static final TAG:Ljava/lang/String; = "BubbleTextView"

.field public static final TEXT_ALPHA_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/BubbleTextView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final UP_TIME_ICON:Ljava/lang/String; = "up_time_icon"


# instance fields
.field public final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mCenterVertically:Z

.field public mDisableRelayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field public final mDisplay:I

.field public mDotInfo:Lcom/android/launcher3/dot/DotInfo;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field public mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        deepExport = true
    .end annotation
.end field

.field private mDotRenderNode:Landroid/graphics/RenderNode;

.field public mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

.field public mDotScaleAnim:Landroid/animation/Animator;

.field private mEnableIconUpdateAnimation:Z

.field private mEnableMultiNode:Z

.field public mForceHideDot:Z

.field private mGradientRenderNode:Landroid/graphics/RenderNode;

.field private mHideBadge:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

.field private mIconRenderNode:Landroid/graphics/RenderNode;

.field public mIconSize:I

.field private mIgnorePressedStateChange:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field public mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private mIsCallOnClick:Z

.field public mIsIconVisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mIsPressed:Z

.field private final mIsRtl:Z

.field public mIsRtlTitle:Z

.field public mLayoutHorizontal:Z

.field public final mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private mNewUpdateDotRenderNode:Landroid/graphics/RenderNode;

.field public mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

.field private mProcessOnClickListener:Landroid/view/View$OnClickListener;

.field private mRecentPressedTime:J

.field private mScaleForReorderBounce:F

.field private mStayPressed:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field public mTextAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mTextColorStateList:Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mTextRenderNode:Landroid/graphics/RenderNode;

.field private final mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

.field private final mTranslationForReorderBounce:Landroid/graphics/PointF;

.field private final mTranslationForReorderPreview:Landroid/graphics/PointF;

.field private mTranslationXForTaskbarAlignmentAnimation:F

.field private mWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    new-instance v0, Lcom/android/launcher3/BubbleTextView$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "dotScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BubbleTextView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher3/BubbleTextView$2;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "textAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BubbleTextView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    iput v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationXForTaskbarAlignmentAnimation:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mScaleForReorderBounce:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mIsPressed:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/launcher3/BubbleTextView;->mRecentPressedTime:J

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mHideBadge:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mIsCallOnClick:Z

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mEnableMultiNode:Z

    const-class v4, Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-static {v4}, Lcom/oplus/ext/core/ExtLoader;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/IBubbleTextViewExt;

    iput-object v4, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/views/ActivityContext;

    iput-object v4, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    sget-object v5, Lcom/android/launcher3/R$styleable;->BubbleTextView:[I

    invoke-virtual {p1, p2, v5, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    if-ne p3, v3, :cond_6c

    move p3, v3

    goto :goto_6d

    :cond_6c
    move p3, v2

    :goto_6d
    iput-boolean p3, p0, Lcom/android/launcher3/BubbleTextView;->mIsRtl:Z

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    iget-object v6, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v6}, Lcom/android/launcher3/IBubbleTextViewExt;->handleDefaultIconSize()I

    move-result v6

    if-eqz v6, :cond_83

    goto/16 :goto_f0

    :cond_83
    if-nez v5, :cond_98

    iget p2, p3, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p2, p2

    invoke-virtual {p0, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget p2, p3, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget v6, p3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget-boolean p2, p3, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->setCenterVertically(Z)V

    goto :goto_f0

    :cond_98
    if-ne v5, v3, :cond_aa

    iget p2, p3, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-virtual {p0, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget p2, p3, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget v6, p3, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    goto :goto_f0

    :cond_aa
    const/4 v1, 0x2

    if-ne v5, v1, :cond_cb

    iget p2, p3, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float p2, p2

    invoke-virtual {p0, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070834

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/BubbleTextView;->getInitCompoundDrawablePaddingOfFolder(Lcom/android/launcher3/DeviceProfile;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget v6, p3, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    goto :goto_f0

    :cond_cb
    const/4 v1, 0x6

    if-ne v5, v1, :cond_da

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070df1

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_f0

    :cond_da
    const/4 v1, 0x7

    if-ne v5, v1, :cond_e9

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070df2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_f0

    :cond_e9
    if-ne v5, p2, :cond_ee

    iget v6, p3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    goto :goto_f0

    :cond_ee
    iget v6, p3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    :goto_f0
    iget-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p2}, Lcom/android/launcher3/IBubbleTextViewExt;->handleOrientation()V

    iget-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p2, v5}, Lcom/android/launcher3/IBubbleTextViewExt;->setIconDisplay(I)V

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher3/BubbleTextView;->getInitIconSize(Landroid/content/res/TypedArray;I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    const/4 p2, 0x3

    if-eq v5, p2, :cond_113

    const-string/jumbo p2, "sans-serif-medium"

    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_113
    const/4 p2, 0x4

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_11d

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    :cond_11d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    new-instance p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {p1}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v4}, Lcom/android/launcher3/IBubbleTextViewExt;->setLauncher(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-boolean p1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->textStyleBold:Z

    if-eqz p1, :cond_153

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_153
    return-void
.end method

.method public static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/BubbleTextView;->lambda$prepareDrawDragView$0()V

    return-void
.end method

.method private findBestSpacingValue(Landroid/text/TextPaint;Ljava/lang/String;FF)F
    .registers 8

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    cmpl-float p0, p0, p3

    if-lez p0, :cond_c

    return p4

    :cond_c
    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_e
    const/16 v1, 0x14

    if-ge v0, v1, :cond_28

    add-float v1, p0, p4

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpg-float v2, v2, p3

    if-gez v2, :cond_24

    move p4, v1

    goto :goto_25

    :cond_24
    move p0, v1

    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_28
    return p4
.end method

.method private getEllipsisWidth(Landroid/widget/TextView;)F
    .registers 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v1, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private getModifiedColor()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableMultiNode:Z

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    return p0

    :cond_7
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p0

    return p0
.end method

.method private getModifiedShadowColor()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const/high16 v0, 0x4d000000  # 1.34217728E8f

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p0

    return p0
.end method

.method private getTextViewSelection(Landroid/widget/TextView;I)Landroid/graphics/Rect;
    .registers 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p0

    move p2, v0

    move v0, v1

    goto :goto_29

    :cond_26
    const/4 p1, 0x0

    move p0, v0

    move p2, p0

    :goto_29
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int p0, p0

    float-to-int p2, p2

    invoke-direct {v1, v0, p1, p0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private isInterceptActionUpEvent(Landroid/view/View;)Z
    .registers 7

    instance-of v0, p1, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    const-string v1, "BubbleTextView"

    const/4 v2, 0x0

    if-nez v0, :cond_a6

    instance-of p1, p1, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;

    if-eqz p1, :cond_d

    goto/16 :goto_a6

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getLauncherActivityContext(Landroid/view/View;)Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    if-eqz v0, :cond_1b

    const-string p0, "isInterceptActionUpEvent, launcher is SecondaryDisplayLauncher, return false"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1b
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    if-nez p1, :cond_27

    const-string p0, "isInterceptActionUpEvent, launcher is null, return false"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_27
    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isAllAppsViewInSelectState()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz p1, :cond_47

    const-string p0, "isInterceptActionUpEvent, view is OplusLauncherAllAppsContainerView, return false"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_47
    const/4 p1, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_8e

    if-eqz v3, :cond_4e

    goto :goto_8e

    :cond_4e
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_8d

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isNonInstalled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "info.isDisabled()= %s, info.isNonInstalled= %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result p1

    if-nez p1, :cond_8c

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isNonInstalled()Z

    move-result p0

    if-nez p0, :cond_8c

    move v2, v4

    :cond_8c
    return v2

    :cond_8d
    return v4

    :cond_8e
    :goto_8e
    new-array p0, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v4

    const-string p1, "isToggleBarState = %s, isPagePreviewState=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_a6
    :goto_a6
    const-string p0, "isInterceptActionUpEvent, view is OplusBubbleTextViewSubscribe or SuperPowerSaveBubbleTextView, return false"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private isShouldShowGreenDot(Z)Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const-class v1, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;

    invoke-interface {v0, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->getTitlePrefixDrawableBounds(Ljava/lang/Class;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez v1, :cond_49

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    :cond_34
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getInstance(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isHandingIconFallenState()Z

    move-result v0

    if-eqz v0, :cond_49

    if-nez p1, :cond_49

    :cond_46
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_49
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->isDownloadingState()Z

    move-result p1

    if-nez p1, :cond_6b

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->isStillInDownloading()Z

    move-result p1

    if-nez p1, :cond_6b

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isInstallingState()Z

    move-result p0

    if-eqz p0, :cond_68

    goto :goto_6b

    :cond_68
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_6b
    :goto_6b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$prepareDrawDragView$0()V
    .registers 0

    return-void
.end method

.method private resetIconScale()V
    .registers 1

    return-void
.end method

.method private unSupportMultiNode(Z)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return v0

    :cond_4
    sget-object p1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_16

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_3c

    :cond_16
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz p1, :cond_1e

    iget-boolean p1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    if-nez p1, :cond_3c

    :cond_1e
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result p1

    if-nez p1, :cond_3c

    :cond_30
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz p0, :cond_3d

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isNonInstalled()Z

    move-result p0

    if-eqz p0, :cond_3d

    :cond_3c
    const/4 v0, 0x1

    :cond_3d
    return v0
.end method

.method private updateIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_9
    invoke-virtual {p0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_c
    return-void
.end method

.method private updateProgressBarUi(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object p0

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    :cond_b
    return-void
.end method

.method private updateTranslation()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationXForTaskbarAlignmentAnimation:F

    add-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public varargs animateDotScale([F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->cancelDotScaleAnim()V

    sget-object v0, Lcom/android/launcher3/BubbleTextView;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    new-instance v0, Lcom/android/launcher3/BubbleTextView$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/BubbleTextView$3;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->updateIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2a

    instance-of v0, v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->iconUpdateAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->animateIconUpdate(Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    return-void
.end method

.method public applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz v3, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, v1

    :goto_1c
    if-eqz v3, :cond_21

    const/high16 v4, 0x3f800000  # 1.0f

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    iget v5, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    if-ne v5, v2, :cond_31

    iget-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v5}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/DeviceProfile;->mDotRendererAllApps:Lcom/android/launcher3/icons/OplusDotRenderer;

    iput-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    goto :goto_3b

    :cond_31
    iget-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v5}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/OplusDotRenderer;

    iput-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    :goto_3b
    if-nez v0, :cond_3f

    if-eqz v3, :cond_5d

    :cond_3f
    if-eqz p2, :cond_53

    xor-int p2, v0, v3

    if-eqz p2, :cond_53

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result p2

    if-eqz p2, :cond_53

    new-array p2, v2, [F

    aput v4, p2, v1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->animateDotScale([F)V

    goto :goto_5d

    :cond_53
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->cancelDotScaleAnim()V

    iget-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iput v4, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_5d
    :goto_5d
    iget-object p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9f

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result p2

    if-eqz p2, :cond_80

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120224

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object p1, v2, v1

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9f

    :cond_80
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result p2

    if-eqz p2, :cond_9a

    iget-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result p2

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->getAppLabelPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9f

    :cond_9a
    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9f
    :goto_9f
    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    return-void
.end method

.method public applyFromItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V

    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->applyLoadingState(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 7
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    if-eqz v0, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mHideBadge:Z

    if-eqz v1, :cond_14

    or-int/lit8 v0, v0, 0x2

    :cond_14
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getIconColor()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->appColor:I

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060054

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    return-void
.end method

.method public applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 7
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyLabelBeforeSetText(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120224

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_27
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    :goto_29
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2c
    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-boolean p1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    if-eqz p1, :cond_59

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070bca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_8d

    :cond_59
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result p1

    if-eqz p1, :cond_8d

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez p1, :cond_8d

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070990

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_8d
    :goto_8d
    iget-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mIsRtl:Z

    if-eqz p1, :cond_b4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->containsLtrChar(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_b4

    :cond_b0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_b4
    :goto_b4
    return-void
.end method

.method public applyLoadingState(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->updateProgressBarUi(Z)V

    goto :goto_32

    :cond_23
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v1

    if-nez v1, :cond_2f

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_32

    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->updateProgressBarUi(Z)V

    :cond_32
    :goto_32
    return-void
.end method

.method public applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .registers 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/4 v5, 0x1

    if-lt v2, v4, :cond_25

    iget-object v6, v0, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1f

    goto :goto_21

    :cond_1f
    const-string v6, ""

    :goto_21
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3f

    :cond_25
    if-lez v2, :cond_2b

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    goto :goto_3f

    :cond_2b
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120112

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3f
    iget-object v6, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v7, v6, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-nez v7, :cond_6c

    if-ge v2, v4, :cond_4d

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v4, v4, 0x800

    if-nez v4, :cond_6c

    :cond_4d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_6b

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v3

    aput-object v0, p0, v5

    const-string v0, "[applyProgressLevel]progress:%d,info:%s,preload drawable not allowed."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "InstallApp"

    const-string v2, "BubbleTextView"

    invoke-static {v0, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    return-object v1

    :cond_6c
    if-eqz v6, :cond_88

    instance-of v1, v6, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v1, :cond_80

    check-cast v6, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isAppStartable()Z

    move-result p0

    xor-int/2addr p0, v5

    invoke-virtual {v6, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    goto :goto_87

    :cond_80
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->makePreloadIcon()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_87
    return-object v6

    :cond_88
    return-object v1
.end method

.method public canShowLongPressPopup()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method cancelDotScaleAnim()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    return-void
.end method

.method public cancelLongPress()V
    .registers 1

    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public checkForEllipsis()V
    .registers 6

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ICON_LABEL_AUTO_SCALING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1e

    return-void

    :cond_1e
    iget-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mIsRtl:Z

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    :cond_3f
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4a
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v4, v0

    if-gez v4, :cond_57

    return-void

    :cond_57
    const v4, -0x42b33333  # -0.05f

    invoke-direct {p0, v3, v2, v0, v4}, Lcom/android/launcher3/BubbleTextView;->findBestSpacingValue(Landroid/text/TextPaint;Ljava/lang/String;FF)F

    move-result v0

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-void
.end method

.method public clearPressedBackground()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPressed(Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    return-void
.end method

.method public containsLtrChar(Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1d
    return p0
.end method

.method public containsRtlChar(Ljava/lang/String;)Z
    .registers 7

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1d

    :cond_16
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1d

    return v3

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    return p0
.end method

.method public createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    if-nez v0, :cond_40

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_40

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v2, p1, p0}, Lcom/android/launcher3/icons/OplusDotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    neg-int p0, v0

    int-to-float p0, p0

    neg-int v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_40
    return-void
.end method

.method public drawNewUpdateDotIfNecessary(Landroid/graphics/Canvas;Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_127

    iget-boolean v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    if-eqz v1, :cond_127

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_127

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-direct {p0, p2}, Lcom/android/launcher3/BubbleTextView;->isShouldShowGreenDot(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/android/launcher3/BubbleTextView;->getTextViewSelection(Landroid/widget/TextView;I)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v2}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    const/4 v0, 0x1

    :cond_30
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;->getUpdateDotDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p2, :cond_41

    const/16 p2, 0xff

    goto :goto_47

    :cond_41
    const/high16 p2, 0x437f0000  # 255.0f

    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    mul-float/2addr v3, p2

    float-to-int p2, v3

    :goto_47
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mIsRtl:Z

    const v3, 0x7f070bc9

    const/high16 v4, 0x40000000  # 2.0f

    const v5, 0x7f070bc7

    if-eqz p2, :cond_99

    iget-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->containsLtrChar(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7b

    if-eqz v0, :cond_67

    goto :goto_7b

    :cond_67
    iget p2, v1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p2, v0

    int-to-float p2, p2

    goto :goto_e9

    :cond_7b
    :goto_7b
    invoke-direct {p0, p0}, Lcom/android/launcher3/BubbleTextView;->getEllipsisWidth(Landroid/widget/TextView;)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p0}, Lcom/android/launcher3/BubbleTextView;->getEllipsisWidth(Landroid/widget/TextView;)F

    move-result v1

    invoke-static {v0, v1, v4, p2}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result p2

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    goto :goto_e9

    :cond_99
    iget-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->containsRtlChar(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_cb

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p0}, Lcom/android/launcher3/BubbleTextView;->getEllipsisWidth(Landroid/widget/TextView;)F

    move-result v0

    sub-float/2addr p2, v0

    div-float/2addr p2, v4

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    goto :goto_e9

    :cond_cb
    iget p2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v0, p2

    iget-object p2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v0, p2

    int-to-float p2, v0

    :goto_e9
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaseline()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v5, v1

    div-float/2addr v5, v4

    sub-float/2addr v0, v5

    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    sub-float/2addr v0, p0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_127
    return-void
.end method

.method public drawWithoutDot(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAppLabelPluralString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f12022e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p0, "app_name"

    invoke-static {p0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconBounds(ILandroid/graphics/Rect;)V
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Utilities;->setRectToViewCenter(Landroid/view/View;ILandroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIsRtl:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2e

    :cond_1b
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p0

    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2e

    :cond_25
    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_2e
    return-void
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public getIconSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    return p0
.end method

.method public getInitCompoundDrawablePaddingOfFolder(Lcom/android/launcher3/DeviceProfile;)I
    .registers 2

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    return p0
.end method

.method public getInitIconSize(Landroid/content/res/TypedArray;I)I
    .registers 3

    const/4 p0, 0x2

    invoke-virtual {p1, p0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    return p0
.end method

.method public getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z
    .registers 5

    sget-object v0, Lcom/android/launcher3/BubbleTextView$4;->$SwitchMap$com$android$launcher3$BubbleTextView$MULTI_NODE_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_25

    const/4 v2, 0x4

    if-eq p1, v2, :cond_20

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1a

    :cond_18
    move p1, v1

    goto :goto_34

    :cond_1a
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIconRenderNode:Landroid/graphics/RenderNode;

    if-eqz p1, :cond_18

    :goto_1e
    move p1, v0

    goto :goto_34

    :cond_20
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextRenderNode:Landroid/graphics/RenderNode;

    if-eqz p1, :cond_18

    goto :goto_1e

    :cond_25
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mGradientRenderNode:Landroid/graphics/RenderNode;

    if-eqz p1, :cond_18

    goto :goto_1e

    :cond_2a
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mNewUpdateDotRenderNode:Landroid/graphics/RenderNode;

    if-eqz p1, :cond_18

    goto :goto_1e

    :cond_2f
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderNode:Landroid/graphics/RenderNode;

    if-eqz p1, :cond_18

    goto :goto_1e

    :goto_34
    iget-boolean p0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableMultiNode:Z

    if-eqz p0, :cond_3b

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v1

    :goto_3c
    return v0
.end method

.method public getRenDerNode(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Landroid/graphics/RenderNode;
    .registers 3

    sget-object v0, Lcom/android/launcher3/BubbleTextView$4;->$SwitchMap$com$android$launcher3$BubbleTextView$MULTI_NODE_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_19

    const/4 p0, 0x0

    return-object p0

    :cond_19
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mIconRenderNode:Landroid/graphics/RenderNode;

    return-object p0

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mTextRenderNode:Landroid/graphics/RenderNode;

    return-object p0

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mGradientRenderNode:Landroid/graphics/RenderNode;

    return-object p0

    :cond_22
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mNewUpdateDotRenderNode:Landroid/graphics/RenderNode;

    return-object p0

    :cond_25
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderNode:Landroid/graphics/RenderNode;

    return-object p0
.end method

.method public getReorderBounceOffset(Landroid/graphics/PointF;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public getReorderBounceScale()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mScaleForReorderBounce:F

    return p0
.end method

.method public getReorderPreviewOffset(Landroid/graphics/PointF;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public getSourceVisualDragBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public getTranslationXForTaskbarAlignmentAnimation()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationXForTaskbarAlignmentAnimation:F

    return p0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getViewType()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/BubbleTextView$BubbleTextViewWrapper;-><init>(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/BubbleTextView$1;)V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    :cond_c
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    return-object p0
.end method

.method public hasDot()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public iconUpdateAnimationEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    return p0
.end method

.method public isCallOnClick()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/BubbleTextView;->mIsCallOnClick:Z

    return p0
.end method

.method public isEventTriggerOutsideIcon(FF)Z
    .registers 6

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_14

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "BubbleTextView"

    const-string p1, "isEventTriggerOutsideIcon, mDisplay == DISPLAY_TASKBAR, return false"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return v1

    :cond_14
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_42

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p0

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_43

    :cond_42
    const/4 v1, 0x1

    :cond_43
    return v1
.end method

.method public makePreloadIcon()Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->newPendingIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isAppStartable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    return-object p0
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0}, Lcom/android/launcher3/IBubbleTextViewExt;->onAttachFromWindowExitPoint()V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    if-eqz p0, :cond_f

    sget-object p0, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    invoke-static {p1, p0}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    :cond_f
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->onDetachedFromWindowEntryPoint()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->onInterceptIconDraw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-nez v0, :cond_fc

    instance-of v0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSpiritAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->canDrawShadow()Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isShadowAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_43

    :cond_3d
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentIconArea()Landroid/graphics/RectF;

    move-result-object v0

    :goto_43
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getPointerDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getPointerDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string/jumbo v0, "onDraw, mRadialX is: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRadialY is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "mCurRadius is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getIconRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rect is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentIconArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleTextView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentIconArea()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getIconRadius()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v3}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getIconRadius()F

    move-result v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventX()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventY()F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    iget-object v4, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v4}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updatePainterWhenDrawRadialCircle()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->enableBackGroundShadow()Z

    move-result v1

    if-eqz v1, :cond_f9

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getBGPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_f9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_fc
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->executeAfterIconDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->drawDotIfNecessary(Landroid/graphics/Canvas;)V

    sget-object v0, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_NEW_UPDATER_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_11e

    sget-object v0, Lcom/android/common/util/RenderNodeHelper;->INSTANCE:Lcom/android/common/util/RenderNodeHelper;

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mNewUpdateDotRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/common/util/RenderNodeHelper;->beginRecording(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RenderNode;)Landroid/graphics/Canvas;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/BubbleTextView;->drawNewUpdateDotIfNecessary(Landroid/graphics/Canvas;Z)V

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mNewUpdateDotRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/common/util/RenderNodeHelper;->endRecording(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RenderNode;)V

    goto :goto_122

    :cond_11e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->drawNewUpdateDotIfNecessary(Landroid/graphics/Canvas;Z)V

    :goto_122
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    if-eqz p1, :cond_5

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_7
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    return p1
.end method

.method public onMeasure(II)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v2, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_35
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->beforeTextViewOnMeasure(II)V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->checkForEllipsis()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->checkForEllipsis()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkAndHideScrollFolderTip()V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hidePopClickTip()V

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "BubbleTextView"

    const/4 v2, 0x0

    if-nez v0, :cond_46

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/BubbleTextView;->shouldIgnoreTouchDown(FF)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_45

    const-string/jumbo p1, "onTouchEvent ACTION_DOWN, appName: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", shouldIgnoreTouchDown"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    return v2

    :cond_46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_66

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_66

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo v0, "onTouchEvent ACTION_CANCEL, clearPressedBackground and cancelLongPress"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->cancelLongPress()V

    :cond_66
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->handleSecondaryDisplay(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->processOnClickEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIsCallOnClick:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    if-nez v0, :cond_84

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_85

    :cond_84
    move v2, v3

    :cond_85
    return v2

    :cond_86
    if-nez v0, :cond_8e

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_8f

    :cond_8e
    move v2, v3

    :cond_8f
    return v2
.end method

.method public onVisibilityAggregated(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_b
    return-void
.end method

.method public prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;
    .registers 1

    sget-object p0, Lcom/android/launcher3/h;->a:Lcom/android/launcher3/h;

    return-object p0
.end method

.method public processOnClickEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "BubbleTextView"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_bd

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    if-eq v0, v2, :cond_2a

    if-eq v0, v6, :cond_13

    goto/16 :goto_d6

    :cond_13
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_24

    const-string p1, "ACTION_CANCEL | pressed = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIsPressed:Z

    invoke-static {p1, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_24
    iput-boolean v3, p0, Lcom/android/launcher3/BubbleTextView;->mIsPressed:Z

    iput-wide v4, p0, Lcom/android/launcher3/BubbleTextView;->mRecentPressedTime:J

    goto/16 :goto_d6

    :cond_2a
    invoke-direct {p0, p0}, Lcom/android/launcher3/BubbleTextView;->isInterceptActionUpEvent(Landroid/view/View;)Z

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/launcher3/BubbleTextView;->mRecentPressedTime:J

    sub-long/2addr v7, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_40

    move v7, v2

    goto :goto_41

    :cond_40
    move v7, v3

    :goto_41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v8, p1}, Lcom/android/launcher3/BubbleTextView;->isEventTriggerOutsideIcon(FF)Z

    move-result p1

    iget-boolean v8, p0, Lcom/android/launcher3/BubbleTextView;->mIsPressed:Z

    if-eqz v8, :cond_59

    if-nez v7, :cond_59

    if-eqz v0, :cond_59

    if-nez p1, :cond_59

    move v8, v2

    goto :goto_5a

    :cond_59
    move v8, v3

    :goto_5a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    if-eqz v9, :cond_8e

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-boolean v10, p0, Lcom/android/launcher3/BubbleTextView;->mIsPressed:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v2

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v0, 0x4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, v0

    const-string v0, "ACTION_UP | mIsPressed=%s, isLongPressTimeout=%s  isCanStartApp=%s isEventTriggerOutsideIcon=%s |=>isClick=%s"

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8e
    iput-boolean v3, p0, Lcom/android/launcher3/BubbleTextView;->mIsPressed:Z

    if-nez v8, :cond_97

    if-eqz p1, :cond_97

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    :cond_97
    iput-wide v4, p0, Lcom/android/launcher3/BubbleTextView;->mRecentPressedTime:J

    if-eqz v8, :cond_bb

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mProcessOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_bb

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_aa

    const-string v0, "ACTION_UP | onClick"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->setUpTimeForCamera()V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->cancelLongPress()V

    const-string v0, " processOnClickEvent, ACTION_UP cancelLongPress."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->playSoundEffect(I)V

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_bb
    move v3, v8

    goto :goto_d6

    :cond_bd
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_ce

    const-string p1, "ACTION_DOWN | pressed = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIsPressed:Z

    invoke-static {p1, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_ce
    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mIsPressed:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/BubbleTextView;->mRecentPressedTime:J

    :goto_d6
    return v3
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_37

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    instance-of v1, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_1f

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_32

    :cond_1f
    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_2f

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p1}, Lcom/android/launcher3/views/ActivityContext;->invalidateParent(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_32

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :goto_32
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    :cond_37
    return-void
.end method

.method public refreshDrawableState()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_7
    return-void
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    :cond_7
    return-void
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    iput v2, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->appColor:I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->cancelDotScaleAnim()V

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mIsCallOnClick:Z

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/IBubbleTextViewExt;->resetExitPoint()V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    :cond_2f
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;

    if-eqz v0, :cond_7

    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_7
    return-void
.end method

.method public setCenterVertically(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    return-void
.end method

.method public setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V
    .registers 8

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_4f

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-double v1, p2

    const-wide v3, 0x3f847ae147ae147bL  # 0.01

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200fd

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4f

    :cond_35
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200f5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public setForceHideDot(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1c

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_1e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->animateDotScale([F)V

    :cond_1c
    :goto_1c
    return-void

    nop

    :array_1e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setHideBadge(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mHideBadge:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->onInterceptSetIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "BubbleTextView"

    const-string/jumbo p1, "when setting the icon, intercept the setting icon, return"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2f
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_4a

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyHighTempProtectedState(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_4a
    return-void
.end method

.method public setIconAlpha(F)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_ICON_NODE:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mIconRenderNode:Landroid/graphics/RenderNode;

    invoke-static {p0, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/graphics/RenderNode;F)Z

    goto :goto_11

    :cond_e
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_11
    return-void
.end method

.method public setIconVisible(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_d

    :cond_7
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_d
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->setIconVisibleExitPoint(Z)V

    return-void
.end method

.method public setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setLongPressTimeoutFactor(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->setLongPressTimeoutFactor(F)V

    return-void
.end method

.method public setMultiNodeEnable(ZZZZ)V
    .registers 9

    invoke-direct {p0, p4}, Lcom/android/launcher3/BubbleTextView;->unSupportMultiNode(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableMultiNode:Z

    if-nez v0, :cond_d

    :cond_c
    return-void

    :cond_d
    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_14

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    :cond_14
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1f

    if-nez p2, :cond_1f

    if-eqz p3, :cond_1d

    goto :goto_1f

    :cond_1d
    move v3, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v3, v1

    :goto_20
    iput-boolean v3, p0, Lcom/android/launcher3/BubbleTextView;->mEnableMultiNode:Z

    invoke-static {p0, p1}, Landroid/widget/OplusSuperTextHelper;->setMultiNodeText(Landroid/widget/TextView;Z)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextRenderNode:Landroid/graphics/RenderNode;

    invoke-static {p0, p2}, Landroid/widget/OplusSuperTextHelper;->setMultiNodeIcon(Landroid/widget/TextView;Z)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIconRenderNode:Landroid/graphics/RenderNode;

    iget-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mEnableMultiNode:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_48

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result p1

    if-nez p1, :cond_48

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/IBubbleTextViewExt;->getTitleShadowFlag()Z

    move-result p1

    if-eqz p1, :cond_48

    const/high16 p1, 0x41000000  # 8.0f

    const/high16 v3, 0x4d000000  # 1.34217728E8f

    invoke-virtual {p0, p1, p2, p2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_48
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result p1

    if-eqz p1, :cond_5c

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result p1

    if-nez p1, :cond_5c

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/IBubbleTextViewExt;->getTitleShadowFlag()Z

    move-result p1

    if-nez p1, :cond_5f

    :cond_5c
    invoke-virtual {p0, p2, p2, p2, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_5f
    iget-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mEnableMultiNode:Z

    if-eqz p1, :cond_b5

    sget-object p1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/Launcher;

    iget-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz p2, :cond_7d

    invoke-virtual {p2}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result p2

    if-nez p2, :cond_89

    iget-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result p2

    if-nez p2, :cond_89

    :cond_7d
    if-eqz p1, :cond_88

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-nez p1, :cond_88

    goto :goto_89

    :cond_88
    move v1, v2

    :cond_89
    :goto_89
    if-eqz v1, :cond_93

    if-eqz p4, :cond_93

    invoke-static {p0}, Landroid/view/OplusViewCompat;->addRenderNode(Landroid/view/View;)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderNode:Landroid/graphics/RenderNode;

    :cond_93
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getUpdateDot()Z

    move-result p1

    if-eqz p1, :cond_a5

    if-eqz p4, :cond_a5

    invoke-static {p0}, Landroid/view/OplusViewCompat;->addRenderNode(Landroid/view/View;)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mNewUpdateDotRenderNode:Landroid/graphics/RenderNode;

    :cond_a5
    if-eqz p3, :cond_af

    if-eqz p4, :cond_af

    invoke-static {p0}, Landroid/view/OplusViewCompat;->addRenderNode(Landroid/view/View;)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mGradientRenderNode:Landroid/graphics/RenderNode;

    :cond_af
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v0}, Lcom/android/launcher3/IBubbleTextViewExt;->setTextAlphaEntryPoint(F)V

    goto :goto_d2

    :cond_b5
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderNode:Landroid/graphics/RenderNode;

    invoke-static {p0, p1}, Landroid/view/OplusViewCompat;->removeRenderNode(Landroid/view/View;Landroid/graphics/RenderNode;)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mNewUpdateDotRenderNode:Landroid/graphics/RenderNode;

    invoke-static {p0, p1}, Landroid/view/OplusViewCompat;->removeRenderNode(Landroid/view/View;Landroid/graphics/RenderNode;)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mGradientRenderNode:Landroid/graphics/RenderNode;

    invoke-static {p0, p1}, Landroid/view/OplusViewCompat;->removeRenderNode(Landroid/view/View;Landroid/graphics/RenderNode;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderNode:Landroid/graphics/RenderNode;

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mNewUpdateDotRenderNode:Landroid/graphics/RenderNode;

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mGradientRenderNode:Landroid/graphics/RenderNode;

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    invoke-interface {p1, p0}, Lcom/android/launcher3/IBubbleTextViewExt;->setTextAlphaEntryPoint(F)V

    :goto_d2
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v1, "this = %s, listener = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleTextView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mProcessOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setReorderBounceOffset(FF)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateTranslation()V

    return-void
.end method

.method public setReorderBounceScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mScaleForReorderBounce:F

    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-super {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setReorderPreviewOffset(FF)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateTranslation()V

    return-void
.end method

.method public setStayPressed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    return-void
.end method

.method public setTextAlpha(F)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableMultiNode:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->setTextAlphaEntryPoint(F)V

    :cond_9
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    iget-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mEnableMultiNode:Z

    if-nez p1, :cond_4b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_4b

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result p1

    if-nez p1, :cond_48

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/IBubbleTextViewExt;->getTitleShadowFlag()Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_48

    :cond_34
    iget p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3e

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_4b

    :cond_3e
    const/high16 p1, 0x41000000  # 8.0f

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getModifiedShadowColor()I

    move-result v0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_4b

    :cond_48
    :goto_48
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_4b
    :goto_4b
    iget-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mEnableMultiNode:Z

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextRenderNode:Landroid/graphics/RenderNode;

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    invoke-static {p1, p0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/graphics/RenderNode;F)Z

    return-void

    :cond_57
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColorStateList:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_5f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_66

    :cond_5f
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getModifiedColor()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_66
    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getModifiedColor()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColorStateList:Landroid/content/res/ColorStateList;

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_16

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1d

    :cond_16
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getModifiedColor()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1d
    return-void
.end method

.method public setTextVisibility()V
    .registers 1

    return-void
.end method

.method public setTextVisibility(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    return-void
.end method

.method public setTranslationForMoveFromCenterAnimation(FF)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateTranslation()V

    return-void
.end method

.method public setTranslationXForTaskbarAlignmentAnimation(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationXForTaskbarAlignmentAnimation:F

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateTranslation()V

    return-void
.end method

.method public setUpTimeForCamera()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_2a

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oplus.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const v0, 0x51aa1e07

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method public shouldAnimateIconChange(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    move p1, v1

    goto :goto_31

    :cond_30
    move p1, v2

    :goto_31
    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result p0

    if-eqz p0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    return v1
.end method

.method public shouldIgnoreTouchDown(FF)Z
    .registers 6

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_15

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "BubbleTextView"

    const-string/jumbo p1, "shouldIgnoreTouchDown, mDisplay == DISPLAY_TASKBAR, return false"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return v1

    :cond_15
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_43

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_43

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_43

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p0

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_44

    :cond_43
    const/4 v1, 0x1

    :cond_44
    return v1
.end method

.method public shouldTextBeVisible()Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_17
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_41

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x65

    if-eq v0, v1, :cond_3f

    const/16 v1, -0x67

    if-eq v0, v1, :cond_3f

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/FontManager;

    iget p0, p0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p0, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 p0, 0x1

    :goto_42
    return p0
.end method

.method public startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method

.method public updateNewUpdateDotAlpha(F)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_NEW_UPDATER_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mNewUpdateDotRenderNode:Landroid/graphics/RenderNode;

    invoke-static {p0, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/graphics/RenderNode;F)Z

    :cond_d
    return-void
.end method

.method public verifyHighRes()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/icons/IconCache;->updateIconInBackground(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/icons/cache/HandlerRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    :cond_30
    return-void
.end method
