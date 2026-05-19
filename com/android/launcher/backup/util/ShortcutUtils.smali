.class public final Lcom/android/launcher/backup/util/ShortcutUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortcutUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutUtils.kt\ncom/android/launcher/backup/util/ShortcutUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,507:1\n1855#2,2:508\n1#3:510\n*S KotlinDebug\n*F\n+ 1 ShortcutUtils.kt\ncom/android/launcher/backup/util/ShortcutUtils\n*L\n226#1:508,2\n*E\n"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INSTANCE:Lcom/android/launcher/backup/util/ShortcutUtils;

.field private static final SKIP_VERIFY_CALLER:Ljava/lang/String; = "needSkipVerifyCaller"

.field private static final TAG:Ljava/lang/String; = "ShortcutUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/util/ShortcutUtils;

    invoke-direct {v0}, Lcom/android/launcher/backup/util/ShortcutUtils;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/util/ShortcutUtils;->INSTANCE:Lcom/android/launcher/backup/util/ShortcutUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpShortcuts(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "prefix"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PinnedShortcuts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "user"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dump"

    move-object v5, v0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/ShortcutUtils;->requestPinnedShortcuts(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x9

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static final getBitmapInfoFromBytes(Landroid/content/Context;[B)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "getBitmapInfoFromBytes close e:"

    const/4 v1, 0x0

    const-string v2, "ShortcutUtils"

    if-eqz p1, :cond_6c

    array-length v3, p1

    const/4 v4, 0x0

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    move v3, v4

    :goto_e
    if-eqz v3, :cond_11

    goto :goto_6c

    :cond_11
    :try_start_11
    invoke-static {p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_30
    .catchall {:try_start_11 .. :try_end_15} :catchall_2e

    :try_start_15
    array-length v3, p1

    invoke-static {p1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_2c
    .catchall {:try_start_15 .. :try_end_1e} :catchall_29

    :try_start_1e
    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_5f

    :catch_22
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_52

    :catchall_29
    move-exception p1

    move-object v1, p0

    goto :goto_60

    :catch_2c
    move-exception p1

    goto :goto_32

    :catchall_2e
    move-exception p0

    goto :goto_61

    :catch_30
    move-exception p1

    move-object p0, v1

    :goto_32
    :try_start_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmapInfoFromBytes create e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_29

    if-eqz p0, :cond_5f

    :try_start_48
    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_5f

    :catch_4c
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    return-object v1

    :goto_60
    move-object p0, p1

    :goto_61
    if-eqz v1, :cond_6b

    :try_start_63
    invoke-virtual {v1}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception p1

    invoke-static {v0, p1, v2}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    throw p0

    :cond_6c
    :goto_6c
    const-string p0, "getBitmapInfoFromBytes iconBytes is null!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getShortcutIconFromStr(Ljava/lang/String;)[B
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "ShortcutUtils"

    if-eqz p0, :cond_1b

    :try_start_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    move v2, v3

    :goto_f
    if-eqz v2, :cond_12

    goto :goto_1b

    :cond_12
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/GZipUtils;->uncompress([B)[B

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    const-string p0, "getShortcutIconFromStr encodeStr is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v0

    :catchall_21
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2d

    goto :goto_32

    :cond_2d
    const-string v2, "getShortcutIconFromStr e:"

    invoke-static {v2, p0, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_32
    return-object v0
.end method

.method public static final getShortcutIconStr([B)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ShortcutUtils"

    const-string v1, ""

    if-eqz p0, :cond_21

    :try_start_6
    array-length v2, p0

    const/4 v3, 0x0

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    move v2, v3

    :goto_d
    if-eqz v2, :cond_10

    goto :goto_21

    :cond_10
    invoke-static {p0}, Lcom/android/common/util/GZipUtils;->compress([B)[B

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-static {p0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-nez p0, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v1, p0

    :goto_20
    return-object v1

    :cond_21
    :goto_21
    const-string p0, "getShortcutIconStr bytes is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object v1

    :catchall_27
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_33

    goto :goto_38

    :cond_33
    const-string v2, "getShortcutIconStr e:"

    invoke-static {v2, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_38
    return-object v1
.end method

.method public static final getShortcutInfoFromStr(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ShortcutUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_2a

    :try_start_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    move v2, v3

    :goto_f
    if-eqz v2, :cond_12

    goto :goto_2a

    :cond_12
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/GZipUtils;->uncompress([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->unmarshall([B)Landroid/os/Parcel;

    move-result-object p0

    if-eqz p0, :cond_29

    sget-object v2, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    move-object v1, p0

    :cond_29
    return-object v1

    :cond_2a
    :goto_2a
    const-string p0, "getShortcutInfoFromStr encodeStr is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-object v1

    :catchall_30
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3c

    goto :goto_41

    :cond_3c
    const-string v2, "getShortcutInfoFromStr e:"

    invoke-static {v2, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_41
    return-object v1
.end method

.method public static final getShortcutInfoStr(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ShortcutUtils"

    const-string v1, ""

    if-nez p0, :cond_c

    :try_start_6
    const-string p0, "getShortcutInfoStr shortcutInfo is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_c
    invoke-static {p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/GZipUtils;->compress([B)[B

    move-result-object p0

    if-eqz p0, :cond_1c

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_22

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    if-nez p0, :cond_20

    goto :goto_21

    :cond_20
    move-object v1, p0

    :goto_21
    return-object v1

    :catchall_22
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2e

    goto :goto_33

    :cond_2e
    const-string v2, "getShortcutInfoStr e:"

    invoke-static {v2, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_33
    return-object v1
.end method

.method public static final initAllUserPinnedShortcuts(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/UserManager;

    const-string/jumbo v1, "userManager"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, v0

    invoke-static/range {v1 .. v11}, Lcom/android/launcher/backup/util/ShortcutUtils;->initAllUserPinnedShortcutsAndUnlockedUsers$default(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserManager;ZLjava/util/Map;ZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;ILjava/lang/Object;)V

    return-object v0
.end method

.method public static final initAllUserPinnedShortcutsAndUnlockedUsers(Ljava/lang/String;Landroid/content/Context;)Lh4/j;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lh4/j<",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/UserManager;

    const-string/jumbo v1, "userManager"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x180

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, v0

    move-object v7, v12

    invoke-static/range {v1 .. v11}, Lcom/android/launcher/backup/util/ShortcutUtils;->initAllUserPinnedShortcutsAndUnlockedUsers$default(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserManager;ZLjava/util/Map;ZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;ILjava/lang/Object;)V

    new-instance p0, Lh4/j;

    invoke-direct {p0, v0, v12}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final initAllUserPinnedShortcutsAndUnlockedUsers(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserManager;ZLjava/util/Map;ZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/os/UserManager;",
            "Z",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;Z",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    const-string/jumbo v0, "source"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userManager"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sysPinnedShortcutMap"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v15, "ShortcutUtils"

    if-eqz v0, :cond_32

    const-string v0, " initAllUserPinnedShortcutsAndUnlockedUsers"

    invoke-static {v8, v0, v15}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_139

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/UserHandle;

    invoke-virtual {v10, v7}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v5

    if-eqz v13, :cond_50

    invoke-virtual {v13, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_50
    if-eqz v14, :cond_5d

    invoke-virtual {v10, v7}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v5, v6, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5d
    invoke-virtual {v10, v7}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v17

    if-eqz v17, :cond_e5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "user"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v3, p4

    move-object/from16 v4, v18

    move-wide/from16 v22, v5

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object v10, v7

    move-object/from16 v7, v21

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/backup/util/ShortcutUtils;->requestPinnedShortcuts$default(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_cc

    if-eqz p3, :cond_d5

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isLayoutLoadFromRestore()Z

    move-result v0

    if-eqz v0, :cond_d5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " when backRestore load, tryRePinRestoreShortcuts! user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; allUser pinned size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v9, v10, v11}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->tryRePinRestoreShortcuts(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;)V

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object/from16 v3, p4

    move-object/from16 v4, v18

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/backup/util/ShortcutUtils;->requestPinnedShortcuts$default(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;)Z

    goto :goto_d5

    :cond_cc
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->shortcutsLoaded(Z)V

    move/from16 v17, v1

    :cond_d5
    :goto_d5
    if-eqz p5, :cond_e8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "statisticsBuilder.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsPinnedShortcutsD(Ljava/lang/String;)V

    goto :goto_e8

    :cond_e5
    move-wide/from16 v22, v5

    move-object v10, v7

    :cond_e8
    :goto_e8
    move/from16 v0, v17

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_12a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " serialNo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v22

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", identifier:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", unlocked:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; allUser pinned.size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12c

    :cond_12a
    move-wide/from16 v2, v22

    :goto_12c
    if-eqz v12, :cond_135

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v12, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_135
    move-object/from16 v10, p2

    goto/16 :goto_3a

    :cond_139
    return-void
.end method

.method public static synthetic initAllUserPinnedShortcutsAndUnlockedUsers$default(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserManager;ZLjava/util/Map;ZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;ILjava/lang/Object;)V
    .registers 22

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move v5, v1

    goto :goto_a

    :cond_9
    move v5, p3

    :goto_a
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    move v7, v1

    goto :goto_13

    :cond_11
    move/from16 v7, p5

    :goto_13
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    move-object v8, v2

    goto :goto_1c

    :cond_1a
    move-object/from16 v8, p6

    :goto_1c
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_22

    move-object v9, v2

    goto :goto_24

    :cond_22
    move-object/from16 v9, p7

    :goto_24
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    move-object v10, v2

    goto :goto_2c

    :cond_2a
    move-object/from16 v10, p8

    :goto_2c
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v2 .. v10}, Lcom/android/launcher/backup/util/ShortcutUtils;->initAllUserPinnedShortcutsAndUnlockedUsers(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserManager;ZLjava/util/Map;ZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-void
.end method

.method public static final isDynamicShortcutSupport(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static final isSplitScreenCombination(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0}, Lcom/android/common/util/SplitScreenUtils;->isCombinationForRestore(Landroid/os/BaseBundle;)Z

    move-result p0

    return p0
.end method

.method public static final isSplitScreenCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    invoke-static {p0}, Lcom/android/common/util/SplitScreenUtils;->isCombinationForRestore(Landroid/os/BaseBundle;)Z

    move-result p0

    return p0
.end method

.method private static final marshall(Landroid/os/Parcelable;)[B
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_c

    const-string p0, "ShortcutUtils"

    const-string/jumbo v0, "marshall parcelable is null!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public static final pinShortcut(Landroid/content/Context;Lcom/android/launcher3/shortcuts/ShortcutKey;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortcutId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortcutPkg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_18
    invoke-static {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p0

    if-eqz p1, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->pinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->wasLastCallSuccess()Z

    move-result v1
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_89

    goto :goto_2a

    :cond_29
    move v1, v0

    :goto_2a
    :try_start_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3, v3, p4}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_83

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_45

    goto :goto_46

    :cond_45
    move p3, v0

    :goto_46
    if-eqz p3, :cond_49

    goto :goto_83

    :cond_49
    const-string/jumbo p2, "pinShortcut result:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_70
    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "statisticsBuilder.toString()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsRestoreLogD(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_2a .. :try_end_82} :catchall_86

    move v0, v1

    :cond_83
    :goto_83
    :try_start_83
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_89

    goto :goto_8e

    :catchall_86
    move-exception p0

    move v0, v1

    goto :goto_8a

    :catchall_89
    move-exception p0

    :goto_8a
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_8e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_95

    goto :goto_b2

    :cond_95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "pinShortcut e:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsRestoreLogE(Ljava/lang/String;)V

    :goto_b2
    return v0
.end method

.method public static final requestPinShortcut(Landroid/content/Context;Lcom/android/launcher3/shortcuts/ShortcutKey;ILandroid/content/pm/ShortcutInfo;[BLjava/util/concurrent/ConcurrentHashMap;Landroid/content/pm/ShortcutManager;)Lh4/j;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "I",
            "Landroid/content/pm/ShortcutInfo;",
            "[B",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;",
            "Landroid/content/pm/ShortcutManager;",
            ")",
            "Lh4/j<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sm"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ", "

    if-nez p3, :cond_34

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "requestPinShortcut shortcutInfo is null! dynamicShortcutSupportState:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsRestoreLogD(Ljava/lang/String;)V

    new-instance p0, Lh4/j;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_34
    const p1, 0x7f12000a

    invoke-static {p1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f12000f

    invoke-static {p2}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_23c

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_59

    goto/16 :goto_23c

    :cond_59
    invoke-static {p3}, Lcom/android/launcher/backup/util/ShortcutUtils;->isSplitScreenCombination(Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const-string/jumbo p0, "requestPinShortcut shortcutInfo is splitScreenCombination! "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p3, v1}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsRestoreLogD(Ljava/lang/String;)V

    new-instance p0, Lh4/j;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_7e
    :try_start_7e
    invoke-static {}, Lcom/android/launcher3/shortcuts/ShortcutKey;->makeBaseIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p2, "makeBaseIntent().setComp…nt(shortcutInfo.activity)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/16 v2, 0x40

    invoke-virtual {p2, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestPinShortcut shortcutActivity is notExist! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsRestoreLogD(Ljava/lang/String;)V

    new-instance p1, Lh4/j;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_c3
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_c5
    .catchall {:try_start_7e .. :try_end_c5} :catchall_c6

    goto :goto_cb

    :catchall_c6
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_cb
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_d2

    goto :goto_f1

    :cond_d2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPinShortcut queryIntentActivities e:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsRestoreLogE(Ljava/lang/String;)V

    :goto_f1
    :try_start_f1
    sget-object p1, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isCanAddedNoCornerShortcutItem(Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    if-nez p1, :cond_11c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "requestPinShortcut isCanAddedNoCornerShortcutItem false! "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsRestoreLogD(Ljava/lang/String;)V

    new-instance p0, Lh4/j;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_11c
    invoke-static {p0, p4}, Lcom/android/launcher/backup/util/ShortcutUtils;->getBitmapInfoFromBytes(Landroid/content/Context;[B)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    if-eqz p1, :cond_130

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_130

    const-string p2, "icon"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_131

    :cond_130
    move-object p1, v1

    :goto_131
    if-nez p1, :cond_154

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "requestPinShortcut shortcutIcon is null! "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsRestoreLogD(Ljava/lang/String;)V

    new-instance p0, Lh4/j;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_154
    if-eqz p5, :cond_161

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    goto :goto_162

    :cond_161
    move-object p2, v1

    :goto_162
    if-nez p2, :cond_179

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p2

    if-eqz p5, :cond_179

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    :cond_179
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo p5, "needSkipVerifyCaller"

    const/4 v2, 0x1

    invoke-virtual {p0, p5, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p5, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p5, p2, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/launcher3/shortcuts/ShortcutKey;->makeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object p5

    if-nez p5, :cond_1a8

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p5

    :cond_1a8
    invoke-virtual {p2, p5}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p6, p0, v1}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "requestPinShortcut result:"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, ", ["

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "]"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", shortcutIcon:"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", shortcutIconBytes:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "statisticsBuilder.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsRestoreLogD(Ljava/lang/String;)V

    new-instance p1, Lh4/j;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p0, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_203
    .catchall {:try_start_f1 .. :try_end_203} :catchall_204

    return-object p1

    :catchall_204
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_236

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestPinShortcut e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsRestoreLogE(Ljava/lang/String;)V

    new-instance p0, Lh4/j;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_236
    new-instance p0, Lh4/c;

    invoke-direct {p0}, Lh4/c;-><init>()V

    throw p0

    :cond_23c
    :goto_23c
    const-string/jumbo p0, "requestPinShortcut shortcutInfo is instantPlatform! "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p3, v1}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/backup/util/ShortcutUtils;->statisticsRestoreLogD(Ljava/lang/String;)V

    new-instance p0, Lh4/j;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final requestPinnedShortcuts(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sysPinnedShortcutMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object p1

    if-eqz p5, :cond_2a

    const/16 v0, 0x9

    invoke-static {p5, v0}, Landroidx/exifinterface/media/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p5

    goto :goto_2c

    :cond_2a
    const-string p5, ""

    :goto_2c
    if-eqz p4, :cond_54

    invoke-static {p4}, Lk7/k;->c(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " system pinnedShortcuts user:"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", size:"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", success:"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_54
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result p0

    if-eqz p0, :cond_af

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5e
    :goto_5e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_ad

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p2

    const-string/jumbo v0, "shortcutKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortcutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_5e

    const-string p2, "\n"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "isManifest:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isDynamic:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", info:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_ad
    const/4 p0, 0x1

    goto :goto_b0

    :cond_af
    const/4 p0, 0x0

    :goto_b0
    return p0
.end method

.method public static synthetic requestPinnedShortcuts$default(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;)Z
    .registers 15

    and-int/lit8 p7, p6, 0x10

    const/4 v0, 0x0

    if-eqz p7, :cond_7

    move-object v5, v0

    goto :goto_8

    :cond_7
    move-object v5, p4

    :goto_8
    and-int/lit8 p4, p6, 0x20

    if-eqz p4, :cond_e

    move-object v6, v0

    goto :goto_f

    :cond_e
    move-object v6, p5

    :goto_f
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/util/ShortcutUtils;->requestPinnedShortcuts(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final statisticsPinnedShortcutsD(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ShortcutUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v1, v0, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordPinnedShortcuts(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final statisticsRestoreLogD(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ShortcutUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v1, v0, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final statisticsRestoreLogE(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ShortcutUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v1, v0, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final unmarshall([B)Landroid/os/Parcel;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_18

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    if-eqz v0, :cond_c

    goto :goto_18

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v0

    :cond_18
    :goto_18
    const-string p0, "ShortcutUtils"

    const-string/jumbo v0, "unmarshall bytes is null!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
