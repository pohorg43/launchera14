.class public Lcom/android/launcher/share/ShareAppHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/share/ShareAppHelper$ShareAppHelperHolder;
    }
.end annotation


# static fields
.field private static final MASK_SYSTEM_APP:I = 0x81

.field private static final TAG:Ljava/lang/String; = "ShareAppHelper"


# instance fields
.field private mShareAppName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/share/ShareAppHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/share/ShareAppHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/share/ShareAppHelper;
    .registers 1

    invoke-static {}, Lcom/android/launcher/share/ShareAppHelper$ShareAppHelperHolder;->access$100()Lcom/android/launcher/share/ShareAppHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSharablePackageAndApkFile(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isSupportShareApk()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    if-eqz p1, :cond_73

    if-nez p2, :cond_f

    goto :goto_73

    :cond_f
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_16

    return-object v1

    :cond_16
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_1a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_23} :catch_24

    goto :goto_3b

    :catch_24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get app info failed: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ShareAppHelper"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :goto_3b
    if-nez p1, :cond_3e

    return-object v1

    :cond_3e
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_45

    return-object v1

    :cond_45
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    return-object v1

    :cond_4e
    new-instance v2, Ljava/io/File;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_62

    goto :goto_73

    :cond_62
    iget-object p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz p1, :cond_6d

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/share/ShareAppHelper;->setShareAppName(Ljava/lang/String;)V

    :cond_6d
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_73
    :goto_73
    return-object v1
.end method

.method public getShareAppName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/share/ShareAppHelper;->mShareAppName:Ljava/lang/String;

    return-object p0
.end method

.method public setShareAppName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/share/ShareAppHelper;->mShareAppName:Ljava/lang/String;

    return-void
.end method
