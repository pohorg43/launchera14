.class public final Lcom/android/launcher3/card/TitleCardView;
.super Lcom/android/launcher3/card/CommonCardView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/TitleCardView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/TitleCardView$Companion;

.field private static final TAG:Ljava/lang/String; = "LauncherCardView-Title"


# instance fields
.field private final categoryChangeHelper:Lcom/oplus/card/helper/CategoryChangeHelper;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

.field private mMaskBitmapPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mSaveLayoutCount:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/TitleCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/TitleCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/TitleCardView;->Companion:Lcom/android/launcher3/card/TitleCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/CardNameHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mMaskBitmapPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Lcom/oplus/card/helper/CategoryChangeHelper;

    invoke-direct {p1, p0}, Lcom/oplus/card/helper/CategoryChangeHelper;-><init>(Lcom/android/launcher3/card/TitleCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->categoryChangeHelper:Lcom/oplus/card/helper/CategoryChangeHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/CardNameHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mMaskBitmapPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Lcom/oplus/card/helper/CategoryChangeHelper;

    invoke-direct {p1, p0}, Lcom/oplus/card/helper/CategoryChangeHelper;-><init>(Lcom/android/launcher3/card/TitleCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->categoryChangeHelper:Lcom/oplus/card/helper/CategoryChangeHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/CardNameHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mMaskBitmapPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Lcom/oplus/card/helper/CategoryChangeHelper;

    invoke-direct {p1, p0}, Lcom/oplus/card/helper/CategoryChangeHelper;-><init>(Lcom/android/launcher3/card/TitleCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->categoryChangeHelper:Lcom/oplus/card/helper/CategoryChangeHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/CardNameHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mMaskBitmapPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Lcom/oplus/card/helper/CategoryChangeHelper;

    invoke-direct {p1, p0}, Lcom/oplus/card/helper/CategoryChangeHelper;-><init>(Lcom/android/launcher3/card/TitleCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->categoryChangeHelper:Lcom/oplus/card/helper/CategoryChangeHelper;

    return-void
.end method

.method public static final synthetic access$getMCardNameHelper$p(Lcom/android/launcher3/card/TitleCardView;)Lcom/android/launcher3/card/utils/CardNameHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    return-object p0
.end method

.method private final createClipSmoothRoundBitmap()Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_3a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-gtz v0, :cond_d

    goto :goto_3a

    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    int-to-float p0, p0

    invoke-virtual {v3, v4, p0}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0

    :cond_3a
    :goto_3a
    const-string p0, "LauncherCardView-Title"

    const-string v0, "createClipSmoothRoundBitmap  bitmap is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final onCardCategoryGet$lambda$8$lambda$7(Lcom/android/launcher3/card/TitleCardView;I)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->categoryChangeHelper:Lcom/oplus/card/helper/CategoryChangeHelper;

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/CategoryChangeHelper;->onCardCategoryChange(I)V

    return-void
.end method

.method private static final playSmartCardAnimator$lambda$6(Lcom/android/launcher3/card/TitleCardView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMResetDrawPicFlagForCache()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final refreshCardName(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 5

    if-nez p1, :cond_c

    const-string p0, "Card"

    const-string p1, "LauncherCardView-Title"

    const-string v0, "mCardConfig is null"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getIdentification()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "theme_card"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_2c

    :cond_2b
    move-object p1, v1

    :goto_2c
    if-eqz p1, :cond_30

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_30
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    :cond_35
    invoke-virtual {p1, v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardNameFromConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_39
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/TitleCardView;->setCardNameAndUpdateDb(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method public static synthetic u(Lcom/android/launcher3/card/TitleCardView;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/TitleCardView;->onCardCategoryGet$lambda$8$lambda$7(Lcom/android/launcher3/card/TitleCardView;I)V

    return-void
.end method

.method public static synthetic v(Lcom/android/launcher3/card/TitleCardView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/TitleCardView;->playSmartCardAnimator$lambda$6(Lcom/android/launcher3/card/TitleCardView;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    int-to-float p0, p0

    invoke-static {p1, p0}, Lcom/android/launcher3/card/LauncherCardUtil;->clipCardView(Landroid/view/View;F)V

    return-void
.end method

.method public clipSmoothRoundCorner(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/TitleCardView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/launcher3/card/TitleCardView;->mMaskBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/card/TitleCardView;->mMaskBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1f
    iget p0, p0, Lcom/android/launcher3/card/TitleCardView;->mSaveLayoutCount:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    if-eqz p1, :cond_11

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher3/card/TitleCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/TitleCardView;->mSaveLayoutCount:I

    :cond_11
    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getDrawTitleFlgWhenDrag()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_29
    return-void
.end method

.method public getCardName()Lcom/android/launcher3/BubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p0

    return-object p0
.end method

.method public getRadiusArr()[F
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_f

    iget v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    int-to-float v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    return-object v1
.end method

.method public handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;->handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/widget/TextView;->bringToFront()V

    :cond_15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->init(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method

.method public initCardAfterInflate()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/card/EngineCardView;->initCardAfterInflate()V

    const v0, 0x7f0a016b

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/card/utils/CardNameHelper;->initCardName(Lcom/android/launcher3/OplusBubbleTextView;Lcom/android/launcher3/Launcher;)V

    :cond_1e
    return-void
.end method

.method public isLauncherHost()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isShowCardName()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isTitleCard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onCardCategoryGet(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCardCategoryGet category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Title"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    if-eq v1, p1, :cond_2e

    new-instance v1, Landroidx/core/content/res/c;

    invoke-direct {v1, p0, p1}, Landroidx/core/content/res/c;-><init>(Lcom/android/launcher3/card/TitleCardView;I)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2e
    iput p1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_3f
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/card/CommonCardView;->onLayout(ZIIII)V

    iget-object p2, p0, Lcom/android/launcher3/card/TitleCardView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_9

    if-eqz p1, :cond_14

    :cond_9
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    invoke-direct {p0}, Lcom/android/launcher3/card/TitleCardView;->createClipSmoothRoundBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/TitleCardView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_14
    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/card/utils/CardNameHelper;->measureCardName(Lcom/android/launcher3/Launcher;)V

    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;->onMeasure(II)V

    return-void
.end method

.method public playSmartCardAnimator(Landroid/view/View;)V
    .registers 7

    const-string/jumbo v0, "newView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1e

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1b

    instance-of v4, v3, Lcom/android/launcher3/BubbleTextView;

    if-nez v4, :cond_1b

    move-object v1, v3

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_6c

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    const-string v3, "itemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->checkPictureValid(Lcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result v0

    if-eqz v0, :cond_6c

    instance-of p1, v1, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz p1, :cond_61

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "playSmartCardAnimator: removeDefaultCardView"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherCardView-Title"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_61
    new-instance p1, Landroidx/core/widget/b;

    invoke-direct {p1, p0}, Landroidx/core/widget/b;-><init>(Lcom/android/launcher3/card/TitleCardView;)V

    const/16 p0, 0x10

    invoke-static {p1, p0}, Lcom/oplus/quickstep/utils/ChoreographerUtil;->postFrameCallbackDelay(Ljava/lang/Runnable;I)V

    return-void

    :cond_6c
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public refreshCardContentByConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getCardConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-eq v0, p1, :cond_e

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/TitleCardView;->refreshCardName(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    :cond_e
    invoke-super {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->refreshCardContentByConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    return-void
.end method

.method public resumeCard(ZZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->shouldShowCard()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;->resumeCard(ZZ)V

    :cond_9
    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    return-void
.end method

.method public setCardNameAndUpdateDb(Ljava/lang/String;)V
    .registers 13

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    const-string v1, "LauncherCardView-Title"

    const-string v2, "Card"

    if-nez v0, :cond_10

    const-string p0, "cardInfo is null"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v3, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v4

    :goto_1f
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "setCardNameAndUpdateDb oldTitle = "

    const-string v6, ",newTitle = "

    invoke-static {v5, v3, v6, p1}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_46
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    if-eqz v5, :cond_61

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v6, Lr7/v;->a:Lm7/b2;

    new-instance v8, Lcom/android/launcher3/card/TitleCardView$setCardNameAndUpdateDb$1;

    invoke-direct {v8, p0, p1, v4}, Lcom/android/launcher3/card/TitleCardView$setCardNameAndUpdateDb$1;-><init>(Lcom/android/launcher3/card/TitleCardView;Ljava/lang/String;Ll4/d;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_61
    return-void
.end method

.method public setTextVisible(Z)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_23

    sget-object p1, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/common/util/FontManager;

    iget p1, p1, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-nez p1, :cond_19

    move p1, v0

    goto :goto_1a

    :cond_19
    move p1, v1

    :goto_1a
    if-nez p1, :cond_23

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    :cond_2f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/card/LauncherCardView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "{alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "buffer.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public updateTextSize(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    const-string v0, "launcher.deviceProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->mCardNameHelper:Lcom/android/launcher3/card/utils/CardNameHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/utils/CardNameHelper;->getCardName()Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/4 v0, 0x0

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1d
    return-void
.end method
