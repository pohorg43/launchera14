.class public final Lcom/oplus/card/manager/domain/model/CardModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/model/CardModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/manager/domain/model/CardModel$Companion;

.field private static final TAG:Ljava/lang/String; = "CardModel"


# instance fields
.field private card:Lpantanal/app/Card;

.field private cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

.field private final cardId:I

.field private cardView:Lcom/oplus/card/manager/domain/ICardView;

.field private final config:Lcom/oplus/card/config/domain/model/CardConfigInfo;

.field private exposeDuration:J

.field private exposeStartTime:J

.field private hasCreate:Z

.field private final hostId:I

.field private final seedParams:Lcom/android/launcher3/card/seed/SeedParams;

.field private final type:I

.field private uiData:Lpantanal/app/bean/PantanalUIData;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/manager/domain/model/CardModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardModel;->Companion:Lcom/oplus/card/manager/domain/model/CardModel$Companion;

    return-void
.end method

.method public constructor <init>(IIILcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lpantanal/app/Card;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->type:I

    iput p2, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardId:I

    iput p3, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hostId:I

    iput-object p4, p0, Lcom/oplus/card/manager/domain/model/CardModel;->config:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    iput-object p5, p0, Lcom/oplus/card/manager/domain/model/CardModel;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    iput-object p6, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    iput-object p4, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->exposeStartTime:J

    iget-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    if-eqz p1, :cond_23

    new-instance p2, Lcom/oplus/card/manager/domain/model/CardModel$1;

    invoke-direct {p2, p0}, Lcom/oplus/card/manager/domain/model/CardModel$1;-><init>(Lcom/oplus/card/manager/domain/model/CardModel;)V

    invoke-interface {p1, p2}, Lpantanal/app/IPantanalService;->setUIDataInterceptor(Lpantanal/app/UIDataInterceptor;)V

    :cond_23
    iget-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    invoke-direct {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->registerInstantCardMessageCallback(Lpantanal/app/Card;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    invoke-static {p0, p3}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->register(Lpantanal/app/Card;I)V

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lpantanal/app/Card;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x0

    :cond_5
    move-object v6, p6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oplus/card/manager/domain/model/CardModel;-><init>(IIILcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lpantanal/app/Card;)V

    return-void
.end method

.method public static final synthetic access$getCardView$p(Lcom/oplus/card/manager/domain/model/CardModel;)Lcom/oplus/card/manager/domain/ICardView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    return-object p0
.end method

.method public static final synthetic access$getUiData$p(Lcom/oplus/card/manager/domain/model/CardModel;)Lpantanal/app/bean/PantanalUIData;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->uiData:Lpantanal/app/bean/PantanalUIData;

    return-object p0
.end method

.method private final beginRecordExposeTime()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->exposeStartTime:J

    return-void
.end method

.method private final endRecordExposeTime()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/card/manager/domain/model/CardModel;->exposeStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->exposeDuration:J

    return-void
.end method

.method public static synthetic onDragEnd$default(Lcom/oplus/card/manager/domain/model/CardModel;ZILjava/lang/Object;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    :cond_5
    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->onDragEnd(Z)V

    return-void
.end method

.method private final registerInstantCardMessageCallback(Lpantanal/app/Card;)V
    .registers 3

    instance-of v0, p1, Lpantanal/app/InstantCard;

    if-eqz v0, :cond_e

    check-cast p1, Lpantanal/app/InstantCard;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardModel$registerInstantCardMessageCallback$1;

    invoke-direct {v0, p0}, Lcom/oplus/card/manager/domain/model/CardModel$registerInstantCardMessageCallback$1;-><init>(Lcom/oplus/card/manager/domain/model/CardModel;)V

    invoke-interface {p1, v0}, Lpantanal/app/InstantCard;->registerCardMessageCallback(Lpantanal/app/instant/IInstantCardCallback;)V

    :cond_e
    return-void
.end method

.method public static synthetic release$default(Lcom/oplus/card/manager/domain/model/CardModel;ZILjava/lang/Object;)Z
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->release(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final bindView(Lcom/oplus/card/manager/domain/ICardView;)V
    .registers 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardModel"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    return-void

    :cond_4b
    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->uiData:Lpantanal/app/bean/PantanalUIData;

    invoke-interface {p1, v0}, Lcom/oplus/card/manager/domain/ICardView;->loadCard(Lpantanal/app/bean/PantanalUIData;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-eqz v0, :cond_72

    invoke-interface {p1, v0}, Lcom/oplus/card/manager/domain/ICardView;->onUpdateCardConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    iget-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedParams;->getCategory()I

    move-result p1

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v3

    if-ne p1, v3, :cond_68

    goto :goto_69

    :cond_68
    move v1, v2

    :goto_69
    if-nez v1, :cond_72

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->saveCardCategory2DB(I)V

    :cond_72
    return-void
.end method

.method public final cacheInstantCard()V
    .registers 3

    iget v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hostId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCardCache()Lcom/android/launcher3/card/cache/CardCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/cache/CardCache;->updateInstantCardCache(Lcom/oplus/card/manager/domain/model/CardModel;)V

    :cond_18
    return-void
.end method

.method public final getCard()Lpantanal/app/Card;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    return-object p0
.end method

.method public final getCardConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-object p0
.end method

.method public final getCardId()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardId:I

    return p0
.end method

.method public final getCardScreenshot()Landroid/graphics/Bitmap;
    .registers 4

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    instance-of v0, p0, Lpantanal/app/SeedlingCard;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    check-cast p0, Lpantanal/app/SeedlingCard;

    goto :goto_b

    :cond_a
    move-object p0, v1

    :goto_b
    if-eqz p0, :cond_11

    invoke-interface {p0}, Lpantanal/app/SeedlingCard;->getViewScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCardScreenshot: card = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", screenshot = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CardModel"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->config:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-object p0
.end method

.method public final getExposeDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->exposeDuration:J

    return-wide v0
.end method

.method public final getHasCreate()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate:Z

    return p0
.end method

.method public final getHostId()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hostId:I

    return p0
.end method

.method public final getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    return-object p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->type:I

    return p0
.end method

.method public final getUiData()Lpantanal/app/bean/PantanalUIData;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->uiData:Lpantanal/app/bean/PantanalUIData;

    return-object p0
.end method

.method public final hasCreate()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate:Z

    return p0
.end method

.method public final isSeedingCard()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    if-ne p0, v2, :cond_f

    goto :goto_1b

    :cond_f
    move v1, v3

    goto :goto_1b

    :cond_11
    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedParams;->getCategory()I

    move-result p0

    if-ne p0, v2, :cond_f

    :goto_1b
    return v1
.end method

.method public final notifyCardConfigChange$OplusLauncher_RealmePallExportAallRelease(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-eqz p0, :cond_16

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->onUpdateCardConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    :cond_16
    return-void
.end method

.method public final onCreate()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lpantanal/app/ILifecycle;->onCreate()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate:Z

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lpantanal/app/ILifecycle;->onDestroy()V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate:Z

    return-void
.end method

.method public final onDragEnd(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lpantanal/app/Card;->onDragEnd(Z)Z

    :cond_7
    return-void
.end method

.method public final onDragStart()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lpantanal/app/Card;->onDragStart()V

    :cond_7
    return-void
.end method

.method public final onHide()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->endRecordExposeTime()V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lpantanal/app/ILifecycle;->onHide()V

    :cond_a
    return-void
.end method

.method public final onRenderFailed()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lpantanal/app/Card;->onRenderFailed()V

    :cond_7
    return-void
.end method

.method public final onShow()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->beginRecordExposeTime()V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lpantanal/app/ILifecycle;->onShow()V

    :cond_a
    return-void
.end method

.method public final onSubscribe()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lpantanal/app/ICardLifecycle;->onSubscribe()V

    :cond_7
    return-void
.end method

.method public final onUnsubscribe()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lpantanal/app/ICardLifecycle;->onUnsubscribe()V

    :cond_7
    return-void
.end method

.method public final receiveUIData(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "instantCardUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiveUIData, instantCardUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-eqz p0, :cond_22

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->loadInstantCard(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public final receiveUIData(Lpantanal/app/bean/PantanalUIData;Z)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiveUIData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-eqz v1, :cond_18

    invoke-interface {v1}, Lcom/oplus/card/manager/domain/ICardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateCache = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/domain/model/CardModel;->updateUIData(Lpantanal/app/bean/PantanalUIData;Z)Z

    move-result p2

    if-nez p2, :cond_3a

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-eqz p0, :cond_3a

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->loadCard(Lpantanal/app/bean/PantanalUIData;)V

    :cond_3a
    return-void
.end method

.method public final release(Z)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->unregister(Lpantanal/app/Card;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    if-nez p0, :cond_14

    const-string p0, "CardModel"

    const-string p1, "release fail, card is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_14
    if-eqz p0, :cond_19

    invoke-interface {p0}, Lpantanal/app/IPantanalService;->release()V

    :cond_19
    const/4 v0, 0x1

    :cond_1a
    :goto_1a
    return v0
.end method

.method public final resetUiData()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/oplus/card/manager/domain/ICardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    move-object v1, v2

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resetUiData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/oplus/card/manager/domain/model/CardModel;->uiData:Lpantanal/app/bean/PantanalUIData;

    return-void
.end method

.method public final saveCardCategory2DB(I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/oplus/card/manager/domain/ICardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    const-string v2, "saveCardCategory2DB category = "

    const-string v3, ", cardView = "

    invoke-static {v0, v1, v2, p1, v3}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    if-nez v0, :cond_29

    goto :goto_2c

    :cond_29
    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/seed/SeedParams;->setCategory(I)V

    :goto_2c
    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-eqz p0, :cond_33

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->onCardCategoryGet(I)V

    :cond_33
    return-void
.end method

.method public final sendMessage(Ljava/lang/String;)V
    .registers 5

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    instance-of v0, v0, Lpantanal/app/InstantCard;

    if-eqz v0, :cond_32

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "event"

    const-string v2, "UPDATE_CARD"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contextParam"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    const-string p1, "null cannot be cast to non-null type pantanal.app.InstantCard"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lpantanal/app/InstantCard;

    const/4 p1, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "root.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Lpantanal/app/InstantCard;->sendMessage(ILjava/lang/String;)V

    :cond_32
    return-void
.end method

.method public final setCard(Lpantanal/app/Card;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->card:Lpantanal/app/Card;

    return-void
.end method

.method public final setExposeDuration(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->exposeDuration:J

    return-void
.end method

.method public final setHasCreate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate:Z

    return-void
.end method

.method public final unbindView()V
    .registers 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    return-void
.end method

.method public final updateUIData(Lpantanal/app/bean/PantanalUIData;Z)Z
    .registers 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUIData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-interface {v1}, Lcom/oplus/card/manager/domain/ICardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_19
    move-object v1, v2

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forceChangeCardUI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpantanal/app/bean/PantanalUIData;->getForceChangeCardUI()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", updateCache = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CardModel"

    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->uiData:Lpantanal/app/bean/PantanalUIData;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {p1}, Lpantanal/app/bean/PantanalUIData;->getForceChangeCardUI()Z

    move-result v0

    if-nez v0, :cond_6c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-eqz p0, :cond_5b

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->logCardInfo()Ljava/lang/String;

    move-result-object v2

    :cond_5b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " data is NOT update, ignore."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_6c
    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->uiData:Lpantanal/app/bean/PantanalUIData;

    iget-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-eqz p1, :cond_75

    invoke-interface {p1}, Lcom/oplus/card/manager/domain/ICardView;->onUpdateData()V

    :cond_75
    if-eqz p2, :cond_8f

    iget p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hostId:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8f

    sget-object p1, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getCardCache()Lcom/android/launcher3/card/cache/CardCache;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/cache/CardCache;->updateCardCache(Lcom/oplus/card/manager/domain/model/CardModel;)V

    :cond_8f
    const/4 p0, 0x0

    return p0
.end method
