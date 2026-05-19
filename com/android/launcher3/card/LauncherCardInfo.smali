.class public Lcom/android/launcher3/card/LauncherCardInfo;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source ""


# static fields
.field public static final CARD_MASTER_KEY_CARD_TYPE:I = -0x3

.field private static final CARD_MIN_SIZE:I = 0x1

.field public static final CARD_MISSING_KEY_PERMISSIONS_CARD_TYPE:I = -0x4

.field public static final CARD_NO_ADVICE_CARD_TYPE:I = -0x5

.field public static final CARD_PRIVACY_PERMISSION_CARD_TYPE:I = -0x2

.field public static final INNER_CARD_CLASS_NAME:Ljava/lang/String; = "com.android.launcher.InnerCard"

.field public static final INVALID_CARD_TYPE:I = -0x1

.field public static final LARGE_CARD_SIZE_THRESHOLD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LauncherCardInfo"

.field public static final US_CARD_TYPE:I = 0xd3ecf26


# instance fields
.field public groupCardInfo:Lpantanal/app/groupcard/GroupCardInfo;

.field public isEditable:Z

.field public isThemeCard:Z

.field public mCardId:I

.field public mCardType:I

.field public mCategory:I

.field private mClickOptsForRecentReverse:Ljava/lang/Runnable;

.field private mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mDragFromAssistant:Z

.field public mDragToAssistant:Z

.field public mHostId:I

.field public mInitData:Ljava/lang/String;

.field public mIntentId:J

.field public mPolicy:Ljava/lang/String;

.field public mProviderName:Landroid/content/ComponentName;

.field public mServiceId:Ljava/lang/String;

.field public mTimeStamp:J

.field public minHeight:I

.field public minWidth:I

.field public seedParams:Lcom/android/launcher3/card/seed/SeedParams;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    iput-boolean v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->isEditable:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    iput-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mInitData:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mIntentId:J

    iput-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mPolicy:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->groupCardInfo:Lpantanal/app/groupcard/GroupCardInfo;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    return-void
.end method

.method public static asCardConfigInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 7

    new-instance v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-direct {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;-><init>()V

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v3, v2, :cond_13

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setSize(I)V

    goto :goto_37

    :cond_13
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1f

    iget v5, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v5, v4, :cond_1f

    invoke-virtual {v0, v3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setSize(I)V

    goto :goto_37

    :cond_1f
    if-ne v1, v2, :cond_29

    iget v5, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v5, v4, :cond_29

    invoke-virtual {v0, v4}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setSize(I)V

    goto :goto_37

    :cond_29
    if-ne v1, v4, :cond_34

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v1, v3, :cond_34

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setSize(I)V

    goto :goto_37

    :cond_34
    invoke-virtual {v0, v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setSize(I)V

    :goto_37
    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setMinHeight(I)V

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setMinWidth(I)V

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setType(I)V

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setServiceId(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setCategory(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setComponentName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setPackageName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic g(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->lambda$clickForRecentAnimReverse$0()V

    return-void
.end method

.method private synthetic lambda$clickForRecentAnimReverse$0()V
    .registers 3

    const-string v0, "LauncherCardInfo"

    const-string v1, "clickForRecentAnimReverse"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    :cond_11
    return-void
.end method

.method public static newFromCardConfigInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 6

    new-instance v0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v1, v3, :cond_16

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    goto :goto_2f

    :cond_16
    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v3, :cond_27

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    goto :goto_2f

    :cond_27
    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    :goto_2f
    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getMinHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getMinWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v1, v2}, Lcom/oplus/card/manager/domain/CardManager;->allocateCardId(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clickForRecentAnimReverse()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    new-instance v0, Landroidx/recyclerview/widget/a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p0, v1, :cond_19

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->run()V

    goto :goto_1e

    :cond_19
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method public createCardName()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public downTouch(Landroid/view/MotionEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public dumpProperties()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCardId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHostId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCategory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public isLauncherUSContainer()Z
    .registers 3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const v0, 0xd3ecf26

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne v0, p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public isUSBackUpCard()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 v0, -0x5

    if-eq p0, v0, :cond_11

    const/4 v0, -0x4

    if-eq p0, v0, :cond_11

    const/4 v0, -0x3

    if-eq p0, v0, :cond_11

    const/4 v0, -0x2

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->obtain()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    return-object p0
.end method

.method public obtain()Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 3

    new-instance v0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    iput p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    return-object v0
.end method

.method public bridge synthetic obtain()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->obtain()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    return-object p0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "card_type"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "card_host_id"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appWidgetProvider"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    :cond_39
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    if-eqz v0, :cond_43

    const-string/jumbo v1, "service_id"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    :cond_43
    iget-boolean v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->isEditable:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "editable_attributes"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    iget-boolean v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "theme_card_identification"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "card_category"

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    return-void
.end method

.method public prepareForRecentAnimReverse(Landroidx/core/util/Consumer;Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "LauncherCardInfo"

    const-string/jumbo v1, "prepareForRecentAnimReverse"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    iput-object p2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    return-void
.end method

.method public resetMinWidthAndMinHeightIfNeeded(Landroid/content/Context;)V
    .registers 10

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    if-ge v0, v1, :cond_78

    :cond_9
    const/4 v0, 0x4

    const/4 v2, 0x6

    invoke-static {p1, v0, v2}, Lcom/android/launcher/CellLayoutHelper;->getCellSize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object p1

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-le v3, v5, :cond_1b

    iget v3, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v0

    iput v3, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    goto :goto_20

    :cond_1b
    iget v3, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    :goto_20
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    mul-int/2addr v3, v6

    iput v3, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "resetMinWidthAndMinHeight point: "

    aput-object v7, v3, v6

    aput-object p1, v3, v1

    const-string p1, ", minWidth: "

    aput-object p1, v3, v4

    iget p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    const-string p1, ", minHeight: "

    aput-object p1, v3, v0

    const/4 p1, 0x5

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, ", spanX: "

    aput-object p1, v3, v2

    const/4 p1, 0x7

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const/16 p1, 0x8

    const-string v0, ", spanY: "

    aput-object v0, v3, p1

    const/16 p1, 0x9

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const/16 p1, 0xa

    const-string v0, ", cardItem: "

    aput-object v0, v3, p1

    const/16 p1, 0xb

    aput-object p0, v3, p1

    const-string p0, "LauncherCardInfo"

    invoke-static {p0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_78
    return-void
.end method

.method public resetRecentReverseOpts()V
    .registers 3

    const-string v0, "LauncherCardInfo"

    const-string/jumbo v1, "resetRecentReverseOpts"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    return-void
.end method

.method public resizeSpanXY(Landroid/content/Context;II)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v4

    iget v5, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v4, v5}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v4

    const-string v5, "LauncherCardInfo"

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v8, "Card"

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v11

    if-ne v11, v9, :cond_39

    iput v10, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v10, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v10, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v10, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v5, v1, v6

    const-string/jumbo v2, "resizeSpanXY CARD_RESIZE_FOR_2_PLUS_2 is false. item: "

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    invoke-static {v8, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_39
    if-nez v4, :cond_5a

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v4, v10, :cond_5a

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v4, v10, :cond_5a

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v5, v1, v6

    const-string/jumbo v2, "resizeSpanXY: keep 2x2 size, item: "

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    invoke-static {v8, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    return-void

    :cond_5a
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v4

    iget v11, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const/4 v12, 0x6

    const/4 v13, 0x4

    if-eq v11, v3, :cond_6f

    invoke-static {v1, v13, v12}, Lcom/android/launcher/CellLayoutHelper;->getCellSize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget v14, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    mul-int/2addr v11, v14

    iput v11, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    :cond_6f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    const-string v15, ",spanY:"

    const/16 v14, 0xb

    const/16 v16, 0xa

    const/16 v17, 0x9

    const/16 v18, 0x8

    const/16 v19, 0x7

    const/16 v20, 0x5

    if-eqz v11, :cond_ec

    const/16 v11, 0x10

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v6

    const-string/jumbo v21, "resizeSpanXY targetCellCountX:"

    aput-object v21, v11, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v11, v10

    const-string v21, ",targetCellCountY:"

    aput-object v21, v11, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v11, v13

    const-string v13, ",mCardType:"

    aput-object v13, v11, v20

    iget v13, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const-string v12, ",minWidth:"

    aput-object v12, v11, v19

    iget v12, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v18

    const-string v12, ",minHeight:"

    aput-object v12, v11, v17

    iget v12, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v16

    const-string v12, ",spanX:"

    aput-object v12, v11, v14

    iget v12, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v11, v13

    const/16 v12, 0xd

    aput-object v15, v11, v12

    const/16 v12, 0xe

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const-string v9, ", item: "

    invoke-static {v13, v7, v9}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v12

    const/16 v7, 0xf

    aput-object v0, v11, v7

    invoke-static {v8, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ec
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/card/LauncherCardInfo;->resetMinWidthAndMinHeightIfNeeded(Landroid/content/Context;)V

    iget v7, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v9, 0xd3ecf26

    const-string v11, ", item = "

    const-string v12, ", cellY = "

    const-string v13, ", cellX = "

    const-string/jumbo v22, "resizeSpanXY spanX:"

    if-ne v7, v9, :cond_140

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v7

    if-nez v7, :cond_140

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v10, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v5, v1, v6

    const/4 v3, 0x1

    aput-object v22, v1, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x3

    aput-object v15, v1, v2

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    aput-object v13, v1, v20

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    aput-object v12, v1, v19

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v18

    aput-object v11, v1, v17

    aput-object v0, v1, v16

    invoke-static {v8, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1d0

    :cond_140
    invoke-virtual {v4, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v1

    const/high16 v4, 0x3f800000  # 1.0f

    iget v7, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    iget v9, v1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    move-object v9, v11

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    move-object v7, v15

    const-wide/high16 v14, 0x3ff0000000000000L  # 1.0

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v10, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v4

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v10, v4

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-int v4, v10

    iput v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_1d0

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v6

    const/4 v3, 0x1

    aput-object v22, v2, v3

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    aput-object v7, v2, v3

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    aput-object v13, v2, v20

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    aput-object v12, v2, v19

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v18

    const-string v3, ", curPoint = "

    aput-object v3, v2, v17

    aput-object v1, v2, v16

    const/16 v1, 0xb

    aput-object v9, v2, v1

    const/16 v1, 0xc

    aput-object v0, v2, v1

    invoke-static {v8, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d0
    :goto_1d0
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
