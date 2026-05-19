.class public final Lcom/android/common/util/SplitScreenUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/common/util/SplitScreenUtils;

.field private static final NUM_2:I = 0x2

.field private static final NUM_3:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SplitScreenUtils"

.field private static constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static iconBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static makeIconMethod:Ljava/lang/reflect/Method;

.field private static makeIconMethodOlder:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/SplitScreenUtils;

    invoke-direct {v0}, Lcom/android/common/util/SplitScreenUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/SplitScreenUtils;->INSTANCE:Lcom/android/common/util/SplitScreenUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCombinationBitmapOriginal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Ljava/lang/String;

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_12

    if-eqz p3, :cond_9f

    :cond_12
    if-eqz p1, :cond_9f

    if-nez p2, :cond_18

    goto/16 :goto_9f

    :cond_18
    sget-object p3, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    if-nez p3, :cond_24

    const-string p3, "com.oplus.util.PairTaskIconBuilder"

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    sput-object p3, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    :cond_24
    sget-object p3, Lcom/android/common/util/SplitScreenUtils;->constructor:Ljava/lang/reflect/Constructor;

    if-nez p3, :cond_39

    sget-object p3, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v1, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v1, v3

    invoke-virtual {p3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    sput-object p3, Lcom/android/common/util/SplitScreenUtils;->constructor:Ljava/lang/reflect/Constructor;

    :cond_39
    sget-object p3, Lcom/android/common/util/SplitScreenUtils;->constructor:Ljava/lang/reflect/Constructor;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v1, Lcom/android/common/util/SplitScreenUtils;->makeIconMethodOlder:Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-nez v1, :cond_69

    sget-object v1, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v3

    aput-object v0, v8, v4

    const-class v9, Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v6

    aput-object v0, v8, v5

    const-string/jumbo v0, "makeIcon"

    invoke-virtual {v1, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/SplitScreenUtils;->makeIconMethodOlder:Ljava/lang/reflect/Method;

    :cond_69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_6d
    sget-object v0, Lcom/android/common/util/SplitScreenUtils;->makeIconMethodOlder:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v1, v3

    aput-object p1, v1, v4

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    aput-object p0, v1, v6

    aput-object p2, v1, v5

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_8f

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_8e
    .catchall {:try_start_6d .. :try_end_8e} :catchall_91

    goto :goto_96

    :cond_8f
    move-object p0, v2

    goto :goto_96

    :catchall_91
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_96
    instance-of p1, p0, Lh4/k$a;

    if-eqz p1, :cond_9b

    goto :goto_9c

    :cond_9b
    move-object v2, p0

    :goto_9c
    check-cast v2, Landroid/graphics/Bitmap;

    return-object v2

    :cond_9f
    :goto_9f
    const-string p0, "getCombinationBitmapOriginal(), pkgName null ? "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_a9

    if-nez p2, :cond_aa

    :cond_a9
    move v3, v4

    :cond_aa
    const-string p1, "SplitScreenUtils"

    invoke-static {p0, v3, p1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-object v2
.end method

.method public static final getCombinationBitmapOriginal(Landroid/content/Context;[Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    const-string v1, "SplitScreenUtils"

    const/4 v2, 0x0

    if-nez v0, :cond_10

    if-eqz p2, :cond_17

    :cond_10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p1

    const/4 v3, 0x2

    if-ge v0, v3, :cond_1d

    :cond_17
    const-string p0, "getCombinationBitmapOriginal(), pkgName null?"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1d
    sget-object v0, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    if-nez v0, :cond_29

    const-string v0, "com.oplus.util.PairTaskIconBuilder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    :cond_29
    sget-object v0, Lcom/android/common/util/SplitScreenUtils;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_40

    sget-object v0, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/SplitScreenUtils;->constructor:Ljava/lang/reflect/Constructor;

    :cond_40
    sget-object v0, Lcom/android/common/util/SplitScreenUtils;->constructor:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p0, v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v6, Lcom/android/common/util/SplitScreenUtils;->makeIconMethod:Ljava/lang/reflect/Method;

    if-nez v6, :cond_86

    :try_start_51
    sget-object v6, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v7, "makeIcon"

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v4

    const-class v9, [Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/android/common/util/SplitScreenUtils;->makeIconMethod:Ljava/lang/reflect/Method;

    sget-object v6, Lh4/z;->a:Lh4/z;
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_6c

    goto :goto_71

    :catchall_6c
    move-exception v6

    invoke-static {v6}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    :goto_71
    invoke-static {v6}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_78

    goto :goto_86

    :cond_78
    const-string v0, "can\'t find method!! use older version!!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, p1, v4

    aget-object p1, p1, v5

    invoke-static {p0, v0, p1, p2}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapOriginal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_86
    :goto_86
    const-string/jumbo p2, "packageNames is  "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length v6, p1

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_9c
    aget-object p2, p1, v4

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string/jumbo v6, "pm.getApplicationIcon(packageNames[0])"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v6, p1, v5

    invoke-virtual {p0, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string/jumbo v7, "pm.getApplicationIcon(packageNames[1])"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, p1

    if-eq v7, v3, :cond_d0

    const/4 v8, 0x3

    if-eq v7, v8, :cond_bb

    return-object v2

    :cond_bb
    aget-object v7, p1, v3

    invoke-virtual {p0, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string/jumbo v7, "pm.getApplicationIcon(packageNames[2])"

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v8, [Landroid/graphics/drawable/Drawable;

    aput-object p2, v7, v4

    aput-object v6, v7, v5

    aput-object p0, v7, v3

    goto :goto_dc

    :cond_d0
    new-array v7, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p2, v7, v4

    aput-object v6, v7, v5
    :try_end_d6
    .catchall {:try_start_9c .. :try_end_d6} :catchall_d7

    goto :goto_dc

    :catchall_d7
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    :goto_dc
    invoke-static {v7}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_f7

    const-string p1, "getCombinationBitmapOriginal: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_f7
    instance-of p0, v7, Lh4/k$a;

    if-eqz p0, :cond_fc

    move-object v7, v2

    :cond_fc
    check-cast v7, [Landroid/graphics/drawable/Drawable;

    :try_start_fe
    sget-object p0, Lcom/android/common/util/SplitScreenUtils;->makeIconMethod:Ljava/lang/reflect/Method;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v7, p2, v4

    aput-object p1, p2, v5

    invoke-virtual {p0, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_114

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_113
    .catchall {:try_start_fe .. :try_end_113} :catchall_116

    goto :goto_11b

    :cond_114
    move-object p0, v2

    goto :goto_11b

    :catchall_116
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_11b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_135

    const-string p2, "getCombinationBitmapOriginal makeIcon: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_135
    instance-of p1, p0, Lh4/k$a;

    if-eqz p1, :cond_13a

    goto :goto_13b

    :cond_13a
    move-object v2, p0

    :goto_13b
    check-cast v2, Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public static synthetic getCombinationBitmapOriginal$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 6

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapOriginal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCombinationBitmapOriginal$default(Landroid/content/Context;[Ljava/lang/String;ZILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapOriginal(Landroid/content/Context;[Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final getCombinationBitmapStyle(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SplitScreenUtils"

    if-eqz p0, :cond_92

    if-nez p1, :cond_d

    goto/16 :goto_92

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-wide/16 v2, 0x0

    :try_start_13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    const-string/jumbo v5, "resources.configuration"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v2
    :try_end_21
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_13 .. :try_end_21} :catch_22

    goto :goto_37

    :catch_22
    move-exception v4

    const-string v5, "getUxIconConfig e:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v1

    if-nez v1, :cond_47

    const-string p1, "iconConfig is null at getSCBitmap."

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_47
    invoke-static {p2}, Lcom/android/common/util/SplitScreenUtils;->getCombinationPkgNames(Landroid/content/pm/ShortcutInfo;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_58

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, p2, v1, v2, v3}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapOriginal$default(Landroid/content/Context;[Ljava/lang/String;ZILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_57

    goto :goto_58

    :cond_57
    move-object p0, p2

    :cond_58
    :goto_58
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p2, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float p2, p2

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    const-string v1, "getCombinationBitmapStyle:dp.mIconVisiableSizePx.toFloat():"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "dp.iconSizePx.toFloat():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " scale:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/android/common/util/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_92
    :goto_92
    const-string p1, "Some parameters are null at getSCBitmap."

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final getCombinationPkgNames(Landroid/content/pm/ShortcutInfo;)[Ljava/lang/String;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4a

    if-nez p0, :cond_c

    goto :goto_4a

    :cond_c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "info.extras"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pkgName1"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkgName2"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pkgNames"

    invoke-virtual {p0, v7}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, "isSplitScreenCombination"

    invoke-virtual {p0, v8, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "isPsSplitScreenCombination"

    invoke-virtual {p0, v9, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz v8, :cond_46

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, p0, v3

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, p0, v2

    return-object p0

    :cond_46
    if-eqz p0, :cond_49

    return-object v7

    :cond_49
    return-object v1

    :cond_4a
    :goto_4a
    const-string v0, "getCombinationPkgNames(), info null ? "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_53

    goto :goto_54

    :cond_53
    move v2, v3

    :goto_54
    const-string p0, "SplitScreenUtils"

    invoke-static {v0, v2, p0}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-object v1
.end method

.method public static final isCombination(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    invoke-static {p0}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Landroid/os/BaseBundle;)Z

    move-result p0

    return p0
.end method

.method private static final isCombination(Landroid/os/BaseBundle;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    const-string v1, "isSplitScreenCombination"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    if-eqz p0, :cond_14

    const-string v2, "isPsSplitScreenCombination"

    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_15

    :cond_14
    move p0, v0

    :goto_15
    if-nez v1, :cond_19

    if-eqz p0, :cond_1a

    :cond_19
    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public static final isCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p0, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    invoke-static {p0}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Landroid/os/BaseBundle;)Z

    move-result p0

    return p0
.end method

.method public static final isCombinationForRestore(Landroid/os/BaseBundle;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Landroid/os/BaseBundle;)Z

    move-result p0

    return p0
.end method

.method public static final isDefaultCombination(Landroid/content/pm/ShortcutInfo;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    if-nez p0, :cond_a

    goto :goto_17

    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_16

    const-string v0, "isDefaultSC"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_16
    return v1

    :cond_17
    :goto_17
    const-string v0, "isDefaultCombination(), info null ? "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    move p0, v1

    :goto_22
    const-string v2, "SplitScreenUtils"

    invoke-static {v0, p0, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return v1
.end method
