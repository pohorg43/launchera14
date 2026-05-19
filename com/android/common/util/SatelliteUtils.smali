.class public final Lcom/android/common/util/SatelliteUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/common/util/SatelliteUtils;

.field private static final PHONE_BOOK_CLASS_NAME:Ljava/lang/String; = "com.android.contacts.PeopleActivityAlias"

.field private static final TAG:Ljava/lang/String; = "SatelliteUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/SatelliteUtils;

    invoke-direct {v0}, Lcom/android/common/util/SatelliteUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/SatelliteUtils;->INSTANCE:Lcom/android/common/util/SatelliteUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isSatelliteApiSupport()Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "SatelliteUtils"

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-ge v0, v2, :cond_f

    const-string v0, " isSatelliteApiSupport, the current SDK version is lower than T version. "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_f
    sget v0, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    sget v4, Lcom/oplus/os/OplusBuild$VERSION;->SDK_SUB_VERSION:I

    const/16 v5, 0x1f

    const/4 v6, 0x1

    if-ne v0, v2, :cond_1c

    if-lt v4, v5, :cond_1c

    move v7, v6

    goto :goto_1d

    :cond_1c
    move v7, v3

    :goto_1d
    if-ne v0, v5, :cond_25

    const/16 v5, 0x17

    if-lt v4, v5, :cond_25

    move v5, v6

    goto :goto_26

    :cond_25
    move v5, v3

    :goto_26
    if-gt v0, v2, :cond_4a

    if-nez v7, :cond_4a

    if-eqz v5, :cond_2d

    goto :goto_4a

    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSatelliteApiSupport, satellite communication API is not supported: api: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subApi: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4a
    :goto_4a
    return v6
.end method

.method public static final declared-synchronized satelliteBadgeDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/android/common/util/SatelliteUtils;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_74

    if-nez p1, :cond_9

    goto :goto_74

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "satelliteAppArrayPackage"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    array-length v4, v2

    :goto_1c
    if-ge v3, v4, :cond_72

    aget-object v5, v2, v3

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_6f

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_31

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_32

    :cond_31
    move-object v6, v1

    :goto_32
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    const-string v5, "com.android.contacts.PeopleActivityAlias"

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_45

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    goto :goto_46

    :cond_45
    move-object v6, v1

    :goto_46
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/theme/LauncherIconConfig;->getUXScalar(Landroid/content/res/Resources;)F

    move-result p1

    const v1, 0x7f08093c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    int-to-float v2, v2

    div-float/2addr v2, p1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, p1, v3, p0}, Lcom/android/common/util/IconUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_6d
    .catchall {:try_start_9 .. :try_end_6d} :catchall_7d

    monitor-exit v0

    return-object p1

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_72
    monitor-exit v0

    return-object v1

    :cond_74
    :goto_74
    :try_start_74
    const-string p0, "SatelliteUtils"

    const-string p1, "There is invalid data for drawing satellite badges. The content is null or The itemInfo is null."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_7d

    monitor-exit v0

    return-object v1

    :catchall_7d
    move-exception p0

    monitor-exit v0

    throw p0
.end method
