.class public Lcom/android/launcher3/card/CommonCardView;
.super Lcom/android/launcher3/card/EngineCardView;
.source ""

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/CommonCardView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/card/EngineCardView;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonCardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonCardView.kt\ncom/android/launcher3/card/CommonCardView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,715:1\n1#2:716\n252#3:717\n*S KotlinDebug\n*F\n+ 1 CommonCardView.kt\ncom/android/launcher3/card/CommonCardView\n*L\n664#1:717\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/CommonCardView$Companion;

.field private static final TAG:Ljava/lang/String; = "LauncherCardView-Common"


# instance fields
.field private cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

.field private cardConfigChange:Z

.field private cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

.field private keepResumedMark:Z

.field private reloadTask:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final renderFailRetry$delegate:Lh4/f;

.field private serviceInfo:Lpantanal/decision/ServiceInfo;

.field private unsubscribedMark:Z

.field private final useNoPermissionHelper$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/CommonCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/CommonCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/CommonCardView;->Companion:Lcom/android/launcher3/card/CommonCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/EngineCardView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->renderFailRetry$delegate:Lh4/f;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->useNoPermissionHelper$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->renderFailRetry$delegate:Lh4/f;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->useNoPermissionHelper$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/EngineCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->renderFailRetry$delegate:Lh4/f;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->useNoPermissionHelper$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/EngineCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->renderFailRetry$delegate:Lh4/f;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->useNoPermissionHelper$delegate:Lh4/f;

    return-void
.end method

.method private final applyDefaultLayoutParams(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final getRenderFailRetry()Lcom/android/launcher3/card/RenderFailRetry;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->renderFailRetry$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/RenderFailRetry;

    return-object p0
.end method

.method private static final loadCard$lambda$6$lambda$5(Lcom/android/launcher3/card/CommonCardView;Lpantanal/app/bean/PantanalUIData;Ljava/lang/Boolean;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->loadCardInner(Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

.method private final loadCardInner(Lpantanal/app/bean/PantanalUIData;)V
    .registers 5

    const-string v0, "loadCardInner: engine = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", card = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getCard()Lpantanal/app/Card;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Common"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/widget/b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/card/CommonCardView;Lpantanal/app/bean/PantanalUIData;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_50

    :cond_3d
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getCard()Lpantanal/app/Card;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {v0, p1}, Lcom/oplus/card/helper/EngineManner;->encapsulateBundle(Lpantanal/app/bean/PantanalUIData;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Lpantanal/app/IPantanalService;->load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V

    :cond_50
    :goto_50
    return-void
.end method

.method private static final loadCardInner$lambda$9(Lcom/android/launcher3/card/CommonCardView;Lpantanal/app/bean/PantanalUIData;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getCard()Lpantanal/app/Card;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, p1}, Lcom/oplus/card/helper/EngineManner;->encapsulateBundle(Lpantanal/app/bean/PantanalUIData;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Lpantanal/app/IPantanalService;->load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V

    :cond_19
    return-void
.end method

.method private static final loadInstantCard$lambda$12(Lcom/android/launcher3/card/CommonCardView;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getCard()Lpantanal/app/Card;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, p1}, Lcom/oplus/card/helper/EngineManner;->encapsulateBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Lpantanal/app/IPantanalService;->load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V

    :cond_19
    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/card/CommonCardView;Lpantanal/app/bean/PantanalUIData;Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;->loadCard$lambda$6$lambda$5(Lcom/android/launcher3/card/CommonCardView;Lpantanal/app/bean/PantanalUIData;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final resumeCard(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/card/CommonCardView;->resumeCard(ZZ)V

    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/card/CommonCardView;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->loadInstantCard$lambda$12(Lcom/android/launcher3/card/CommonCardView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/card/CommonCardView;Lpantanal/app/bean/PantanalUIData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->loadCardInner$lambda$9(Lcom/android/launcher3/card/CommonCardView;Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

.method private final updateCardVisibleRect()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCardVisibleRect:  mCardBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Common"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    const-string v1, "mCardBounds"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oplus/card/helper/EngineManner;->setCardVisibleRect(Landroid/graphics/Rect;)V

    goto :goto_79

    :cond_3b
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v3

    const-string v4, "itemInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/android/launcher3/card/LauncherCardUtil;->getLargeDeviceCardRectBounds(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher/Launcher;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateCardVisibleRect: getLargeDeviceCardRectBounds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object p0

    if-eqz p0, :cond_79

    invoke-virtual {p0, v0}, Lcom/oplus/card/helper/EngineManner;->setCardVisibleRect(Landroid/graphics/Rect;)V

    :cond_79
    :goto_79
    return-void
.end method


# virtual methods
.method public addNoPermissionView()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->noPermissionViewShowing()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/NoPermissionHelper;->addOrRemoveView(Z)V

    :cond_e
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMDrawWithPic()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    const-string v2, "itemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->tryGetCachePicture(Lcom/android/launcher3/card/LauncherCardInfo;)Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_50

    const-string v1, "draw with Pic, "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Card"

    const-string v3, "LauncherCardView-Common"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    :cond_50
    return-void
.end method

.method public executeCardDestroy(Z)V
    .registers 5

    const-string v0, "executeCardDestroy -- dragToAssistant: "

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Common"

    invoke-static {v0, p1, v1, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CardModelWrapper;->release(Ljava/lang/Boolean;)Z

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragToAssistant:Z

    :cond_19
    return-void
.end method

.method public bridge synthetic executeCardOnDragEnd(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->executeCardOnDragEnd(Z)V

    return-void
.end method

.method public executeCardOnDragEnd(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->onDragEnd(Ljava/lang/Boolean;)V

    return-void
.end method

.method public executeCardOnDragStart()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->onDragStart()V

    return-void
.end method

.method public findCardView([I)Lcom/android/launcher3/card/LauncherCardView;
    .registers 4

    const-string v0, "ints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 v1, 0x0

    aget v1, p1, v1

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    const/4 v1, 0x1

    aget p1, p1, v1

    if-ne v0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public final getCardConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-object p0
.end method

.method public getCardModel()Lcom/android/launcher3/card/CardModelWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    return-object p0
.end method

.method public final getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    return-object p0
.end method

.method public getCardType()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    goto :goto_14

    :cond_a
    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result p0

    :goto_14
    return p0
.end method

.method public final getKeepResumedMark()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    return p0
.end method

.method public final getServiceInfo()Lpantanal/decision/ServiceInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->serviceInfo:Lpantanal/decision/ServiceInfo;

    return-object p0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p0

    goto :goto_d

    :cond_9
    invoke-super {p0}, Lcom/android/launcher3/card/EngineCardView;->getSize()I

    move-result p0

    :goto_d
    return p0
.end method

.method public getUiDataForDrag()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->getPreViewUiData()Lpantanal/app/bean/PantanalUIData;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lpantanal/app/bean/PantanalUIData;->toJsonString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    :cond_e
    const-string p0, ""

    :cond_10
    return-object p0
.end method

.method public final getUnsubscribedMark()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    return p0
.end method

.method public final getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->useNoPermissionHelper$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/NoPermissionHelper;

    return-object p0
.end method

.method public getViewScreenshot(ZZ)Landroid/graphics/Bitmap;
    .registers 12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_28

    new-instance v3, Lh4/j;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_50

    :cond_28
    iget-object v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v3, Lh4/j;

    iget-object v4, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_50
    iget-object v4, v3, Lh4/j;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_134

    iget-object v4, v3, Lh4/j;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-gtz v4, :cond_66

    goto/16 :goto_134

    :cond_66
    iget-object v4, v3, Lh4/j;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v3, v3, Lh4/j;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v5, 0x7f0a042c

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a0222

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz p1, :cond_b3

    const p1, 0x7f0a016b

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b3

    invoke-static {p1}, Lcom/android/common/util/BitmapUtils;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_a3

    goto :goto_b3

    :cond_a3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v4, v7, v8, p1, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-static {v7}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_b3
    :goto_b3
    const/4 p1, 0x1

    if-eqz v5, :cond_cc

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const-string/jumbo v8, "noPermissionView.getChildAt(0)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_c8

    move v7, p1

    goto :goto_c9

    :cond_c8
    move v7, v2

    :goto_c9
    if-eqz v7, :cond_cc

    goto :goto_e3

    :cond_cc
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v5

    if-eqz v5, :cond_da

    invoke-virtual {v5}, Lcom/oplus/card/helper/EngineManner;->isSeedCardEngine()Z

    move-result v5

    if-ne v5, p1, :cond_da

    move v5, p1

    goto :goto_db

    :cond_da
    move v5, v2

    :goto_db
    if-eqz v5, :cond_df

    move-object v5, v1

    goto :goto_e3

    :cond_df
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object v5

    :goto_e3
    if-eqz p2, :cond_ea

    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->getRadiusArr()[F

    move-result-object p2

    goto :goto_eb

    :cond_ea
    move-object p2, v1

    :goto_eb
    if-eqz v5, :cond_ff

    invoke-static {v5}, Lcom/android/common/util/BitmapUtils;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_f4

    return-object v1

    :cond_f4
    invoke-static {p0, p2}, Lcom/android/common/util/BitmapUtils;->bitmapToPicture(Landroid/graphics/Bitmap;[F)Landroid/graphics/Picture;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    invoke-static {p0}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-object v3

    :cond_ff
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v5

    if-eqz v5, :cond_10c

    invoke-virtual {v5}, Lcom/oplus/card/helper/EngineManner;->isSeedCardEngine()Z

    move-result v5

    if-ne v5, p1, :cond_10c

    move v2, p1

    :cond_10c
    if-eqz v2, :cond_118

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMViewScreenshot()Landroid/graphics/Picture;

    move-result-object p1

    if-eqz p1, :cond_118

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    return-object v3

    :cond_118
    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_120

    invoke-virtual {p0, v4}, Lcom/android/launcher3/card/LauncherCardView;->drawPreloadImage(Landroid/graphics/Canvas;)V

    goto :goto_133

    :cond_120
    if-eqz v6, :cond_133

    invoke-static {v6}, Lcom/android/common/util/BitmapUtils;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_129

    return-object v1

    :cond_129
    invoke-static {p0, p2}, Lcom/android/common/util/BitmapUtils;->bitmapToPicture(Landroid/graphics/Bitmap;[F)Landroid/graphics/Picture;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    invoke-static {p0}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_133
    :goto_133
    return-object v3

    :cond_134
    :goto_134
    const-string p0, "Card"

    const-string p1, "LauncherCardView-Common"

    const-string p2, "getViewScreenshot, bitmap width and height must be > 0"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getVisibility()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    const/4 p0, 0x4

    :goto_c
    return p0
.end method

.method public handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;->handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->applyDefaultLayoutParams(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->updateDragContent()V

    :cond_19
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final handleOnPauseForShot()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->refreshViewScreenshot()V

    :cond_19
    return-void
.end method

.method public loadCard()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/CommonCardView;->loadCard(Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

.method public loadCard(Lpantanal/app/bean/PantanalUIData;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "loadCard: data size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_20

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_21

    :cond_20
    move-object v2, v1

    :goto_21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Card"

    const-string v3, "LauncherCardView-Common"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_f4

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_f4

    :cond_41
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lcom/oplus/card/helper/EngineManner;->isSeedCardEngine()Z

    move-result v0

    if-ne v0, v4, :cond_51

    move v0, v4

    goto :goto_52

    :cond_51
    move v0, v5

    :goto_52
    if-nez v0, :cond_65

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/oplus/card/helper/EngineManner;->isQuickCardEngine()Z

    move-result v0

    if-ne v0, v4, :cond_62

    move v0, v4

    goto :goto_63

    :cond_62
    move v0, v5

    :goto_63
    if-eqz v0, :cond_a2

    :cond_65
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getCard()Lpantanal/app/Card;

    move-result-object v0

    if-eqz v0, :cond_a2

    invoke-interface {v0}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_9c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "loadCard, reuse lastEngineView, return, getCard()?.getView() = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getCard()Lpantanal/app/Card;

    move-result-object v4

    if-eqz v4, :cond_92

    invoke-interface {v4}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object v1

    :cond_92
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c
    const/16 p1, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/card/CommonCardView;->handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;

    return-void

    :cond_a2
    :try_start_a2
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v0

    if-eqz v0, :cond_af

    invoke-virtual {v0}, Lcom/oplus/card/helper/EngineManner;->needUpdateCardVisibleRect()Z

    move-result v0

    if-ne v0, v4, :cond_af

    goto :goto_b0

    :cond_af
    move v4, v5

    :goto_b0
    if-eqz v4, :cond_dd

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->updateCardVisibleRect()V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_dd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "loadCard: card with empty mCardBounds, return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/model/c;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/model/c;-><init>(Lcom/android/launcher3/card/CommonCardView;Lpantanal/app/bean/PantanalUIData;)V

    iput-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->reloadTask:Ljava/util/function/Consumer;

    return-void

    :cond_dd
    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->loadCardInner(Lpantanal/app/bean/PantanalUIData;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_e2
    .catchall {:try_start_a2 .. :try_end_e2} :catchall_e3

    goto :goto_e8

    :catchall_e3
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_e8
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_f3

    const-string p0, "loadCard: catching java.lang.reflect.InvocationTargetException"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f3
    return-void

    :cond_f4
    :goto_f4
    const-string p0, "isLandscape or permission deny obtainNormalCardView return"

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadInstantCard(Ljava/lang/String;)V
    .registers 5

    const-string v0, "loadInstantCard: engine = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", card = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getCard()Lpantanal/app/Card;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Common"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/widget/a;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/card/CommonCardView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_50

    :cond_3d
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getCard()Lpantanal/app/Card;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {v0, p1}, Lcom/oplus/card/helper/EngineManner;->encapsulateBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Lpantanal/app/IPantanalService;->load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public logCardInfo()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    if-nez v0, :cond_b

    const-string p0, "card model is null."

    return-object p0

    :cond_b
    sget-object v0, Lcom/android/launcher3/card/CardConstant;->INSTANCE:Lcom/android/launcher3/card/CardConstant;

    iget-object v1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v1}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v2}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/card/CardConstant;->logCardTag(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public markKeepResumedStateOnDetach()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    return-void
.end method

.method public markUnsubscribedOnDetach()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    return-void
.end method

.method public noPermissionViewShowing()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/NoPermissionHelper;->hasShowing()Z

    move-result p0

    return p0
.end method

.method public obtainNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/card/LauncherCardView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/NoPermissionHelper;->onAttach()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    return-void

    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/CardModelWrapper;->bindView(Lcom/android/launcher3/card/LauncherCardView;)V

    :cond_21
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_30
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_3f
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    if-nez p1, :cond_19

    :cond_14
    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->create()V

    :cond_19
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->clearCardCachedElement()V

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->destroy()V

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/CardModelWrapper;->release(Ljava/lang/Boolean;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/card/LauncherCardView;->hasReleased:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/LauncherCardView;->hasDetached:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMDragListener()Lcom/android/launcher3/card/utils/DragListenerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/utils/DragListenerHelper;->getContent()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMDragListener()Lcom/android/launcher3/card/utils/DragListenerHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/utils/DragListenerHelper;->setContent(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMDragListener()Lcom/android/launcher3/card/utils/DragListenerHelper;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/utils/DragListenerHelper;->setLoadCode(I)V

    :cond_35
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_49
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/LauncherCardView;->hasDetached:Z

    iget-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    const-string v1, "LauncherCardView-Common"

    const-string v2, "Card"

    if-eqz v0, :cond_14

    const-string p0, "keep this card\'s current state, just move to another viewGroup"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->unbindView()V

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getRenderFailRetry()Lcom/android/launcher3/card/RenderFailRetry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/RenderFailRetry;->clearRetryRecord()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDetachedFromWindow: unsubscribedMark = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDragToAssistant = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mDragToAssistant:Z

    invoke-static {v0, v3, v2, v1}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_96

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragToAssistant:Z

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->pause()Z

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->destroy()V

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->unSubscribed()V

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CardModelWrapper;->release(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/card/LauncherCardView;->hasReleased:Z

    goto :goto_8d

    :cond_87
    const-string/jumbo v0, "onDetached -- ignore to unSubscribed because of mDragToAssistant"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8d
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->clearCardCachedElement()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->removeDefaultCardViewIfNeed()V

    iput-boolean v3, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    goto :goto_9c

    :cond_96
    const-string/jumbo v0, "onDetached -- ignore to release because of unsubscribedMark"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9c
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iput-boolean v3, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    iput-boolean v3, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragToAssistant:Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;->onError(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getRenderFailRetry()Lcom/android/launcher3/card/RenderFailRetry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/RenderFailRetry;->getErrorCallback()Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;->onCall(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/card/LauncherCardView;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->reloadTask:Ljava/util/function/Consumer;

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_40

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onLayout: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", need reload"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherCardView-Common"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->reloadTask:Ljava/util/function/Consumer;

    if-eqz p1, :cond_3d

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3d
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->reloadTask:Ljava/util/function/Consumer;

    :cond_40
    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    const-string v2, "it.workspace"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1d

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;->onMeasure(II)V

    return-void

    :cond_1d
    const-string/jumbo v2, "wp.getPageAt(wp.currentP…     return\n            }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mCurPaddingRect:Landroid/graphics/Rect;

    invoke-interface {p0, v0, v1, p1, v2}, Lcom/android/launcher3/card/IAreaWidget;->calculatePaddingRect(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCurPaddingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_37
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;->onMeasure(II)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->handleOnPauseForShot()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->pauseCard()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->resumeCard(Z)V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v2, :cond_21

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher/Launcher;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0, v1}, Lcom/android/launcher3/card/CommonCardView;->resumeCard(Z)V

    :cond_21
    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-ne p1, v1, :cond_34

    move p1, v1

    goto :goto_35

    :cond_34
    move p1, v0

    :goto_35
    if-eqz p1, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object p1

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Lcom/oplus/card/helper/EngineManner;->isSeedCardEngine()Z

    move-result p1

    if-ne p1, v1, :cond_44

    goto :goto_45

    :cond_44
    move v1, v0

    :goto_45
    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_50

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_50
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onUpdateCardConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/card/LauncherCardUtil;->isSeedOrGroupCard(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->initExtraDataRuleSourceAsync()V

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->refreshCardContentByConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    return-void
.end method

.method public onVisibilityChange(I)V
    .registers 3

    if-nez p1, :cond_5

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-nez p1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-interface {p0, v0}, Lcom/oplus/card/manager/domain/ICardView;->setTextVisible(Z)V

    if-nez p1, :cond_16

    invoke-super {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->onVisibilityChange(I)V

    :cond_16
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onVisibilityChanged: visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Common"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/NoPermissionHelper;->updatePermissionSettingColorIfNeeded()V

    :cond_c
    return-void
.end method

.method public pauseCard()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tryPauseCard: caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Common"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->pause()Z

    return-void
.end method

.method public refreshCardContentByConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 5

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "refreshCardContentByConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Common"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string/jumbo v0, "refreshCardContentByConfig: update this config"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v0

    if-nez v0, :cond_4b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/card/seed/SeedParams;

    invoke-direct {v1, p1}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/card/EngineMannerFactory;->createEngineManner(Landroid/content/Context;Ljava/lang/Object;Lcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/card/helper/EngineManner;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/CommonCardView;->setEngineManner(Lcom/oplus/card/helper/EngineManner;)V

    :cond_4b
    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-eqz v0, :cond_70

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfigChange:Z

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/card/manager/domain/CardManager;->isSeedlingCard(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->isQuickAppCard(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    :cond_6c
    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->loadCard()V

    goto :goto_8e

    :cond_70
    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/card/manager/domain/CardManager;->isSeedlingCard(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result v1

    if-nez v1, :cond_8a

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->isQuickAppCard(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    :cond_8a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CommonCardView;->loadCardInner(Lpantanal/app/bean/PantanalUIData;)V

    :cond_8e
    :goto_8e
    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    :cond_90
    return-void
.end method

.method public refreshForConfigLoad()V
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getCard()Lpantanal/app/Card;

    move-result-object v0

    const/4 v7, 0x1

    if-nez v0, :cond_d

    move v0, v7

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string/jumbo v1, "refreshForConfigLoad isCardNull: "

    const-string v2, ", Engine: "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Card"

    const-string v3, "LauncherCardView-Common"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v1

    const-string v2, "info"

    const-string v3, "context"

    if-nez v1, :cond_49

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/android/launcher3/card/seed/SeedParams;

    invoke-direct {v4, v5}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    invoke-static {v1, v5, v4}, Lcom/android/launcher3/card/EngineMannerFactory;->createEngineManner(Landroid/content/Context;Ljava/lang/Object;Lcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/card/helper/EngineManner;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/CommonCardView;->setEngineManner(Lcom/oplus/card/helper/EngineManner;)V

    :cond_49
    if-eqz v0, :cond_7f

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v5, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v4, v5, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v6, v5, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/android/launcher3/card/CommonCardView$refreshForConfigLoad$cardModel$1;->INSTANCE:Lcom/android/launcher3/card/CommonCardView$refreshForConfigLoad$cardModel$1;

    move v2, v3

    move v3, v4

    move v4, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/card/manager/domain/CardManager;->reCreateCard(Landroid/content/Context;IIILcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v1, v0, v7}, Lcom/android/launcher3/card/CardModelWrapper;->setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;Z)V

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->resetCurrentResumeState()V

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->subscribed()V

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/CardModelWrapper;->bindView(Lcom/android/launcher3/card/LauncherCardView;)V

    :cond_7f
    return-void
.end method

.method public refreshForPermissionChanged(ZZ)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshForPermissionChanged hasPermission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needReCreate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Common"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_99

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    if-nez p1, :cond_29

    goto :goto_2e

    :cond_29
    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_2e
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v9

    sget-object p1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v3

    iget v4, v9, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v5, v9, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v6, v9, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/oplus/card/manager/domain/CardManager;->isCardModeCreate(III)Z

    move-result v3

    const-string/jumbo v4, "refreshForPermissionChanged isCreateCard:"

    invoke-static {v4, v3, v1, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_4c

    if-nez v3, :cond_6f

    :cond_4c
    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string p1, "context"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v9, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v7, v9, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v8, v9, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    const-string p1, "info"

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lcom/android/launcher3/card/CommonCardView$refreshForPermissionChanged$cardModel$1;->INSTANCE:Lcom/android/launcher3/card/CommonCardView$refreshForPermissionChanged$cardModel$1;

    invoke-virtual/range {v4 .. v10}, Lcom/oplus/card/manager/domain/CardManager;->reCreateCard(Landroid/content/Context;IIILcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/card/CardModelWrapper;->setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;Z)V

    :cond_6f
    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->resetCurrentResumeState()V

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->subscribed()V

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/CardModelWrapper;->bindView(Lcom/android/launcher3/card/LauncherCardView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_8d

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_8d

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_8d
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->recyclePreloadBitmap()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/NoPermissionHelper;->addOrRemoveView(Z)V

    goto :goto_cc

    :cond_99
    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->noPermissionViewShowing()Z

    move-result p1

    if-nez p1, :cond_b8

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/NoPermissionHelper;->addOrRemoveView(Z)V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_b8

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->recyclePreloadBitmap()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/CommonCardView;->updatePermissionSettingsView(Z)V

    :cond_b8
    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->unbindView()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_cc

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_cc

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_cc
    :goto_cc
    return-void
.end method

.method public refreshViewScreenshot()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->getRadiusArr()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/util/BitmapUtils;->bitmapToPicture(Landroid/graphics/Bitmap;[F)Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/EngineCardView;->setMViewScreenshot(Landroid/graphics/Picture;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshViewScreenshot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " engine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/EngineManner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mViewScreenshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMViewScreenshot()Landroid/graphics/Picture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardView-Common"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMViewScreenshot()Landroid/graphics/Picture;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_57
    return-void
.end method

.method public removeDefaultCardViewIfNeed()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    return-void
.end method

.method public resumeCard(ZZ)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    const-string v0, "LauncherCardView-Common"

    const-string v1, "Card"

    if-eqz p2, :cond_2b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tryResumeCard: caller: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isLandscape()Z

    move-result p2

    if-nez p2, :cond_42

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p2

    if-nez p2, :cond_3c

    goto :goto_42

    :cond_3c
    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->resume(Z)Z

    return-void

    :cond_42
    :goto_42
    const-string/jumbo p0, "resumeCard but is land scape or no permission, no need fresh."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCardConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-void
.end method

.method public setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;)V
    .registers 4

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    if-nez v0, :cond_25

    :cond_f
    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/card/CardModelWrapper;->setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;Z)V

    return-void
.end method

.method public final setCardModelWrapper(Lcom/android/launcher3/card/CardModelWrapper;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    return-void
.end method

.method public setEngineManner(Lcom/oplus/card/helper/EngineManner;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->setEngine(Lcom/oplus/card/helper/EngineManner;)V

    return-void
.end method

.method public final setKeepResumedMark(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    return-void
.end method

.method public setPreviewUiData(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "setPreviewUiData: s.length = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-Common"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_33

    sget-object v0, Lpantanal/app/bean/PantanalUIData;->Companion:Lpantanal/app/bean/PantanalUIData$Companion;

    invoke-virtual {v0, p1}, Lpantanal/app/bean/PantanalUIData$Companion;->fromJsonString(Ljava/lang/String;)Lpantanal/app/bean/PantanalUIData;

    move-result-object p1

    if-eqz p1, :cond_33

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/CardModelWrapper;->bindView(Lcom/android/launcher3/card/LauncherCardView;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->setPreViewUiData(Lpantanal/app/bean/PantanalUIData;)V

    :cond_33
    return-void
.end method

.method public final setServiceInfo(Lpantanal/decision/ServiceInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->serviceInfo:Lpantanal/decision/ServiceInfo;

    return-void
.end method

.method public final setUnsubscribedMark(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    return-void
.end method

.method public updatePermissionSettingsView(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/NoPermissionHelper;->updatePermissionSettingsView(Z)V

    return-void
.end method
