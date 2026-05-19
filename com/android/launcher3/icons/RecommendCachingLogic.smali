.class public final Lcom/android/launcher3/icons/RecommendCachingLogic;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/cache/CachingLogic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/RecommendCachingLogic$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/icons/cache/CachingLogic<",
        "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecommendCachingLogic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecommendCachingLogic.kt\ncom/android/launcher3/icons/RecommendCachingLogic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1#2:88\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/icons/RecommendCachingLogic$Companion;

.field private static final TAG:Ljava/lang/String; = "RecommendCachingLogic"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/icons/RecommendCachingLogic$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/RecommendCachingLogic$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/icons/RecommendCachingLogic;->Companion:Lcom/android/launcher3/icons/RecommendCachingLogic$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponent(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Landroid/content/ComponentName;
    .registers 2

    const-string p0, "itemInfoWithIcon"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .registers 2

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/RecommendCachingLogic;->getComponent(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Ljava/lang/CharSequence;
    .registers 2

    const-string p0, "itemInfoWithIcon"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p0, :cond_b

    const-string p0, ""

    :cond_b
    return-object p0
.end method

.method public bridge synthetic getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/RecommendCachingLogic;->getLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUser(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Landroid/os/UserHandle;
    .registers 2

    const-string p0, "itemInfoWithIcon"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string p1, "itemInfoWithIcon.user"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getUser(Ljava/lang/Object;)Landroid/os/UserHandle;
    .registers 2

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/RecommendCachingLogic;->getUser(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public loadIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 8

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "itemInfoWithIcon"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMIconUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->handleAppUri(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_af

    :cond_22
    const-string v1, "loadIcon: market bitmapInfo is invalid bitmapInfo!!!  pkgName:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RecommendCachingLogic"

    invoke-static {v3, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v1

    iget-object v4, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->getBitmapData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_9b

    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p1

    array-length v0, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    const-string v0, "loadIcon: from iconBlob  bitmapInfo:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    xor-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", bitmapInfo.icon:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_7b

    move v4, v1

    :cond_7b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", pkgName:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p1

    goto :goto_b0

    :cond_9b
    const-string p0, "loadIcon: iconBlob = null!!! pkgName:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    move-object p0, v0

    :cond_b0
    :goto_b0
    const-string p1, "bitmapInfo"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 3

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/RecommendCachingLogic;->loadIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method
