.class public Lcom/coui/appcompat/theme/COUIThemeOverlay;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/theme/COUIThemeOverlay$SingleTone;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String;

.field public static c:I

.field public static d:Z

.field public static e:Z

.field public static f:Z


# instance fields
.field public a:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "com.oplus.inner.content.res.ConfigurationWrapper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9

    move v2, v1

    goto :goto_a

    :catch_9
    move v2, v0

    :goto_a
    if-eqz v2, :cond_f

    const-string v2, "com.oplus.inner.content.res.ConfigurationWrapper"

    goto :goto_2f

    :cond_f
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->a()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/coui/appcompat/version/COUICompatUtil;->e:[I

    array-length v2, v2

    new-array v3, v2, [C

    move v4, v0

    :goto_1c
    if-ge v4, v2, :cond_2b

    sget-object v5, Lcom/coui/appcompat/version/COUICompatUtil;->e:[I

    aget v5, v5, v4

    sget-object v6, Lcom/coui/appcompat/version/COUICompatUtil;->b:[C

    aget-char v5, v6, v5

    aput-char v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2b
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    :goto_2f
    sput-object v2, Lcom/coui/appcompat/theme/COUIThemeOverlay;->b:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v4, v3, [C

    fill-array-data v4, :array_182

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    new-array v3, v3, [C

    fill-array-data v3, :array_18a

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_55

    :cond_53
    move v3, v0

    goto :goto_56

    :cond_55
    :goto_55
    move v3, v1

    :goto_56
    sput-boolean v3, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d:Z

    const/4 v3, 0x6

    new-array v4, v3, [C

    fill-array-data v4, :array_192

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    new-array v4, v3, [C

    fill-array-data v4, :array_19c

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    new-array v3, v3, [C

    fill-array-data v3, :array_1a6

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    goto :goto_89

    :cond_87
    move v3, v0

    goto :goto_8a

    :cond_89
    :goto_89
    move v3, v1

    :goto_8a
    sput-boolean v3, Lcom/coui/appcompat/theme/COUIThemeOverlay;->f:Z

    const/4 v3, 0x7

    new-array v4, v3, [C

    fill-array-data v4, :array_1b0

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    new-array v4, v3, [C

    fill-array-data v4, :array_1bc

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    new-array v4, v3, [C

    fill-array-data v4, :array_1c8

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    new-array v4, v3, [C

    fill-array-data v4, :array_1d4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    new-array v4, v3, [C

    fill-array-data v4, :array_1e0

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    new-array v3, v3, [C

    fill-array-data v3, :array_1ec

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    goto :goto_ea

    :cond_e8
    move v2, v0

    goto :goto_eb

    :cond_ea
    :goto_ea
    move v2, v1

    :goto_eb
    if-eqz v2, :cond_f5

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->a()I

    move-result v2

    if-lez v2, :cond_f5

    move v2, v1

    goto :goto_f6

    :cond_f5
    move v2, v0

    :goto_f6
    sput-boolean v2, Lcom/coui/appcompat/theme/COUIThemeOverlay;->e:Z

    :try_start_f8
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "ro.oplus.theme.version"

    aput-object v4, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_126

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_125} :catch_164

    goto :goto_127

    :cond_126
    move v3, v0

    :goto_127
    if-nez v3, :cond_17f

    :try_start_129
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->a()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/coui/appcompat/version/COUICompatUtil;->g:[I

    array-length v5, v5

    new-array v6, v5, [C

    move v7, v0

    :goto_138
    if-ge v7, v5, :cond_147

    sget-object v8, Lcom/coui/appcompat/version/COUICompatUtil;->g:[I

    aget v8, v8, v7

    sget-object v9, Lcom/coui/appcompat/version/COUICompatUtil;->b:[C

    aget-char v8, v9, v8

    aput-char v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_138

    :cond_147
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17f

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_161} :catch_162

    goto :goto_17f

    :catch_162
    move-exception v0

    goto :goto_167

    :catch_164
    move-exception v1

    move v3, v0

    move-object v0, v1

    :goto_167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompatVersion e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/coui/appcompat/log/COUILog;->a:Z

    const-string v1, "COUIThemeOverlay"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17f
    :goto_17f
    sput v3, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c:I

    return-void

    :array_182
    .array-data 2
        0x4fs
        0x50s
        0x50s
        0x4fs
    .end array-data

    :array_18a
    .array-data 2
        0x4fs
        0x70s
        0x70s
        0x6fs
    .end array-data

    :array_192
    .array-data 2
        0x52s
        0x45s
        0x41s
        0x4cs
        0x4ds
        0x45s
    .end array-data

    :array_19c
    .array-data 2
        0x52s
        0x65s
        0x61s
        0x6cs
        0x6ds
        0x65s
    .end array-data

    :array_1a6
    .array-data 2
        0x72s
        0x65s
        0x61s
        0x6cs
        0x6ds
        0x65s
    .end array-data

    :array_1b0
    .array-data 2
        0x4fs
        0x6es
        0x65s
        0x50s
        0x6cs
        0x75s
        0x73s
    .end array-data

    nop

    :array_1bc
    .array-data 2
        0x4fs
        0x4es
        0x45s
        0x50s
        0x4cs
        0x55s
        0x53s
    .end array-data

    nop

    :array_1c8
    .array-data 2
        0x47s
        0x41s
        0x4cs
        0x49s
        0x4cs
        0x45s
        0x49s
    .end array-data

    nop

    :array_1d4
    .array-data 2
        0x67s
        0x61s
        0x6cs
        0x69s
        0x6cs
        0x65s
        0x69s
    .end array-data

    nop

    :array_1e0
    .array-data 2
        0x46s
        0x41s
        0x52s
        0x41s
        0x44s
        0x41s
        0x59s
    .end array-data

    nop

    :array_1ec
    .array-data 2
        0x66s
        0x61s
        0x72s
        0x61s
        0x64s
        0x61s
        0x79s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static d()Lcom/coui/appcompat/theme/COUIThemeOverlay;
    .registers 1

    sget-object v0, Lcom/coui/appcompat/theme/COUIThemeOverlay$SingleTone;->a:Lcom/coui/appcompat/theme/COUIThemeOverlay;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_26

    :try_start_6
    iget-object v2, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_28

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->g(Landroid/content/Context;)V

    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->setTheme(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception p0

    goto :goto_2b

    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw p0

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_26

    throw p0
.end method

.method public b(Landroid/content/res/Configuration;)J
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "android.content.res.OplusBaseConfiguration"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9

    move v2, v0

    goto :goto_a

    :catch_9
    move v2, v1

    :goto_a
    const-wide/16 v3, 0x0

    if-nez v2, :cond_f

    return-wide v3

    :cond_f
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    if-eqz p0, :cond_18

    iget-wide v3, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    goto :goto_59

    :cond_18
    :try_start_18
    sget-object p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_59

    const-string v2, "getMaterialColor"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v5, v1

    invoke-virtual {p0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3f} :catch_40

    goto :goto_59

    :catch_40
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCOUITheme e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/coui/appcompat/log/COUILog;->a:Z

    const-string p1, "COUIThemeOverlay"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_59
    return-wide v3
.end method

.method public final c(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;
    .registers 3

    const-class p0, Landroid/content/res/OplusBaseConfiguration;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    check-cast p1, Landroid/content/res/OplusBaseConfiguration;

    if-nez p1, :cond_12

    return-object v0

    :cond_12
    iget-object p0, p1, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    return-object p0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_2a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2a

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_2a

    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return p0
.end method

.method public f(Landroid/content/Context;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->b(Landroid/content/res/Configuration;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1c

    const-wide/32 v2, 0x7fffffff

    and-long/2addr p0, v2

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public final g(Landroid/content/Context;)V
    .registers 16

    if-eqz p1, :cond_254

    const-string v0, "COUIThemeOverlay"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_11f

    :try_start_12
    const-string v6, "android.content.res.OplusBaseConfiguration"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move v6, v4

    goto :goto_1a

    :catch_19
    move v6, v5

    :goto_1a
    if-nez v6, :cond_1e

    goto/16 :goto_11f

    :cond_1e
    const/4 v6, 0x0

    :try_start_1f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object v7
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2b} :catch_34

    :try_start_2b
    instance-of v8, v7, Loplus/content/res/OplusExtraConfiguration;

    if-eqz v8, :cond_4b

    iget-wide v8, v7, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_31} :catch_32

    goto :goto_4c

    :catch_32
    move-exception v8

    goto :goto_37

    :catch_34
    move-exception v7

    move-object v8, v7

    move-object v7, v6

    :goto_37
    const-string v9, "get extra config failed : "

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    move-wide v8, v2

    :goto_4c
    if-nez v7, :cond_8c

    :try_start_4e
    sget-object v7, Lcom/coui/appcompat/theme/COUIThemeOverlay;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8c

    const-string v10, "getThemeChangedFlags"

    new-array v11, v4, [Ljava/lang/Class;

    const-class v12, Landroid/content/res/Configuration;

    aput-object v12, v11, v5

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v1, v10, v5

    invoke-virtual {v7, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_74} :catch_75

    goto :goto_8c

    :catch_75
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRejectTheme e: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/coui/appcompat/log/COUILog;->a:Z

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    :goto_8c
    const-wide/16 v6, 0x1

    and-long/2addr v6, v8

    cmp-long v0, v6, v2

    if-eqz v0, :cond_112

    const-wide/16 v6, 0x100

    and-long/2addr v6, v8

    cmp-long v0, v6, v2

    if-eqz v0, :cond_e3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    const-string v7, "my_company/media/theme/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_112

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b2

    goto :goto_112

    :cond_b2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_bf

    move v0, v4

    goto :goto_113

    :cond_bf
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_112

    array-length v6, v6

    if-nez v6, :cond_c9

    goto :goto_112

    :cond_c9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "custom_theme_path_setting"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_112

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_113

    :cond_e3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ee

    goto :goto_112

    :cond_ee
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object v6

    if-eqz v6, :cond_ff

    iget v6, v6, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    goto :goto_100

    :cond_ff
    move v6, v5

    :goto_100
    const-string v7, "data/theme/"

    if-lez v6, :cond_108

    invoke-static {v7, v6}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :cond_108
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_113

    :cond_112
    :goto_112
    move v0, v5

    :goto_113
    if-eqz v0, :cond_11f

    iget v0, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-eq v0, v1, :cond_11f

    move v0, v4

    goto :goto_120

    :cond_11f
    :goto_11f
    move v0, v5

    :goto_120
    if-eqz v0, :cond_124

    goto/16 :goto_254

    :cond_124
    new-array v0, v4, [I

    sget v1, Lcom/support/appcompat/R$attr;->couiThemeIdentifier:I

    aput v1, v0, v5

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->b(Landroid/content/res/Configuration;)J

    move-result-wide v6

    const-wide/32 v8, 0xffff

    and-long/2addr v8, v6

    long-to-int v0, v8

    const-wide/32 v8, 0xff0000

    and-long/2addr v8, v6

    long-to-int v8, v8

    sget v9, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c:I

    const/16 v10, 0x2ee0

    if-ge v9, v10, :cond_157

    move v9, v4

    goto :goto_158

    :cond_157
    move v9, v5

    :goto_158
    cmp-long v2, v6, v2

    if-eqz v2, :cond_254

    if-nez v0, :cond_162

    if-nez v8, :cond_162

    goto/16 :goto_254

    :cond_162
    const/high16 v2, 0x20000

    if-ne v8, v2, :cond_177

    sget p1, Lcom/support/appcompat/R$id;->coui_global_theme:I

    sget v0, Lcom/support/appcompat/R$style;->COUIOverlay_Theme_Single_First:I

    iget-object v2, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    monitor-enter v2

    :try_start_16d
    iget-object p0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v2

    return-void

    :catchall_174
    move-exception p0

    monitor-exit v2
    :try_end_176
    .catchall {:try_start_16d .. :try_end_176} :catchall_174

    throw p0

    :cond_177
    const/high16 v2, 0x10000

    const/4 v3, -0x1

    if-ne v8, v2, :cond_193

    sget-boolean v1, Lcom/coui/appcompat/theme/COUIThemeOverlay;->e:Z

    if-eqz v1, :cond_18f

    if-eqz v9, :cond_185

    const-string v1, "coui_theme_arrays_single_repatch_p"

    goto :goto_187

    :cond_185
    const-string v1, "coui_theme_arrays_single_patch_p"

    :goto_187
    const-string v2, "array"

    invoke-virtual {p0, p1, v1, v2}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_22b

    :cond_18f
    sget v1, Lcom/support/appcompat/R$array;->coui_theme_arrays_single:I

    goto/16 :goto_22b

    :cond_193
    const/high16 v2, 0x40000

    if-ne v8, v2, :cond_19b

    sget v0, Lcom/support/appcompat/R$array;->coui_theme_arrays_default_patch:I

    goto/16 :goto_227

    :cond_19b
    const/high16 v2, 0x100000

    if-eqz v8, :cond_1a6

    if-ne v8, v2, :cond_1a2

    goto :goto_1a6

    :cond_1a2
    move v0, v3

    move v1, v5

    goto/16 :goto_22b

    :cond_1a6
    :goto_1a6
    if-lez v0, :cond_226

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-nez v6, :cond_1b0

    goto/16 :goto_226

    :cond_1b0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/coui/appcompat/theme/COUIThemeOverlay;->c:I

    if-le v7, v10, :cond_1d0

    sget v2, Lcom/support/appcompat/R$array;->coui_theme_arrays_ids:I

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-lt v6, v0, :cond_1cb

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_1cc

    :cond_1cb
    move v0, v5

    :goto_1cc
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_227

    :cond_1d0
    const-string v9, "array"

    if-ne v7, v10, :cond_201

    sget-boolean v7, Lcom/coui/appcompat/theme/COUIThemeOverlay;->f:Z

    if-eqz v7, :cond_1db

    const-string v7, "coui_theme_arrays_ids_patch_r"

    goto :goto_1dd

    :cond_1db
    const-string v7, "coui_theme_arrays_ids_patch_o"

    :goto_1dd
    invoke-virtual {p0, p1, v7, v9}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    sget-boolean v9, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d:Z

    if-eqz v9, :cond_1e9

    if-ne v8, v2, :cond_1e9

    sget v7, Lcom/support/appcompat/R$array;->coui_theme_arrays_ids:I

    :cond_1e9
    if-eqz v7, :cond_226

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-lt v6, v0, :cond_1fc

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_1fd

    :cond_1fc
    move v0, v5

    :goto_1fd
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_227

    :cond_201
    sget-boolean v2, Lcom/coui/appcompat/theme/COUIThemeOverlay;->f:Z

    if-eqz v2, :cond_208

    const-string v2, "coui_theme_arrays_ids_repatch_r"

    goto :goto_20a

    :cond_208
    const-string v2, "coui_theme_arrays_ids_repatch_o"

    :goto_20a
    invoke-virtual {p0, p1, v2, v9}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_226

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-lt v6, v0, :cond_221

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_222

    :cond_221
    move v0, v5

    :goto_222
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_227

    :cond_226
    :goto_226
    move v0, v5

    :goto_227
    sub-int/2addr v1, v4

    move v13, v1

    move v1, v0

    move v0, v13

    :goto_22b
    if-eqz v1, :cond_254

    if-ne v0, v3, :cond_230

    goto :goto_254

    :cond_230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-le v1, v0, :cond_251

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget v1, Lcom/support/appcompat/R$id;->coui_global_theme:I

    iget-object v2, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    monitor-enter v2

    :try_start_247
    iget-object p0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v2

    goto :goto_251

    :catchall_24e
    move-exception p0

    monitor-exit v2
    :try_end_250
    .catchall {:try_start_247 .. :try_end_250} :catchall_24e

    throw p0

    :cond_251
    :goto_251
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_254
    :goto_254
    return-void
.end method
