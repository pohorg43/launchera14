.class public Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;
.super Lcom/android/quickstep/views/TaskThumbnailView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskThumbnailViewImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskThumbnailViewImpl.kt\ncom/android/quickstep/views/OplusTaskThumbnailViewImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,1145:1\n1#2:1146\n31#3:1147\n94#3,14:1148\n*S KotlinDebug\n*F\n+ 1 OplusTaskThumbnailViewImpl.kt\ncom/android/quickstep/views/OplusTaskThumbnailViewImpl\n*L\n628#1:1147\n628#1:1148,14\n*E\n"
    }
.end annotation


# static fields
.field private static final ALPHA_MAX_RANGE_BRIGHT_WALLPAPER:F = 77.0f

.field private static final ALPHA_MAX_RANGE_DARK_WALLPAPER:F = 102.0f

.field private static final CLEAR:I = -0x2

.field private static final CORNER_RADIUS_CHANGED_THRESHOLD:F = 0.8f

.field public static final Companion:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion;

.field private static final DEFAULT_FRAME:I = -0x1

.field private static final GRID_PROTECTED_ICON_SCALE:F = 0.53f

.field public static final LIGHTNING_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskThumbnailView;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_BACKGROUND_ALPHA:I = 0xe6

.field private static final MAX_FRAME:I = 0x63

.field private static final MIN_FRAME:I = 0x0

.field public static final PROTECTED_ANIM_DURATION:J = 0xfaL

.field private static final SELECTED_BG_ANIM_DURATION:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "OplusTaskThumbnailView"


# instance fields
.field private backgroundPaintAlpha:I

.field private final backgroundPath:Landroid/graphics/Path;

.field private bgHeight:I

.field private contentProtectTextPaintAlpha:I

.field private contentProtectTextRect:Landroid/graphics/Rect;

.field private contentProtectionAnim:Landroid/animation/ValueAnimator;

.field private currentFrame:I

.field private currentRotation:I

.field private distance:I

.field private drawPath:Landroid/graphics/Path;

.field private drawRect:Landroid/graphics/RectF;

.field private forceRecalculateFullscreenRadius:Z

.field private fullscreenProgress:F

.field private isContentProtection:Z

.field private isFocus:Z

.field private isPrivacy:Z

.field private isSelected:Z

.field private lightningAnimator:Landroid/animation/ValueAnimator;

.field private final mCanvasRect:Landroid/graphics/RectF;

.field private final mContentProtectBackgroundPaint$delegate:Lh4/f;

.field private final mContentProtectIcon$delegate:Lh4/f;

.field private final mContentProtectIconMargin$delegate:Lh4/f;

.field private final mContentProtectSmallIcon$delegate:Lh4/f;

.field private final mContentProtectStaticLayout$delegate:Lh4/f;

.field private final mContentProtectTextMargin$delegate:Lh4/f;

.field private final mContentProtectTextMaxWidth$delegate:Lh4/f;

.field private final mContentProtectTextPaint$delegate:Lh4/f;

.field private final mContentProtectTextSize$delegate:Lh4/f;

.field private mCurrentCornerRadius:F

.field private final mDarkColorObserver:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;

.field private final mEncyptTextMargin$delegate:Lh4/f;

.field private final mEncyptTextSize$delegate:Lh4/f;

.field private final mExpandFoldCornerRadius$delegate:Lh4/f;

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private final mGridContentProtectIconMatrix$delegate:Lh4/f;

.field private final mGridCornerRadius$delegate:Lh4/f;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private final mIconPaint$delegate:Lh4/f;

.field private final mIconRect:Landroid/graphics/Rect;

.field private final mNormalCornerRadius$delegate:Lh4/f;

.field private final mOrnamentPaint$delegate:Lh4/f;

.field private final mPlicyTextPaint$delegate:Lh4/f;

.field private final mPrivacyIcon$delegate:Lh4/f;

.field private final mPrivacyIconPaint$delegate:Lh4/f;

.field private final mRadius:[F

.field private final mSelectedBackgroundPaint$delegate:Lh4/f;

.field private mShowLightningIcon:Z

.field private final mStartupBackgroundPaint$delegate:Lh4/f;

.field private final mStaticLayout$delegate:Lh4/f;

.field private final mTabletCornerRadius$delegate:Lh4/f;

.field private final mTabletSelectedCornerRadius$delegate:Lh4/f;

.field private final mTextPaint$delegate:Lh4/f;

.field private margin:I

.field private needAnimate:Z

.field private normalTaskFullscreenRadius:F

.field private normalTaskViewCornerRadius:F

.field private onlyDrawDimming:Z

.field private ornamentHeight:F

.field private ornamentLongSide:F

.field private final ornamentPath:Landroid/graphics/Path;

.field private ornamentShortSide:F

.field private paintAlpha:I

.field private privacyIconPaintAlpha:I

.field private selectedAnimator:Landroid/animation/ValueAnimator;

.field private splitScreenWindowCornerRadius:I

.field private splitTaskFullscreenRadius:F

.field private splitTaskViewCornerRadius:F

.field private tabletSelectedBgRadiusArray:[F

.field private taskBackgroundColor:I

.field private final textRect:Landroid/graphics/Rect;

.field private title:Ljava/lang/String;

.field private final tmpRect:Landroid/graphics/RectF;

.field private viewRadiusArray:[F

.field private waitNextDraw:Z

.field private windowCornerRadius:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion;

    new-instance v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion$LIGHTNING_ALPHA$1;

    invoke-direct {v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion$LIGHTNING_ALPHA$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->LIGHTNING_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/TaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mDarkColorObserver:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;

    sget-object p1, Lkotlin/a;->c:Lkotlin/a;

    sget-object p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mIconPaint$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mIconPaint$2;

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconPaint$delegate:Lh4/f;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mOrnamentPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mOrnamentPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mOrnamentPaint$delegate:Lh4/f;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mTextPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mTextPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mTextPaint$delegate:Lh4/f;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPlicyTextPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPlicyTextPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPlicyTextPaint$delegate:Lh4/f;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPrivacyIconPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPrivacyIconPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPrivacyIconPaint$delegate:Lh4/f;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectBackgroundPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectBackgroundPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectBackgroundPaint$delegate:Lh4/f;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextPaint$delegate:Lh4/f;

    sget-object p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mStartupBackgroundPaint$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mStartupBackgroundPaint$2;

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mStartupBackgroundPaint$delegate:Lh4/f;

    sget-object p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPrivacyIcon$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPrivacyIcon$2;

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPrivacyIcon$delegate:Lh4/f;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectIcon$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectIcon$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectIcon$delegate:Lh4/f;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectSmallIcon$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectSmallIcon$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectSmallIcon$delegate:Lh4/f;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->textRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    const/16 p2, 0x8

    new-array p3, p2, [F

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mStaticLayout$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mStaticLayout$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mStaticLayout$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectStaticLayout$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectStaticLayout$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectStaticLayout$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mEncyptTextSize$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mEncyptTextSize$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mEncyptTextSize$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mEncyptTextMargin$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mEncyptTextMargin$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mEncyptTextMargin$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextSize$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextSize$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextSize$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextMargin$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextMargin$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextMargin$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextMaxWidth$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextMaxWidth$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextMaxWidth$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectIconMargin$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectIconMargin$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectIconMargin$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mTabletCornerRadius$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mTabletCornerRadius$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mTabletCornerRadius$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mExpandFoldCornerRadius$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mExpandFoldCornerRadius$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mExpandFoldCornerRadius$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mGridCornerRadius$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mGridCornerRadius$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mGridCornerRadius$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mNormalCornerRadius$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mNormalCornerRadius$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mNormalCornerRadius$delegate:Lh4/f;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mTabletSelectedCornerRadius$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mTabletSelectedCornerRadius$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mTabletSelectedCornerRadius$delegate:Lh4/f;

    sget-object p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mGridContentProtectIconMatrix$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mGridContentProtectIconMatrix$2;

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mGridContentProtectIconMatrix$delegate:Lh4/f;

    sget-object p3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mSelectedBackgroundPaint$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mSelectedBackgroundPaint$2;

    invoke-static {p1, p3}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mSelectedBackgroundPaint$delegate:Lh4/f;

    new-instance p1, Lcom/android/quickstep/views/k;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/k;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->taskBackgroundColor:I

    const/4 p1, -0x2

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->privacyIconPaintAlpha:I

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextPaintAlpha:I

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPaintAlpha:I

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->paintAlpha:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawRect:Landroid/graphics/RectF;

    new-array p1, p2, [F

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    new-array p1, p2, [F

    const/4 p3, 0x0

    move v1, p3

    :goto_185
    if-ge v1, p2, :cond_190

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTabletSelectedCornerRadius()F

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_185

    :cond_190
    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tabletSelectedBgRadiusArray:[F

    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStartupBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStartupBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStartupBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0607af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMSelectedBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_1de

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060809

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1e9

    :cond_1de
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06080a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_1e9
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070d74

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070d75

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->margin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12042e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "resources.getString(R.st…us_lightning_start_title)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070d78

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070d77

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070d76

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->textRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p3, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int p1, v1, p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->distance:I

    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->c()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b()I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->taskBackgroundColor:I

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f12043e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p3, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sget-object p1, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object p3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    const-string v1, "mActivity"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result p3

    iput p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->windowCornerRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getSplitScreenWindowRoundCornerRadiusPx()I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitScreenWindowCornerRadius:I

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    invoke-interface {p0, p2}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->setIsUseInThumbnailView(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/view/View;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mFocusListener$lambda$0(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/view/View;Z)V

    return-void
.end method

.method public static final synthetic access$drawableToBitmap(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMContentProtectTextPaint(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Landroid/text/TextPaint;
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMContext$p$s-359386749(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMPlicyTextPaint(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Landroid/text/TextPaint;
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPlicyTextPaint()Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMPrivacyIcon(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Landroid/graphics/Bitmap;
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIcon()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMShowLightningIcon$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mShowLightningIcon:Z

    return p0
.end method

.method public static final synthetic access$getTaskBackgroundColor$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->taskBackgroundColor:I

    return p0
.end method

.method public static final synthetic access$resetPaintAlpha(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetPaintAlpha()V

    return-void
.end method

.method public static final synthetic access$setContentProtectionAnim$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectionAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setLightningAnimator$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->lightningAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setNeedAnimate$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->needAnimate:Z

    return-void
.end method

.method public static final synthetic access$setTaskBackgroundColor$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->taskBackgroundColor:I

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->showLightningAnimation$lambda$10$lambda$9(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->playSeletedBgAnimation$lambda$6$lambda$5(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final calculateCornerRadius()F
    .registers 9

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMNormalCornerRadius()F

    move-result v2

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_95

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTabletCornerRadius()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->isNextTask()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    iget v3, v3, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    const/high16 v6, 0x40000000  # 2.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_88

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v3

    goto :goto_37

    :cond_36
    move-object v3, v6

    :goto_37
    instance-of v7, v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v7, :cond_3e

    move-object v6, v3

    check-cast v6, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_3e
    if-eqz v6, :cond_48

    invoke-virtual {v6}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGustureActive()Z

    move-result v3

    if-ne v3, v4, :cond_48

    move v3, v4

    goto :goto_49

    :cond_48
    move v3, v5

    :goto_49
    if-eqz v3, :cond_88

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_84

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_84

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v3

    const/4 v6, 0x0

    cmpg-float v3, v3, v6

    if-nez v3, :cond_76

    move v3, v4

    goto :goto_77

    :cond_76
    move v3, v5

    :goto_77
    if-eqz v3, :cond_7a

    goto :goto_84

    :cond_7a
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v3

    div-float/2addr v2, v3

    goto :goto_88

    :cond_84
    :goto_84
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTabletCornerRadius()F

    move-result v2

    :cond_88
    :goto_88
    sget-object v3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getMtaskScaleProgerssStart()Z

    move-result v3

    if-eqz v3, :cond_9f

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v2, v2, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    goto :goto_9f

    :cond_95
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMExpandFoldCornerRadius()F

    move-result v2

    :cond_9f
    :goto_9f
    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskFullscreenRadius:F

    invoke-direct {p0, v3, v2, v5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->calculateCornerRadiusByProgress(FFZ)F

    move-result v3

    iput v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    iget-object v6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v6, :cond_b1

    iget-boolean v6, v6, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSplitScreenTask:Z

    if-ne v6, v4, :cond_b1

    move v6, v4

    goto :goto_b2

    :cond_b1
    move v6, v5

    :goto_b2
    if-eqz v6, :cond_ba

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskFullscreenRadius:F

    invoke-direct {p0, v3, v2, v4}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->calculateCornerRadiusByProgress(FFZ)F

    move-result v3

    :cond_ba
    iput v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_c2

    move v1, v4

    goto :goto_c3

    :cond_c2
    move v1, v5

    :goto_c3
    if-eqz v1, :cond_cf

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_cc

    goto :goto_cd

    :cond_cc
    move v4, v5

    :goto_cd
    if-nez v4, :cond_d2

    :cond_cf
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetCornerRadiusArray()V

    :cond_d2
    return v2
.end method

.method private final calculateCornerRadiusByProgress(FFZ)F
    .registers 5

    if-eqz p3, :cond_5

    iget p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    goto :goto_6

    :cond_5
    move p3, p2

    :goto_6
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_28

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->fullscreenProgress:F

    const v0, 0x3f4ccccd  # 0.8f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_28

    cmpl-float v0, p2, p1

    if-lez v0, :cond_28

    const/high16 p3, 0x3f800000  # 1.0f

    sub-float/2addr p3, p0

    const p0, 0x3e4ccccc  # 0.19999999f

    div-float/2addr p3, p0

    invoke-static {p3, p1, p2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p3

    :cond_28
    return p3
.end method

.method private final calculateNextFrame()I
    .registers 2

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0x63

    if-le p0, v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return p0
.end method

.method private final calculateTaskFullscreenRadius()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->forceRecalculateFullscreenRadius:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->forceRecalculateFullscreenRadius:Z

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-le v3, v2, :cond_1d

    move v3, v2

    :cond_1d
    int-to-float v2, v3

    if-le v0, v1, :cond_21

    move v0, v1

    :cond_21
    int-to-float v0, v0

    div-float/2addr v2, v0

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->windowCornerRadius:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskFullscreenRadius:F

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitScreenWindowCornerRadius:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskFullscreenRadius:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "calculateTaskFullscreenRadius: normalTaskFullscreenRadius = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskFullscreenRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", splitTaskFullscreenRadius = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskFullscreenRadius:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskThumbnailView"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method private final canShowLightningIcon(Z)V
    .registers 2

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mShowLightningIcon:Z

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateFrame(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_14

    :cond_d
    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateFrame(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mShowLightningIcon:Z

    :goto_14
    return-void
.end method

.method private final cancelContentProtectAnimation()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskThumbnailView"

    const-string v2, "cancelContentProtectAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectionAnim:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_16
    return-void
.end method

.method private final checkAndUpdatePrivacy(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 5

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isPrivacy(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isPrivacy:Z

    iget-boolean p1, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onContentProtectStateChanged$default(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZZILjava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->executeContentProtectStateChangeAnimation$lambda$14$lambda$12(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final drawBackground(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "drawBackground: rotation = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCurrentCornerRadius:F

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateLightningCorner(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    if-eqz v0, :cond_5e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_39

    goto :goto_70

    :cond_39
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_70

    :cond_4c
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_70

    :cond_5e
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_70
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStartupBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawContentProtect(Landroid/graphics/Canvas;FFFFF)V
    .registers 14

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result p6

    const/4 v0, 0x2

    int-to-float v1, v0

    div-float v2, p4, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextMargin()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p5, v3

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectStaticLayout()Landroid/text/StaticLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectSmallIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    div-int/2addr v5, v0

    int-to-float v4, v5

    sub-float/2addr v3, v4

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextMaxWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v4, v5, :cond_34

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextMaxWidth()I

    move-result v4

    goto :goto_3a

    :cond_34
    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    :goto_3a
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectSmallIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectIconMargin()I

    move-result v6

    add-int/2addr v5, v6

    div-int/2addr v5, v0

    div-int/2addr v4, v0

    add-int/2addr v4, v5

    if-nez p6, :cond_52

    int-to-float p6, v4

    sub-float p6, v2, p6

    int-to-float v0, v5

    add-float/2addr v2, v0

    goto :goto_5f

    :cond_52
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectSmallIcon()Landroid/graphics/Bitmap;

    move-result-object p6

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    sub-int/2addr v4, p6

    int-to-float p6, v4

    add-float/2addr p6, v2

    int-to-float v0, v5

    sub-float/2addr v2, v0

    :goto_5f
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetDrawPath(FFFF)V

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float p2, p4, p2

    div-float/2addr p2, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectIcon()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    sub-float p3, p5, p3

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextSize()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextMargin()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    div-float/2addr p3, v1

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMGridContentProtectIconMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    const p3, 0x3f07ae14  # 0.53f

    invoke-virtual {p2, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMGridContentProtectIconMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, p3, p4, v1}, Le/a;->a(FFFF)F

    move-result p4

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float p3, p5, v0

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextSize()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextMargin()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    div-float/2addr p3, v1

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMGridContentProtectIconMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_e7

    :cond_dc
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectIcon()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_e7
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectSmallIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p6, v3, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextMargin()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p5, p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectStaticLayout()Landroid/text/StaticLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p5, p2

    invoke-virtual {p1, v2, p5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectStaticLayout()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final drawIconAndText(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->margin:I

    add-int/2addr v2, v1

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    const/4 v3, 0x2

    if-eqz v1, :cond_15a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_bf

    if-eq v1, v3, :cond_15a

    const/4 v4, 0x3

    if-eq v1, v4, :cond_24

    goto/16 :goto_1db

    :cond_24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x43870000  # 270.0f

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p1, v1, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    int-to-float v4, v3

    div-float/2addr v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->distance:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    int-to-float v2, v2

    sub-float/2addr v4, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v5, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_ba

    :cond_8e
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_ba
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1db

    :cond_bf
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x42b40000  # 90.0f

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p1, v1, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    int-to-float v4, v3

    div-float/2addr v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->distance:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    if-nez v0, :cond_129

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    int-to-float v2, v2

    sub-float/2addr v4, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v5, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_155

    :cond_129
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1db

    :cond_15a
    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/2addr v2, v3

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    div-int/2addr v6, v3

    int-to-float v3, v6

    sub-float v3, v5, v3

    iget v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->distance:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    if-nez v0, :cond_1ab

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    int-to-float v2, v2

    sub-float/2addr v5, v2

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1db

    :cond_1ab
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1db
    return-void
.end method

.method private final drawOrnament(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    const/4 v1, 0x2

    if-eqz v0, :cond_d7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_76

    if-eq v0, v1, :cond_d7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_14

    goto/16 :goto_13f

    :cond_14
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    int-to-float v1, v1

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_13f

    :cond_76
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    int-to-float v1, v1

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_13f

    :cond_d7
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    add-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :goto_13f
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMOrnamentPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawPrivacy(Landroid/graphics/Canvas;FFFFF)V
    .registers 10

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIcon()Landroid/graphics/Bitmap;

    move-result-object p6

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    int-to-float p6, p6

    sub-float p6, p4, p6

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p6, v0

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p5, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMEncyptTextSize()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMEncyptTextMargin()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetDrawPath(FFFF)V

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p6, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    div-float/2addr p4, v0

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v1, p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMEncyptTextMargin()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v1, p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result p2

    add-float/2addr p2, v1

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStaticLayout()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private final drawSelectedBackground(Landroid/graphics/Canvas;FFFF)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isSelected:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isFocus:Z

    if-eqz v0, :cond_2f

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d9c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    sub-float/2addr p3, v0

    add-float/2addr p4, v0

    add-float/2addr p5, v0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetDrawPath(FFFF)V

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawRect:Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tabletSelectedBgRadiusArray:[F

    sget-object p5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, p4, p5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMSelectedBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2f
    return-void
.end method

.method private final drawSomethings(Landroid/graphics/Canvas;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mShowLightningIcon:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2d

    const-string v0, "OplusTaskThumbnailView#drawSomethings("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawOrnament(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawIconAndText(Landroid/graphics/Canvas;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2d
    return-void
.end method

.method private final drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_18

    :cond_16
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_18
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private final executeContentProtectStateChangeAnimation(Z)V
    .registers 5

    const-string v0, "executeContentProtectStateChangeAnimation: reverse = "

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v0, p1, v1, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->privacyIconPaintAlpha:I

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextPaintAlpha:I

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPaintAlpha:I

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->paintAlpha:I

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->cancelContentProtectAnimation()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_58

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectionAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_56

    new-instance v1, Lcom/android/keyguardservice/d;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguardservice/d;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$executeContentProtectStateChangeAnimation$lambda$14$$inlined$doOnEnd$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$executeContentProtectStateChangeAnimation$lambda$14$$inlined$doOnEnd$1;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0xfa

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_56
    return-void

    nop

    :array_58
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final executeContentProtectStateChangeAnimation$lambda$14$lambda$12(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZLandroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updatePaintAlpha(FZ)V

    return-void
.end method

.method private final getMContentProtectBackgroundPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectBackgroundPaint$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMContentProtectIcon()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectIcon$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final getMContentProtectIconMargin()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectIconMargin$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMContentProtectSmallIcon()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectSmallIcon$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final getMContentProtectStaticLayout()Landroid/text/StaticLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectStaticLayout$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/StaticLayout;

    return-object p0
.end method

.method private final getMContentProtectTextMargin()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextMargin$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMContentProtectTextMaxWidth()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextMaxWidth$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMContentProtectTextPaint()Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextPaint$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextPaint;

    return-object p0
.end method

.method private final getMContentProtectTextSize()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextSize$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMEncyptTextMargin()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mEncyptTextMargin$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMEncyptTextSize()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mEncyptTextSize$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMExpandFoldCornerRadius()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mExpandFoldCornerRadius$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getMGridContentProtectIconMatrix()Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mGridContentProtectIconMatrix$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Matrix;

    return-object p0
.end method

.method private final getMGridCornerRadius()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mGridCornerRadius$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getMIconPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconPaint$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMNormalCornerRadius()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mNormalCornerRadius$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getMOrnamentPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mOrnamentPaint$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMPlicyTextPaint()Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPlicyTextPaint$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextPaint;

    return-object p0
.end method

.method private final getMPrivacyIcon()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPrivacyIcon$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final getMPrivacyIconPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPrivacyIconPaint$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMSelectedBackgroundPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mSelectedBackgroundPaint$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMStartupBackgroundPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mStartupBackgroundPaint$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMStaticLayout()Landroid/text/StaticLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mStaticLayout$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/StaticLayout;

    return-object p0
.end method

.method private final getMTabletCornerRadius()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mTabletCornerRadius$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getMTabletSelectedCornerRadius()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mTabletSelectedCornerRadius$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getMTextPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mTextPaint$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final isNeedSaveCanvas()Z
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mShowLightningIcon:Z

    and-int/2addr p0, v1

    return p0
.end method

.method private static final mFocusListener$lambda$0(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/view/View;Z)V
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    :cond_f
    iput-boolean p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isFocus:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "view="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", hasFocus="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isFocus:Z

    const-string v0, "OplusTaskThumbnailView"

    invoke-static {p1, p2, v0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isFocus:Z

    if-eqz p1, :cond_36

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isSelected:Z

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->playSeletedBgAnimation()V

    goto :goto_39

    :cond_36
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->stopSelectedAnimation()V

    :goto_39
    return-void
.end method

.method public static synthetic onContentProtectStateChanged$default(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZZILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onContentProtectStateChanged(ZZ)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onContentProtectStateChanged"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final playSeletedBgAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->selectedAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    const-string v0, "OplusTaskThumbnailView"

    const-string/jumbo v1, "playSeletedAnimation"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_46

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->selectedAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_24

    goto :goto_29

    :cond_24
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_29
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->selectedAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2e

    goto :goto_36

    :cond_2e
    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_36
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->selectedAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_45

    new-instance v1, Lcom/android/launcher/download/s;

    invoke-direct {v1, p0}, Lcom/android/launcher/download/s;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_45
    return-void

    :array_46
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final playSeletedBgAnimation$lambda$6$lambda$5(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMSelectedBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060809

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_39

    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06080a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_39
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMSelectedBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_4a

    const/high16 v1, 0x429a0000  # 77.0f

    goto :goto_4c

    :cond_4a
    const/high16 v1, 0x42cc0000  # 102.0f

    :goto_4c
    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final print(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;
    .registers 3

    const-string p0, "id="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wm="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_1d

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final print(Lcom/android/systemui/shared/recents/model/ThumbnailData;)Ljava/lang/String;
    .registers 6

    const/16 p0, 0x5b

    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v0, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->snapshotId:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->appearance:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_33

    :cond_32
    move-object v2, v3

    :goto_33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_47

    :cond_46
    move-object v2, v3

    :goto_47
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->orientation:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    :cond_6f
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isTranslucent:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isInGrounp:Z

    const/16 v0, 0x5d

    invoke-static {p0, p1, v0}, Ld/b;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateFrame(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->cancelLightningAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onlyDrawDimming:Z

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isSelected:Z

    return-void
.end method

.method private final resetCornerRadiusArray()V
    .registers 11

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    iget-boolean v1, v1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSecondaryTask:Z

    if-ne v1, v2, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    array-length v1, v1

    move v7, v3

    :goto_1a
    if-ge v7, v1, :cond_78

    if-eqz v0, :cond_35

    if-gt v5, v7, :cond_24

    if-ge v7, v4, :cond_24

    move v8, v2

    goto :goto_25

    :cond_24
    move v8, v3

    :goto_25
    if-eqz v8, :cond_2e

    iget-object v8, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    aput v9, v8, v7

    goto :goto_44

    :cond_2e
    iget-object v8, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    aput v9, v8, v7

    goto :goto_44

    :cond_35
    if-ge v7, v6, :cond_3e

    iget-object v8, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    aput v9, v8, v7

    goto :goto_44

    :cond_3e
    iget-object v8, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    aput v9, v8, v7

    :goto_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_47
    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    array-length v1, v1

    move v7, v3

    :goto_4b
    if-ge v7, v1, :cond_78

    if-eqz v0, :cond_66

    if-gt v5, v7, :cond_55

    if-ge v7, v4, :cond_55

    move v8, v2

    goto :goto_56

    :cond_55
    move v8, v3

    :goto_56
    if-eqz v8, :cond_5f

    iget-object v8, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    aput v9, v8, v7

    goto :goto_75

    :cond_5f
    iget-object v8, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    aput v9, v8, v7

    goto :goto_75

    :cond_66
    if-ge v7, v6, :cond_6f

    iget-object v8, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    aput v9, v8, v7

    goto :goto_75

    :cond_6f
    iget-object v8, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    aput v9, v8, v7

    :goto_75
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    :cond_78
    return-void
.end method

.method private final resetPaintAlpha()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskThumbnailView"

    const-string/jumbo v2, "resetPaintAlpha()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->privacyIconPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->paintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setLightningAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static final showLightningAnimation$lambda$10$lambda$9(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->calculateNextFrame()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusTaskThumbnailView#updateFrame("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateFrame(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private final stopSelectedAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->selectedAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->selectedAnimator:Landroid/animation/ValueAnimator;

    :cond_13
    return-void
.end method

.method private final updateLightningCorner(F)V
    .registers 8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateLightningCorner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5a

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_44

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2e

    goto :goto_6e

    :cond_2e
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    array-length v0, v0

    :goto_31
    if-ge v2, v0, :cond_6e

    if-lt v2, v4, :cond_3d

    if-le v2, v3, :cond_38

    goto :goto_3d

    :cond_38
    iget-object v5, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput p1, v5, v2

    goto :goto_41

    :cond_3d
    :goto_3d
    iget-object v5, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput v1, v5, v2

    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_44
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    array-length v0, v0

    :goto_47
    if-ge v2, v0, :cond_6e

    if-lt v2, v4, :cond_53

    if-le v2, v3, :cond_4e

    goto :goto_53

    :cond_4e
    iget-object v5, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput v1, v5, v2

    goto :goto_57

    :cond_53
    :goto_53
    iget-object v5, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput p1, v5, v2

    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_5a
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    array-length v0, v0

    :goto_5d
    if-ge v2, v0, :cond_6e

    const/4 v3, 0x4

    if-ge v2, v3, :cond_67

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput v1, v3, v2

    goto :goto_6b

    :cond_67
    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput p1, v3, v2

    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_6e
    :goto_6e
    return-void
.end method

.method private final updatePaintAlpha(FZ)V
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_42

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p2

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->privacyIconPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->paintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setLightningAlpha(F)V

    goto :goto_7d

    :cond_42
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p2

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->privacyIconPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->paintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setLightningAlpha(F)V

    :goto_7d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->forceRecalculateFullscreenRadius:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->checkAndUpdatePrivacy(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->taskBackgroundColor:I

    goto :goto_23

    :cond_1a
    if-nez p1, :cond_1e

    const/4 v1, -0x1

    goto :goto_23

    :cond_1e
    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    :goto_23
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v1, "bind(), pkg="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_45

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_45

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_46

    :cond_45
    move-object v3, v2

    :goto_46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5b

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_5b

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5c

    :cond_5b
    move-object v3, v2

    :goto_5c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", colorBg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6d

    iget v3, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6e

    :cond_6d
    move-object v3, v2

    :goto_6e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", qs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7f

    iget-boolean v3, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSupportQuickStartup:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_80

    :cond_7f
    move-object v3, v2

    :goto_80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", protect="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_90

    iget-boolean v2, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", privacy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isPrivacy:Z

    const-string v3, "QuickStep"

    const-string v4, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v3, v4}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_a1
    if-eqz p1, :cond_a8

    iget-boolean p1, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSupportQuickStartup:Z

    if-eqz p1, :cond_a8

    goto :goto_a9

    :cond_a8
    const/4 v0, 0x0

    :goto_a9
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->canShowLightningIcon(Z)V

    return-void
.end method

.method public final cancelLightningAnimation()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelLightningAnimation: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lightningAnimator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->lightningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->lightningAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_39
    return-void
.end method

.method public final drawBackgroundOnly()Z
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public drawOnCanvas(Landroid/graphics/Canvas;FFFFF)V
    .registers 16

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isPrivacy:Z

    if-eqz v0, :cond_10

    invoke-direct/range {p0 .. p5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawSelectedBackground(Landroid/graphics/Canvas;FFFF)V

    invoke-direct/range {p0 .. p6}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPrivacy(Landroid/graphics/Canvas;FFFFF)V

    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection:Z

    if-nez v0, :cond_18

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->needAnimate:Z

    if-eqz v1, :cond_25

    :cond_18
    if-eqz v0, :cond_1d

    invoke-direct/range {p0 .. p5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawSelectedBackground(Landroid/graphics/Canvas;FFFF)V

    :cond_1d
    invoke-direct/range {p0 .. p6}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawContentProtect(Landroid/graphics/Canvas;FFFFF)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->needAnimate:Z

    if-nez v0, :cond_25

    return-void

    :cond_25
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onlyDrawDimming:Z

    if-eqz v0, :cond_36

    iget-object v8, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimmingPaintAfterClearing:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    float-to-double v1, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, p5

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iput p6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCurrentCornerRadius:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawBackgroundOnly()Z

    move-result p6

    const/4 v0, 0x1

    if-nez p6, :cond_6a

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getWrapper()Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;->getClippedInsets()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_6a

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isTranslucent:Z

    if-eqz v1, :cond_86

    :cond_6a
    int-to-float v1, v0

    add-float v2, p2, v1

    add-float v3, p3, v1

    sub-float v4, p4, v1

    sub-float v1, p5, v1

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetDrawPath(FFFF)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p6, :cond_86

    invoke-direct/range {p0 .. p5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawSelectedBackground(Landroid/graphics/Canvas;FFFF)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawSomethings(Landroid/graphics/Canvas;)V

    return-void

    :cond_86
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isNeedSaveCanvas()Z

    move-result p6

    if-eqz p6, :cond_8f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_8f
    invoke-direct/range {p0 .. p5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawSelectedBackground(Landroid/graphics/Canvas;FFFF)V

    int-to-float p6, v0

    add-float v0, p2, p6

    add-float v1, p3, p6

    sub-float v2, p4, p6

    sub-float p6, p5, p6

    invoke-virtual {p0, v0, v1, v2, p6}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetDrawPath(FFFF)V

    iget-object p6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    iget-object p6, p6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    invoke-interface {p6}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->getIrregularPreviewHelper()Lcom/android/quickstep/IrregularPreviewHelper;

    move-result-object v0

    iget-object v6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/IrregularPreviewHelper;->clipIrregularCanvas(Landroid/graphics/Canvas;FFFFLcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetDrawPath(FFFF)V

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isNeedSaveCanvas()Z

    move-result p2

    if-eqz p2, :cond_ca

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_ca
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawSomethings(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getLightningAlpha()F
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public final getMCurrentCornerRadius()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCurrentCornerRadius:F

    return p0
.end method

.method public final getOnlyDrawDimming()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onlyDrawDimming:Z

    return p0
.end method

.method public final getWaitNextDraw()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->waitNextDraw:Z

    return p0
.end method

.method public final isContentProtection()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection:Z

    return p0
.end method

.method public final isPrivacy()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isPrivacy:Z

    return p0
.end method

.method public final isThumbnailTranslucent()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p0, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isTranslucent:Z

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->c()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mDarkColorObserver:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_f

    goto :goto_1c

    :cond_f
    iget-object v2, v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v0, v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2f
    return-void
.end method

.method public final onContentProtectStateChanged(ZZ)V
    .registers 7

    const-string/jumbo v0, "onContentProtectStateChanged: isContentProtection="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection:Z

    const-string v2, ", isContentProtect="

    const-string v3, ", animate="

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v0, p2, v1, v2}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection:Z

    if-ne v0, p1, :cond_1c

    return-void

    :cond_1c
    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection:Z

    iput-boolean p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->needAnimate:Z

    if-eqz p2, :cond_27

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->executeContentProtectStateChangeAnimation(Z)V

    :cond_27
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskThumbnailView"

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->reset()V

    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->c()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mDarkColorObserver:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_1c

    goto :goto_21

    :cond_1c
    iget-object v0, v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_21
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2b
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->waitNextDraw:Z

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_18

    const-string v3, "OplusTaskThumbnailView"

    const-string/jumbo v4, "onDraw(), waiting draw"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "OplusTaskThumbnailView#onDraw#wait"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_18
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->calculateTaskFullscreenRadius()V

    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v3, v3, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->calculateCornerRadius()F

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v4, v4, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v6, v4

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v7, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/RectF;->right:F

    add-float v8, v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float v9, v4, v3

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawOnCanvas(Landroid/graphics/Canvas;FFFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v0, :cond_5c

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->waitNextDraw:Z

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5c
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v2

    if-ne v2, v1, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    move v2, v0

    :goto_13
    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_3b

    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_35

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2f

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2f
    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isSelected:Z

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->stopSelectedAnimation()V

    return v1

    :cond_35
    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isSelected:Z

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->playSeletedBgAnimation()V

    return v1

    :cond_3b
    :goto_3b
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onRotationChanged(I)V
    .registers 5

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    if-eq v0, p1, :cond_e

    const-string/jumbo v0, "onRotationChanged: rotation="

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_e
    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final resetDrawPath(FFFF)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p0, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public final setContentProtection(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection:Z

    return-void
.end method

.method public final setFullscreenProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->fullscreenProgress:F

    return-void
.end method

.method public final setLightningAlpha(F)V
    .registers 5

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStartupBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v2, 0xe6

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMOrnamentPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setOnlyDrawDimming(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onlyDrawDimming:Z

    return-void
.end method

.method public final setPrivacy(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isPrivacy:Z

    return-void
.end method

.method public setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V
    .registers 9

    const-string/jumbo v0, "setThumbnail(), data: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    invoke-direct {p0, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->print(Lcom/android/systemui/shared/recents/model/ThumbnailData;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_f
    move-object v2, v1

    :goto_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mData null ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    const-string v3, ", refreshNow="

    const-string v4, ", task: "

    invoke-static {v0, v2, v3, p3, v4}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_2d

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->print(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    :cond_2d
    move-object v2, v1

    :goto_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_3e

    invoke-direct {p0, v2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->print(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v1

    :cond_3e
    const-string v2, "QuickStep"

    const-string v3, "OplusTaskThumbnailView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_48

    goto :goto_50

    :cond_48
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    iput-boolean v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isInGrounp:Z

    :goto_50
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_5b

    if-nez p2, :cond_5b

    sget-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    if-eqz v0, :cond_5b

    return-void

    :cond_5b
    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    return-void
.end method

.method public final setWaitNextDraw(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->waitNextDraw:Z

    return-void
.end method

.method public final showLightningAnimation()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mShowLightningIcon:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showLightningAnimation: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->cancelLightningAnimation()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_56

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->lightningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_54

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$showLightningAnimation$1$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$showLightningAnimation$1$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_54
    return-void

    nop

    :array_56
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final updateBackgroundAlpha(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateContentProtectStateImmediate(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onContentProtectStateChanged(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateFrame(I)V
    .registers 5

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFrame: frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const/16 v0, 0x63

    const/4 v1, 0x0

    if-le p1, v0, :cond_2a

    move p1, v1

    :cond_2a
    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_5e

    const/4 v0, -0x1

    const-string v2, "context"

    if-eq p1, v0, :cond_4a

    sget-object p1, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->INSTANCE:Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$INSTANCE;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_5f

    :cond_4a
    sget-object p1, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->INSTANCE:Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$INSTANCE;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;

    invoke-virtual {p1}, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_5f

    :cond_5e
    const/4 p1, 0x0

    :goto_5f
    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_70

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_70
    return-void
.end method

.method public updateThumbnailMatrix()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    const-string/jumbo v2, "taskView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->updateThumbnailRotation(Lcom/android/systemui/shared/recents/model/ThumbnailData;Lcom/android/quickstep/views/TaskView;)V

    invoke-super {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailMatrix()V

    return-void
.end method

.method public updateThumbnailPaintFilter()V
    .registers 6

    iget v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    const/16 v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimmingPaintAfterClearing:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_40

    :cond_28
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    iget v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimColor:I

    iget v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    iget v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlphaMultiplier:F

    mul-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_40
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
