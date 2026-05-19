.class public final Lcom/oplus/utrace/utils/SharedPreferencesUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/utils/SharedPreferencesUtil;

.field private static sps:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/utils/SharedPreferencesUtil;

    invoke-direct {v0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;-><init>()V

    sput-object v0, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->INSTANCE:Lcom/oplus/utrace/utils/SharedPreferencesUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-static {p0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getSps(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1e
    :goto_1e
    return v1
.end method

.method public static final getInt(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-static {p0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getSps(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_1e
    :goto_1e
    return v1
.end method

.method public static final getLong(Landroid/content/Context;Ljava/lang/String;)J
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-static {p0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getSps(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_1f
    :goto_1f
    return-wide v1
.end method

.method private static final getSps(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->sps:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1f

    invoke-static {p0}, Lcom/oplus/utrace/utils/UtilsKt;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->INSTANCE:Lcom/oplus/utrace/utils/SharedPreferencesUtil;

    monitor-enter v0

    :try_start_d
    sget-object v1, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->sps:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1a

    const-string v1, "utrace"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->sps:Landroid/content/SharedPreferences;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1f
    :goto_1f
    sget-object p0, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->sps:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    invoke-static {p0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getSps(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_1b

    goto :goto_23

    :cond_1b
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_22

    goto :goto_23

    :cond_22
    move-object v0, p0

    :goto_23
    return-object v0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    invoke-static {p0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getSps(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_26

    :cond_19
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_20

    goto :goto_26

    :cond_20
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_26
    :goto_26
    return-void
.end method

.method public static final putInt(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2c

    invoke-static {p0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getSps(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_2c

    :cond_19
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_20

    goto :goto_2c

    :cond_20
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_29

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2c

    :cond_29
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static synthetic putInt$default(Landroid/content/Context;Ljava/lang/String;IZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->putInt(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static final putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    invoke-static {p0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getSps(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_26

    :cond_19
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_20

    goto :goto_26

    :cond_20
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_26
    :goto_26
    return-void
.end method

.method public static final putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2b

    invoke-static {p0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getSps(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_1e

    goto :goto_2b

    :cond_1e
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_25

    goto :goto_2b

    :cond_25
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static final remove(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    invoke-static {p0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getSps(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_26

    :cond_19
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_20

    goto :goto_26

    :cond_20
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_26
    :goto_26
    return-void
.end method
