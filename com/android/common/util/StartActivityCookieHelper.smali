.class public final Lcom/android/common/util/StartActivityCookieHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

.field private static final TAG:Ljava/lang/String; = "StartActivityCookieHelper"

.field private static mStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private static mWeightStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/StartActivityCookieHelper;

    invoke-direct {v0}, Lcom/android/common/util/StartActivityCookieHelper;-><init>()V

    sput-object v0, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkCookieUpdateByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BaseQuickstepLauncher;ILjava/lang/String;IZ)I
    .registers 8

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/android/common/util/StartActivityCookieHelper;->checkPackageNameEqualsResult(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0, p3, p1}, Lcom/android/common/util/StartActivityCookieHelper;->checkInfoIDResult(ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p3

    if-eqz p3, :cond_36

    const-string p3, "local item id is not same launchCookies, update cookie value and jump page, new id:"

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " need find page: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "StartActivityCookieHelper"

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_33

    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/common/util/StartActivityCookieHelper;->findAppIconAndChangePageIfNeeded(Lcom/android/launcher3/BaseQuickstepLauncher;ILjava/lang/String;I)V

    :cond_33
    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    return p0

    :cond_36
    const/high16 p0, -0x80000000

    return p0
.end method

.method private final checkInfoIDResult(ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v1, p1, :cond_a

    move p1, p0

    goto :goto_b

    :cond_a
    move p1, v0

    :goto_b
    if-nez p1, :cond_1a

    if-eqz p2, :cond_16

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_16

    move p1, p0

    goto :goto_17

    :cond_16
    move p1, v0

    :goto_17
    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    move p0, v0

    :goto_1b
    return p0
.end method

.method private final checkPackageNameEqualsResult(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_18

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private final findAppIconAndChangePageIfNeeded(Lcom/android/launcher3/BaseQuickstepLauncher;ILjava/lang/String;I)V
    .registers 5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/util/ObjectWrapper;->wrap(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final checkCookieUpdateByPackageName(Lcom/android/launcher3/BaseQuickstepLauncher;ILjava/lang/String;IZ)I
    .registers 13

    const-string p0, "mActivity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "packageName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/StartActivityCookieHelper;->mWeightStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_21

    sget-object v0, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/common/util/StartActivityCookieHelper;->checkCookieUpdateByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BaseQuickstepLauncher;ILjava/lang/String;IZ)I

    move-result p1

    sput-object p0, Lcom/android/common/util/StartActivityCookieHelper;->mStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 p0, 0x0

    sput-object p0, Lcom/android/common/util/StartActivityCookieHelper;->mWeightStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_33

    :cond_21
    sget-object v1, Lcom/android/common/util/StartActivityCookieHelper;->mStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_31

    sget-object v0, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/common/util/StartActivityCookieHelper;->checkCookieUpdateByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BaseQuickstepLauncher;ILjava/lang/String;IZ)I

    move-result p1

    goto :goto_33

    :cond_31
    const/high16 p1, -0x80000000

    :goto_33
    return p1
.end method

.method public final clearCardCache(Lcom/android/launcher/Launcher;Ljava/lang/String;)V
    .registers 4

    const-string p0, "mActivity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "packageName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/StartActivityCookieHelper;->mWeightStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez p0, :cond_13

    sget-object p0, Lcom/android/common/util/StartActivityCookieHelper;->mStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_37

    :cond_13
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->isAppStartFromCard(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_37

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "need clear card and jump page, packageName: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StartActivityCookieHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher/Launcher;->clearCardStateByPackageName(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public final getMStartItemInfo()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    sget-object p0, Lcom/android/common/util/StartActivityCookieHelper;->mStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method public final getMWeightStartItemInfo()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    sget-object p0, Lcom/android/common/util/StartActivityCookieHelper;->mWeightStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method public final release()V
    .registers 1

    const/4 p0, 0x0

    sput-object p0, Lcom/android/common/util/StartActivityCookieHelper;->mWeightStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    sput-object p0, Lcom/android/common/util/StartActivityCookieHelper;->mStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method

.method public final setMStartItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    sput-object p1, Lcom/android/common/util/StartActivityCookieHelper;->mStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method

.method public final setMWeightStartItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    sput-object p1, Lcom/android/common/util/StartActivityCookieHelper;->mWeightStartItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method
