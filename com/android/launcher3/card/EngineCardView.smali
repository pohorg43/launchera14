.class public abstract Lcom/android/launcher3/card/EngineCardView;
.super Lcom/android/launcher3/card/LauncherCardView;
.source ""

# interfaces
.implements Lpantanal/app/OnLoadCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/EngineCardView$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEngineCardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineCardView.kt\ncom/android/launcher3/card/EngineCardView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,501:1\n1#2:502\n31#3:503\n94#3,14:504\n31#3:518\n94#3,14:519\n31#3:533\n94#3,14:534\n*S KotlinDebug\n*F\n+ 1 EngineCardView.kt\ncom/android/launcher3/card/EngineCardView\n*L\n330#1:503\n330#1:504,14\n355#1:518\n355#1:519,14\n412#1:533\n412#1:534,14\n*E\n"
    }
.end annotation


# static fields
.field private static final CARD_ANIMATION_SCALE_START:F = 0.8f

.field public static final Companion:Lcom/android/launcher3/card/EngineCardView$Companion;

.field public static final FRAME_DELAY:J = 0x10L

.field private static final INIT_ANIM_DURATION:J = 0x190L

.field private static final PICTURE_DRAW_TIME_OUT:J = 0xbb8L

.field public static final RESET_DRAW_PICTURE_DELAY_FRAMES:I = 0x10

.field private static final TAG:Ljava/lang/String; = "LauncherCardView-Engine"


# instance fields
.field private engine:Lcom/oplus/card/helper/EngineManner;

.field private initAnimator:Landroid/animation/AnimatorSet;

.field private isShowDefaultView:Z

.field private final mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

.field private mDrawPicForDrag:Z

.field private mDrawWithPic:Z

.field private final mResetDrawPicFlagForCache:Ljava/lang/Runnable;

.field private mViewScreenshot:Landroid/graphics/Picture;

.field private final shotPaint$delegate:Lh4/f;

.field private final shotPath$delegate:Lh4/f;

.field private shouldPlayCardAnimator:Z

.field private smartCardAnimEnd:Z

.field private smartView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/EngineCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/EngineCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/EngineCardView;->Companion:Lcom/android/launcher3/card/EngineCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/DragListenerHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    new-instance p1, Landroidx/core/widget/a;

    invoke-direct {p1, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPaint$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPaint$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPaint$delegate:Lh4/f;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPath$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPath$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPath$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/DragListenerHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    new-instance p1, Lcom/android/launcher3/card/e;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/card/e;-><init>(Lcom/android/launcher3/card/EngineCardView;I)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPaint$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPaint$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPaint$delegate:Lh4/f;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPath$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPath$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPath$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/DragListenerHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    new-instance p1, Landroidx/core/app/a;

    invoke-direct {p1, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPaint$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPaint$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPaint$delegate:Lh4/f;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPath$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPath$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPath$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/DragListenerHelper;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    new-instance p2, Lcom/android/launcher3/card/d;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/card/d;-><init>(Lcom/android/launcher3/card/EngineCardView;I)V

    iput-object p2, p0, Lcom/android/launcher3/card/EngineCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPaint$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPaint$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPaint$delegate:Lh4/f;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPath$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPath$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPath$delegate:Lh4/f;

    return-void
.end method

.method public static final synthetic access$getSmartView$p(Lcom/android/launcher3/card/EngineCardView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$setInitAnimator$p(Lcom/android/launcher3/card/EngineCardView;Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->initAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$setSmartCardAnimEnd$p(Lcom/android/launcher3/card/EngineCardView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->smartCardAnimEnd:Z

    return-void
.end method

.method private static final cacheCardElement$lambda$4(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 11

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    const-string v2, "itemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/EngineManner;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/oplus/card/helper/EngineManner;->isSeedCardEngine()Z

    move-result v3

    if-ne v3, v4, :cond_23

    move v3, v4

    goto :goto_24

    :cond_23
    move v3, v5

    :goto_24
    const-string v6, "LauncherCardView-Engine"

    const-string v7, "Card"

    if-eqz v3, :cond_5d

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getCardModel()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v3

    const/4 v8, 0x0

    if-eqz v3, :cond_50

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardScreenshot()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-static {v3}, Lcom/android/common/util/BitmapUtils;->isTransparent(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-eqz v9, :cond_47

    const-string v3, "cacheCardElement pic is isTransparent"

    invoke-static {v7, v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :cond_47
    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->getRadiusArr()[F

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/common/util/BitmapUtils;->bitmapToPicture(Landroid/graphics/Bitmap;[F)Landroid/graphics/Picture;

    move-result-object v3

    move-object v8, v3

    :cond_50
    :goto_50
    if-eqz v8, :cond_5d

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v8}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cacheCardPic(Lcom/android/launcher3/card/LauncherCardInfo;Landroid/graphics/Picture;)V

    goto :goto_5e

    :cond_5d
    move v4, v5

    :goto_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheCardElement isCachedSuccess: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", engine type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v1}, Lcom/android/launcher3/card/EngineMannerFactory;->getCategory(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/EngineCardView;->showLoadingIfNeed$lambda$6$lambda$5(Lcom/android/launcher3/card/EngineCardView;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/EngineCardView;->cacheCardElement$lambda$4(Lcom/android/launcher3/card/EngineCardView;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator$lambda$11$lambda$10(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/card/EngineCardView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator$lambda$21$lambda$16(Lcom/android/launcher3/card/EngineCardView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/EngineCardView;->onUpdateData$lambda$27(Lcom/android/launcher3/card/EngineCardView;)V

    return-void
.end method

.method private static final mResetDrawPicFlagForCache$lambda$0(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mResetDrawPicFlagForCache run "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Engine"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/EngineCardView;->markDrawWithPic(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->cacheCardElement()V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/EngineCardView;->showLoadingIfNeed$lambda$6(Lcom/android/launcher3/card/EngineCardView;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator$lambda$9(Lcom/android/launcher3/card/EngineCardView;)V

    return-void
.end method

.method private static final onUpdateData$lambda$27(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->cacheCardElement()V

    return-void
.end method

.method public static synthetic p(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator$lambda$21$lambda$19(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final playSmartCardAnimator$lambda$11$lambda$10(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private static final playSmartCardAnimator$lambda$21$lambda$16(Lcom/android/launcher3/card/EngineCardView;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private static final playSmartCardAnimator$lambda$21$lambda$19(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_9

    goto :goto_1c

    :cond_9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1c
    return-void
.end method

.method private static final playSmartCardAnimator$lambda$9(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/EngineCardView;->mResetDrawPicFlagForCache$lambda$0(Lcom/android/launcher3/card/EngineCardView;)V

    return-void
.end method

.method private static final showLoadingIfNeed$lambda$6(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/a;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final showLoadingIfNeed$lambda$6$lambda$5(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showLoadingIfNeed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-Engine"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/EngineCardView;->mDrawWithPic:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/EngineCardView;->markDrawWithPic(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2c
    return-void
.end method


# virtual methods
.method public cacheCardElement()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->isEnable()Z

    move-result v0

    const-string v1, "LauncherCardView-Engine"

    const-string v2, "Card"

    if-nez v0, :cond_12

    const-string p0, "cacheCardElement skip for is not Large Display Device"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->shouldShowCard()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string p0, "cacheCardElement skip for InVisible page"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/card/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/card/c;-><init>(Lcom/android/launcher3/card/EngineCardView;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearCardCachedElement()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    const-string v2, "itemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->clearSpecifiedCardCaches(Lcom/android/launcher3/card/LauncherCardInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearCachedCardPicture, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", caller: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Card"

    const-string v1, "LauncherCardView-Engine"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableCacheView(Lcom/oplus/card/manager/domain/model/CardModel;Z)V
    .registers 8
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->isEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_89

    if-nez p2, :cond_12

    goto/16 :goto_89

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_77

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object v2

    if-eqz v2, :cond_77

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher3/card/EngineMannerFactory;->getCategory(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object p1

    if-eqz p1, :cond_32

    invoke-interface {p1}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object p1

    goto :goto_33

    :cond_32
    move-object p1, v0

    :goto_33
    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_40

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    :cond_40
    if-eqz v0, :cond_45

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_45
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/EngineCardView;->markDrawWithPic(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCacheView category："

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Card"

    const-string v2, "LauncherCardView-Engine"

    invoke-static {v0, v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    :cond_77
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->showMultiLandHoldView()Z

    move-result p1

    if-nez p1, :cond_88

    iget-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    if-eqz p1, :cond_88

    if-nez v0, :cond_88

    iput-boolean v1, p0, Lcom/android/launcher3/card/EngineCardView;->shouldPlayCardAnimator:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->showLoadingIfNeed()V

    :cond_88
    return-void

    :cond_89
    :goto_89
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->showMultiLandHoldView()Z

    move-result p1

    if-nez p1, :cond_98

    iget-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    if-eqz p1, :cond_98

    iput-boolean v1, p0, Lcom/android/launcher3/card/EngineCardView;->shouldPlayCardAnimator:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->showLoadingIfNeed()V

    :cond_98
    return-void
.end method

.method public final getCard()Lpantanal/app/Card;
    .registers 1

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getCardModel()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object p0

    return-object p0
.end method

.method public final getEngine()Lcom/oplus/card/helper/EngineManner;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/EngineManner;

    return-object p0
.end method

.method public getInitAnimator()Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->initAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public final getMDragListener()Lcom/android/launcher3/card/utils/DragListenerHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    return-object p0
.end method

.method public final getMDrawPicForDrag()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/EngineCardView;->mDrawPicForDrag:Z

    return p0
.end method

.method public final getMDrawWithPic()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/EngineCardView;->mDrawWithPic:Z

    return p0
.end method

.method public final getMResetDrawPicFlagForCache()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->mResetDrawPicFlagForCache:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getMViewScreenshot()Landroid/graphics/Picture;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->mViewScreenshot:Landroid/graphics/Picture;

    return-object p0
.end method

.method public final getShotPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->shotPaint$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getShotPath()Landroid/graphics/Path;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->shotPath$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;

    return-object p0
.end method

.method public getSize()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public getSmartView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    return-object p0
.end method

.method public handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleGetViewCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_19

    const-string/jumbo v1, "success"

    goto :goto_1d

    :cond_19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", smartView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_40

    :cond_3f
    move-object v2, v1

    :goto_40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Card"

    const-string v3, "LauncherCardView-Engine"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v4

    const-string v5, "it.dragController"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    if-eqz v5, :cond_a7

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v4

    if-nez v4, :cond_a7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "handleGetViewCallback: isDragging, handle later. return"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    move-result v1

    if-nez v1, :cond_9a

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_9a
    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/utils/DragListenerHelper;->setContent(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/utils/DragListenerHelper;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/card/utils/DragListenerHelper;->setLoadCode(I)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_a7
    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    if-eqz v0, :cond_b8

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_b8

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_b8
    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/EngineManner;

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_c6

    invoke-virtual {v0, p2}, Lcom/oplus/card/helper/EngineManner;->isErrorCode(I)Z

    move-result p2

    if-nez p2, :cond_c6

    move p2, v2

    goto :goto_c7

    :cond_c6
    move p2, v4

    :goto_c7
    if-eqz p2, :cond_11c

    iget-object p2, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    if-eq p2, p1, :cond_11c

    if-eqz p1, :cond_11c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "handleGetViewCallback: addView"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_f2

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    :cond_f2
    if-eqz v1, :cond_f7

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->setSmartView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/EngineManner;

    if-eqz p1, :cond_10b

    invoke-virtual {p1}, Lcom/oplus/card/helper/EngineManner;->isQuickCardEngine()Z

    move-result p1

    if-ne p1, v2, :cond_10b

    goto :goto_10c

    :cond_10b
    move v2, v4

    :goto_10c
    if-eqz v2, :cond_119

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getCardModel()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->cacheInstantCard()V

    :cond_119
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_11c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public initCardAfterInflate()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public isLauncherHost()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isTitleCard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isViewScreenshotValid()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->mViewScreenshot:Landroid/graphics/Picture;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public markDrawWithPic(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDrawWithPic:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/EngineCardView;->mDrawPicForDrag:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/EngineManner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/oplus/card/helper/EngineManner;->isSeedCardEngine()Z

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    if-eqz v1, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->mViewScreenshot:Landroid/graphics/Picture;

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    goto :goto_2a

    :cond_23
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_2a

    :cond_27
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :goto_2a
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onError: code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Card"

    const-string v1, "LauncherCardView-Engine"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/card/EngineCardView;->handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;

    return-void
.end method

.method public onPreview(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "onPreview: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Card"

    const-string v0, "LauncherCardView-Engine"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/view/View;)V
    .registers 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSuccess: view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Engine"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/card/EngineCardView;->handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;

    return-void
.end method

.method public onUpdateData()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/card/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/card/e;-><init>(Lcom/android/launcher3/card/EngineCardView;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onVisibilityChange(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->setVisibility(I)V

    return-void
.end method

.method public playInitAnimator()V
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher3/card/EngineCardView;->shouldPlayCardAnimator:Z

    if-nez v0, :cond_e

    const-string p0, "Card"

    const-string v0, "LauncherCardView-Engine"

    const-string v1, "it\'s need to play card initial animation."

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_6d

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/card/EngineCardView;->initAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const-string v1, "it.deviceProfile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v1, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_6e

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v4, v2, [F

    const v5, 0x3f4ccccd  # 0.8f

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/card/EngineCardView;->initAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_6d

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    aput-object v0, v2, v5

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x190

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/card/EngineCardView$playInitAnimator$lambda$24$lambda$23$$inlined$doOnEnd$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/EngineCardView$playInitAnimator$lambda$24$lambda$23$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_6d
    return-void

    :array_6e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public playSmartCardAnimator(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "newView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V
    .registers 13

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "LauncherCardView-Engine"

    const-string v2, "Card"

    const/4 v3, 0x0

    if-eqz v0, :cond_2b

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "playSmartCardAnimator: no need anim for newView = oldView"

    invoke-static {v2, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher3/card/d;

    invoke-direct {p1, p0, v3}, Lcom/android/launcher3/card/d;-><init>(Lcom/android/launcher3/card/EngineCardView;I)V

    const/16 p0, 0x10

    invoke-static {p1, p0}, Lcom/oplus/quickstep/utils/ChoreographerUtil;->postFrameCallbackDelay(Ljava/lang/Runnable;I)V

    return-void

    :cond_2b
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_85

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string v5, "it.dragLayer"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_3e

    goto :goto_42

    :cond_3e
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    :goto_42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_85

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_4d
    const/4 v6, -0x1

    if-ge v6, v5, :cond_85

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/views/ListenerView;

    if-eqz v6, :cond_82

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "playSmartCardAnimator: but ListenerView is showing."

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.views.ListenerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/views/ListenerView;

    new-instance v1, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ListenerView;->addCustomCloseListener(Ljava/lang/Runnable;)V

    return-void

    :cond_82
    add-int/lit8 v5, v5, -0x1

    goto :goto_4d

    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playSmartCardAnimator: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", oldView = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1c5

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b1

    move-object v1, p1

    goto :goto_b2

    :cond_b1
    move-object v1, v2

    :goto_b2
    instance-of v5, v1, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz v5, :cond_11e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v7, :cond_c1

    check-cast v6, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_c2

    :cond_c1
    move-object v6, v2

    :goto_c2
    if-eqz v6, :cond_c9

    iget-boolean v6, v6, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    if-ne v6, v4, :cond_c9

    goto :goto_ca

    :cond_c9
    move v4, v3

    :goto_ca
    if-eqz v4, :cond_11e

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getCard()Lpantanal/app/Card;

    move-result-object v4

    instance-of v6, v4, Lpantanal/app/AppCard;

    if-eqz v6, :cond_d7

    check-cast v4, Lpantanal/app/AppCard;

    goto :goto_d8

    :cond_d7
    move-object v4, v2

    :goto_d8
    if-eqz v4, :cond_11e

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "null cannot be cast to non-null type com.android.launcher3.card.LauncherCardInfo"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v8, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v7, v8}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;->changeCardSizeToString(II)Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_107

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    const-string v9, "card_width"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_107
    if-eqz p1, :cond_112

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    const-string v9, "card_height"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_112
    const-string v8, "card_size"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    if-eqz v7, :cond_11e

    invoke-interface {v4, v7, v6}, Lpantanal/app/AppCard;->onSizeChange(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_11e
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    if-eqz v5, :cond_164

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_164

    new-array v0, v6, [F

    fill-array-data v0, :array_1c6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v5, Lcom/android/keyguardservice/b;

    invoke-direct {v5, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v5, "alphaAnimator"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v1, :cond_153

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    goto :goto_154

    :cond_153
    move-object v5, v2

    :goto_154
    instance-of v7, v5, Landroid/animation/Animator;

    if-eqz v7, :cond_15b

    check-cast v5, Landroid/animation/Animator;

    goto :goto_15c

    :cond_15b
    move-object v5, v2

    :goto_15c
    if-eqz v5, :cond_161

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    :cond_161
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_164
    new-array v0, v6, [F

    fill-array-data v0, :array_1ce

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v5, Lcom/android/launcher3/card/b;

    invoke-direct {v5, p2, v3}, Lcom/android/launcher3/card/b;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    instance-of p1, p1, Lcom/android/launcher3/card/DefaultCardView;

    if-nez p1, :cond_183

    instance-of p1, p2, Lcom/android/launcher3/card/DefaultCardView;

    if-nez p1, :cond_183

    const-wide/16 v5, 0x0

    goto :goto_190

    :cond_183
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getSmartViewAnimDuration()Ljava/lang/Long;

    move-result-object p1

    const-string v0, "getSmartViewAnimDuration()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    :goto_190
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    instance-of p1, p2, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz p1, :cond_19d

    sget-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1a2

    :cond_19d
    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_1a2
    if-eqz v1, :cond_1ac

    new-instance v0, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$lambda$21$$inlined$doOnEnd$2;-><init>(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1ac
    if-eqz p1, :cond_1b1

    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/card/DefaultCardView;

    :cond_1b1
    if-nez v2, :cond_1b4

    goto :goto_1b7

    :cond_1b4
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1b7
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_1c5

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    :cond_1c5
    return-void

    :array_1c6
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_1ce
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setDrawPicForDrag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDrawPicForDrag:Z

    return-void
.end method

.method public final setEngine(Lcom/oplus/card/helper/EngineManner;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/EngineManner;

    return-void
.end method

.method public final setMDrawPicForDrag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDrawPicForDrag:Z

    return-void
.end method

.method public final setMDrawWithPic(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDrawWithPic:Z

    return-void
.end method

.method public final setMViewScreenshot(Landroid/graphics/Picture;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mViewScreenshot:Landroid/graphics/Picture;

    return-void
.end method

.method public setScaleToFit(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->initAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    if-eqz v1, :cond_11

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->setScaleToFit(F)V

    :cond_11
    return-void
.end method

.method public setSmartView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->onVisibilityChange(I)V

    return-void
.end method

.method public shouldShowCard()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2, p0}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p0

    goto :goto_24

    :cond_23
    move p0, v1

    :goto_24
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_44

    const-string/jumbo v0, "resumeCard but card is NOT at this page, atPage = "

    const-string v2, ", currentPage = "

    invoke-static {v0, p0, v2, v1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Card"

    const-string v1, "LauncherCardView-Engine"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_44
    const/4 p0, 0x1

    return p0
.end method

.method public showLoadingIfNeed()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    if-nez v0, :cond_49

    const-string v0, "Card"

    const-string v1, "LauncherCardView-Engine"

    const-string/jumbo v2, "showLoadingIfNeed:"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.card.DefaultCardView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/card/DefaultCardView;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->setRadius(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/launcher3/card/c;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/card/c;-><init>(Lcom/android/launcher3/card/EngineCardView;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->initial(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    iget-boolean v1, p0, Lcom/android/launcher3/card/EngineCardView;->shouldPlayCardAnimator:Z

    if-nez v1, :cond_49

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/card/EngineCardView;->shouldPlayCardAnimator:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    :cond_49
    return-void
.end method
