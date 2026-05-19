.class public final Lcom/android/launcher3/allapps/branch/BranchUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BRANCH_DECLARE_DIALOG_ONCE:Z = true

.field public static final INSTANCE:Lcom/android/launcher3/allapps/branch/BranchUtils;

.field private static final MARKET_PROTOCOL:Ljava/lang/String; = "market://details?id=%s&token=%s&caller=%s&style=2&atd=false&disableToast=true"

.field public static final TAG:Ljava/lang/String; = "BranchUtils"

.field private static final TOKEN:Ljava/lang/String; = "08f4d9d4d7629573"

.field private static final memorySupport$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchUtils;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchUtils;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchUtils;

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchUtils$memorySupport$2;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchUtils$memorySupport$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchUtils;->memorySupport$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTotalMemoryInfo(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchUtils;->getTotalMemoryInfo(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final drawable2Bitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_24

    if-gtz v2, :cond_11

    goto :goto_24

    :cond_11
    if-lez p1, :cond_15

    move v4, p1

    goto :goto_16

    :cond_15
    move v4, v1

    :goto_16
    if-lez p2, :cond_1a

    move v5, p2

    goto :goto_1b

    :cond_1a
    move v5, v2

    :goto_1b
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_24
    :goto_24
    return-object v0
.end method

.method public static synthetic drawable2Bitmap$default(Landroid/graphics/drawable/Drawable;IIILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 6

    and-int/lit8 p4, p3, 0x2

    const/4 v0, -0x1

    if-eqz p4, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_b

    move p2, v0

    :cond_b
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final getLabelByPkgName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_1d

    :catch_10
    move-exception p0

    const-string v0, "e:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "BranchUtils"

    invoke-static {p0, v0, v2}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object p0, v1

    :goto_1d
    if-eqz p0, :cond_27

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_27

    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_27
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getTotalMemoryInfo(Landroid/content/Context;)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getTotalMemory()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getbogusTotalMemory(J)J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static final isFirstBoot()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v0

    return v0
.end method

.method public static final jump(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "result:false"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_15

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_15

    :cond_13
    move v3, v1

    goto :goto_16

    :cond_15
    :goto_15
    move v3, v2

    :goto_16
    const-string v4, "BranchUtils"

    if-eqz v3, :cond_20

    const-string p0, "jump not support nullOrBlank"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v1

    const-string p1, "08f4d9d4d7629573"

    aput-object p1, v5, v2

    const/4 p1, 0x2

    const-string v1, "com.android.launcher"

    aput-object v1, v5, p1

    const-string/jumbo p1, "market://details?id=%s&token=%s&caller=%s&style=2&atd=false&disableToast=true"

    const-string v1, "format(format, *args)"

    invoke-static {v5, v3, p1, v1}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "jump marketUri = "

    invoke-static {v1, p1, v4}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_56

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_56
    sget-object v2, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {v2}, Lcom/android/common/util/PackageCompatUtils$Companion;->getMarketPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_69} :catch_72
    .catchall {:try_start_3e .. :try_end_69} :catchall_70

    const-string/jumbo p0, "result:true"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :catchall_70
    move-exception p0

    goto :goto_8f

    :catch_72
    move-exception p0

    :try_start_73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_73 .. :try_end_8b} :catchall_70

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8e
    return-void

    :goto_8f
    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static final needJumpMarket(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_12

    invoke-static {p0}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_12

    :cond_10
    move v2, v0

    goto :goto_13

    :cond_12
    :goto_12
    move v2, v1

    :goto_13
    if-nez v2, :cond_2a

    sget-object v2, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v2, p1, p0}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2a

    sget-object p0, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {p0}, Lcom/android/common/util/PackageCompatUtils$Companion;->getMarketPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    move v0, v1

    :cond_2a
    return v0
.end method


# virtual methods
.method public final getMemorySupport()Z
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchUtils;->memorySupport$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
