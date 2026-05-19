.class public final Lcom/android/launcher/folder/download/model/MarketRecommendModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/download/model/MarketRecommendModel$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMarketRecommendModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarketRecommendModel.kt\ncom/android/launcher/folder/download/model/MarketRecommendModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,319:1\n1855#2,2:320\n1855#2,2:322\n1855#2,2:324\n1855#2,2:326\n1855#2,2:328\n1855#2,2:330\n*S KotlinDebug\n*F\n+ 1 MarketRecommendModel.kt\ncom/android/launcher/folder/download/model/MarketRecommendModel\n*L\n282#1:320,2\n286#1:322,2\n290#1:324,2\n295#1:326,2\n299#1:328,2\n304#1:330,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/download/model/MarketRecommendModel$Companion;

.field public static final TAG:Ljava/lang/String; = "MarketRecommendModel"


# instance fields
.field private final mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatestMarketRecommendInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMarketRecommendInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreAppsApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreAppsMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMustPlayApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMustPlayAppsMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopularApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopularMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolsApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolsMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/download/model/MarketRecommendModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->Companion:Lcom/android/launcher/folder/download/model/MarketRecommendModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayAppsMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMarketRecommendInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mLatestMarketRecommendInfoList:Ljava/util/List;

    return-void
.end method

.method public static synthetic A(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$20(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$27(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic C(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic D(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isRemoveMarketItem(Lcom/android/launcher/folder/download/model/MarketRecommendModel;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->isRemoveMarketItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$30(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz p0, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1e

    sget-object p0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-static {p0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    iput-object p0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :cond_1e
    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$22(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$26(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$31(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$29(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isRemoveMarketItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;I)Z
    .registers 6

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_10

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v0, :cond_10

    move p0, v0

    goto :goto_11

    :cond_10
    move p0, v1

    :goto_11
    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMRecommendId()I

    move-result p1

    if-ne p1, p3, :cond_1d

    move p1, v0

    goto :goto_1e

    :cond_1d
    move p1, v1

    :goto_1e
    if-ne p1, v0, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    and-int/2addr p0, v0

    return p0
.end method

.method public static synthetic j(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$23(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$24(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$28(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByRecommendId$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$20(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$22(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$23(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$24(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$25(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$26(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$27(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$28(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$29(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$30(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkgAndRecommendId$lambda$31(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByRecommendId$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByRecommendId$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByRecommendId$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId$lambda$25(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized clearAllData()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayAppsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMarketRecommendInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mLatestMarketRecommendInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    monitor-exit p0

    return-void

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final coverBitmapStyle()V
    .registers 3

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_20

    :cond_30
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_36

    :cond_46
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_4c

    :cond_5c
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_62

    :cond_72
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_78

    :cond_88
    return-void
.end method

.method public final getMAllApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMAllMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMLatestMarketRecommendInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mLatestMarketRecommendInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMMarketRecommendInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMarketRecommendInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMMoreAppsApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMMoreAppsMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMMustPlayApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMMustPlayAppsMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayAppsMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMPopularApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMPopularMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMToolsApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMToolsMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMTopApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMTopMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final declared-synchronized removeMarketItemsByPkg(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "pkgName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$1;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$1;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher/folder/download/model/b;

    invoke-direct {v5, v4, v1}, Lcom/android/launcher/folder/download/model/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsMarketInfoList:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$2;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$2;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/exceptionmonitor/util/c;

    invoke-direct {v5, v4, v3}, Lcom/android/exceptionmonitor/util/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$3;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$3;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher/folder/download/model/b;

    invoke-direct {v5, v4, v2}, Lcom/android/launcher/folder/download/model/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsMarketInfoList:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$4;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$4;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher/folder/download/c;

    invoke-direct {v5, v4, v3}, Lcom/android/launcher/folder/download/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$5;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$5;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher/folder/download/a;

    invoke-direct {v5, v4, v3}, Lcom/android/launcher/folder/download/a;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayAppsMarketInfoList:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$6;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$6;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher/folder/download/model/c;

    invoke-direct {v5, v4, v2}, Lcom/android/launcher/folder/download/model/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_a6

    :cond_69
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$7;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$7;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher/folder/download/b;

    const/4 v6, 0x3

    invoke-direct {v5, v4, v6}, Lcom/android/launcher/folder/download/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularMarketInfoList:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$8;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$8;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/exceptionmonitor/util/c;

    invoke-direct {v5, v4, v6}, Lcom/android/exceptionmonitor/util/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$9;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$9;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher/folder/download/model/b;

    invoke-direct {v5, v4, v3}, Lcom/android/launcher/folder/download/model/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopMarketInfoList:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$10;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$10;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher/folder/download/c;

    invoke-direct {v5, v4, v6}, Lcom/android/launcher/folder/download/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :goto_a6
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$11;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$11;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher/folder/download/c;

    invoke-direct {v5, v4, v2}, Lcom/android/launcher/folder/download/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllMarketInfoList:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$12;

    invoke-direct {v4, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$12;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher/folder/download/a;

    invoke-direct {v5, v4, v2}, Lcom/android/launcher/folder/download/a;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mLatestMarketRecommendInfoList:Ljava/util/List;

    new-instance v2, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$13;

    invoke-direct {v2, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$13;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/launcher/folder/download/model/c;

    invoke-direct {v4, v2, v1}, Lcom/android/launcher/folder/download/model/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMarketRecommendInfoList:Ljava/util/List;

    new-instance v1, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$14;

    invoke-direct {v1, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkg$14;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher/folder/download/b;

    invoke-direct {p1, v1, v3}, Lcom/android/launcher/folder/download/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_e2
    .catchall {:try_start_1 .. :try_end_e2} :catchall_e4

    monitor-exit p0

    return-void

    :catchall_e4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeMarketItemsByPkgAndRecommendId(Ljava/lang/String;I)V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "pkgName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$1;-><init>(Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;I)V

    new-instance v5, Lcom/android/launcher/folder/download/a;

    invoke-direct {v5, v4, v1}, Lcom/android/launcher/folder/download/a;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsMarketInfoList:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$2;

    invoke-direct {v4, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$2;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/launcher/folder/download/c;

    invoke-direct {v5, v4, v3}, Lcom/android/launcher/folder/download/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$3;-><init>(Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;I)V

    new-instance v5, Lcom/android/launcher/folder/download/a;

    invoke-direct {v5, v4, v3}, Lcom/android/launcher/folder/download/a;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsMarketInfoList:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$4;

    invoke-direct {v4, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$4;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/launcher/folder/download/model/c;

    invoke-direct {v5, v4, v1}, Lcom/android/launcher/folder/download/model/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$5;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$5;-><init>(Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;I)V

    new-instance v5, Lcom/android/launcher/folder/download/b;

    invoke-direct {v5, v4, v2}, Lcom/android/launcher/folder/download/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayAppsMarketInfoList:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$6;

    invoke-direct {v4, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$6;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/exceptionmonitor/util/c;

    invoke-direct {v5, v4, v2}, Lcom/android/exceptionmonitor/util/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_a5

    :cond_69
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$7;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$7;-><init>(Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;I)V

    new-instance v5, Lcom/android/launcher/folder/download/model/b;

    invoke-direct {v5, v4, v3}, Lcom/android/launcher/folder/download/model/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularMarketInfoList:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$8;

    invoke-direct {v4, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$8;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/launcher/folder/download/c;

    invoke-direct {v5, v4, v2}, Lcom/android/launcher/folder/download/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    new-instance v4, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$9;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$9;-><init>(Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;I)V

    new-instance v5, Lcom/android/launcher/folder/download/a;

    invoke-direct {v5, v4, v2}, Lcom/android/launcher/folder/download/a;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopMarketInfoList:Ljava/util/List;

    new-instance v2, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$10;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$10;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/launcher/folder/download/model/c;

    invoke-direct {v4, v2, v3}, Lcom/android/launcher/folder/download/model/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :goto_a5
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    new-instance v2, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$11;-><init>(Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;I)V

    new-instance v4, Lcom/android/launcher/folder/download/model/c;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Lcom/android/launcher/folder/download/model/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllMarketInfoList:Ljava/util/List;

    new-instance v2, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$12;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$12;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/launcher/folder/download/b;

    invoke-direct {v4, v2, v3}, Lcom/android/launcher/folder/download/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mLatestMarketRecommendInfoList:Ljava/util/List;

    new-instance v2, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$13;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$13;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/exceptionmonitor/util/c;

    invoke-direct {v4, v2, v3}, Lcom/android/exceptionmonitor/util/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMarketRecommendInfoList:Ljava/util/List;

    new-instance v2, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$14;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$14;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/android/launcher/folder/download/model/b;

    invoke-direct {p1, v2, v1}, Lcom/android/launcher/folder/download/model/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_e2
    .catchall {:try_start_1 .. :try_end_e2} :catchall_e4

    monitor-exit p0

    return-void

    :catchall_e4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeMarketItemsByRecommendId(I)V
    .registers 6

    monitor-enter p0

    packed-switch p1, :pswitch_data_6a

    goto :goto_46

    :pswitch_5  #0x6
    :try_start_5
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayAppsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_46

    :pswitch_10  #0x5
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_46

    :pswitch_1b  #0x4
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_46

    :pswitch_26  #0x3
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_46

    :pswitch_31  #0x2
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_46

    :pswitch_3c  #0x1
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_46
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mLatestMarketRecommendInfoList:Ljava/util/List;

    new-instance v1, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByRecommendId$1;

    invoke-direct {v1, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByRecommendId$1;-><init>(I)V

    new-instance v2, Lcom/android/launcher/folder/download/b;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/launcher/folder/download/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMarketRecommendInfoList:Ljava/util/List;

    new-instance v1, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByRecommendId$2;

    invoke-direct {v1, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByRecommendId$2;-><init>(I)V

    new-instance p1, Lcom/android/exceptionmonitor/util/c;

    invoke-direct {p1, v1, v3}, Lcom/android/exceptionmonitor/util/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_65
    .catchall {:try_start_5 .. :try_end_65} :catchall_67

    monitor-exit p0

    return-void

    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_31  #00000002
        :pswitch_26  #00000003
        :pswitch_1b  #00000004
        :pswitch_10  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method
