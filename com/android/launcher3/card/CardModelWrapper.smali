.class public Lcom/android/launcher3/card/CardModelWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "CardModelWrapper"


# instance fields
.field private mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

.field private mCurrentResume:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/card/manager/domain/model/CardModel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/CardModelWrapper;Lcom/android/launcher3/card/cache/CachedEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->lambda$getCardCacheEntry$0(Lcom/android/launcher3/card/cache/CachedEntry;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/card/CardModelWrapper;Lcom/android/launcher3/card/cache/CachedEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->lambda$getInstantCardCacheEntry$1(Lcom/android/launcher3/card/cache/CachedEntry;)V

    return-void
.end method

.method private getCardCacheEntry()V
    .registers 5

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCardCache()Lcom/android/launcher3/card/cache/CardCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v2

    new-instance v3, Lf/h;

    invoke-direct {v3, p0}, Lf/h;-><init>(Lcom/android/launcher3/card/CardModelWrapper;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/card/cache/CardCache;->getCardCachedEntry(IILcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;)V

    return-void
.end method

.method private getInstantCardCacheEntry()V
    .registers 5

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCardCache()Lcom/android/launcher3/card/cache/CardCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v2

    new-instance v3, Lcom/android/launcher/settings/g;

    invoke-direct {v3, p0}, Lcom/android/launcher/settings/g;-><init>(Lcom/android/launcher3/card/CardModelWrapper;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/card/cache/CardCache;->getInstantCardCachedEntry(IILcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;)V

    return-void
.end method

.method private synthetic lambda$getCardCacheEntry$0(Lcom/android/launcher3/card/cache/CachedEntry;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/launcher3/card/cache/CachedEntry;->getUIData()Lpantanal/app/bean/PantanalUIData;

    move-result-object p1

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->isCardAvailable(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getUiData()Lpantanal/app/bean/PantanalUIData;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "CardModelWrapper"

    const/4 v5, 0x0

    if-nez v1, :cond_46

    if-eqz v0, :cond_46

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "CardModel.uiData is null, use cache.id=%d,type=%d"

    invoke-static {v4, v1, v0}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0, p1, v5}, Lcom/oplus/card/manager/domain/model/CardModel;->receiveUIData(Lpantanal/app/bean/PantanalUIData;Z)V

    goto :goto_65

    :cond_46
    new-array p1, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "CardModel.uiData is loaded, ignore cache.id=%d,type=%d"

    invoke-static {v4, p0, p1}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_65
    return-void
.end method

.method private synthetic lambda$getInstantCardCacheEntry$1(Lcom/android/launcher3/card/cache/CachedEntry;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/card/cache/CachedEntry;->getInstantCardUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string v1, "CardModelWrapper"

    const-string v2, "CardModel.instantCardUrl is loaded, ignore cache.id=%d,type=%d,instantCardUrl=%s"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->receiveUIData(Ljava/lang/String;)V

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/launcher3/card/CardConstant;->INSTANCE:Lcom/android/launcher3/card/CardConstant;

    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v3

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result p0

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/launcher3/card/CardConstant;->logCardTag(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Card"

    const-string v1, "CardModelWrapper"

    invoke-static {v0, p1, p0, v1}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method private tryUseUiDataFromCache()V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getUiData()Lpantanal/app/bean/PantanalUIData;

    move-result-object v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4f

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "CardModelWrapper"

    const-string v2, "CardModel.uiData is null, try load cache.id=%d,type=%d"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object v0

    instance-of v0, v0, Lpantanal/app/InstantCard;

    if-eqz v0, :cond_4c

    invoke-direct {p0}, Lcom/android/launcher3/card/CardModelWrapper;->getInstantCardCacheEntry()V

    goto :goto_4f

    :cond_4c
    invoke-direct {p0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardCacheEntry()V

    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->bindView(Lcom/oplus/card/manager/domain/ICardView;)V

    return-void
.end method

.method public create()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "create, hasCreate = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->onCreate()V

    :cond_28
    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->onDestroy()V

    return-void
.end method

.method public getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    return-object p0
.end method

.method public getPreViewUiData()Lpantanal/app/bean/PantanalUIData;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getUiData()Lpantanal/app/bean/PantanalUIData;

    move-result-object p0

    return-object p0
.end method

.method public getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object p0

    return-object p0
.end method

.method public isCurrentResume()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    return p0
.end method

.method public notifyCardReplaceHost()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "notifyCardReplaceHost"

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/card/manager/domain/model/CardModel;->onDragEnd(Z)V

    return-void
.end method

.method public onDragEnd(Ljava/lang/Boolean;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDragEnd: needReplaceChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->onDragEnd(Z)V

    return-void
.end method

.method public onDragStart()V
    .registers 2

    const-string/jumbo v0, "onDragStart"

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->onDragStart()V

    return-void
.end method

.method public pause()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string/jumbo v0, "pause, mCurrentResume = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    if-nez v0, :cond_2b

    return v1

    :cond_2b
    iput-boolean v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->onHide()V

    const/4 p0, 0x1

    return p0
.end method

.method public release(Ljava/lang/Boolean;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_10

    const-string p0, "Card"

    const-string p1, "CardModelWrapper"

    const-string/jumbo v0, "release fail, mCardModel is null"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "release, cacheActivated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/card/manager/domain/CardManager;->destroyCard(III)V

    :cond_44
    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->release(Z)Z

    move-result p0

    return p0
.end method

.method public renderFail()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "renderFail"

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->onRenderFailed()V

    return-void
.end method

.method public resetCurrentResumeState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    return-void
.end method

.method public resume(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string/jumbo v0, "resume, mCurrentResume = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ignoreState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    if-eqz v0, :cond_28

    if-nez p1, :cond_28

    return v1

    :cond_28
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    invoke-direct {p0}, Lcom/android/launcher3/card/CardModelWrapper;->tryUseUiDataFromCache()V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->onShow()V

    return p1
.end method

.method public setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    iput-object p1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->onSubscribe()V

    :cond_b
    iput-object p1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    const-string/jumbo p1, "setCardModel, needSubscribed = "

    invoke-static {p1, p2}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public setPreViewUiData(Lpantanal/app/bean/PantanalUIData;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "setPreViewUiData uiData.size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/card/manager/domain/model/CardModel;->receiveUIData(Lpantanal/app/bean/PantanalUIData;Z)V

    return-void
.end method

.method public subscribed()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "subscribed"

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->onSubscribe()V

    return-void
.end method

.method public unSubscribed()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "unSubscribed"

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->onUnsubscribe()V

    return-void
.end method

.method public unbindView()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->unbindView()V

    return-void
.end method
