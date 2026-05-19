.class public Lcom/coui/appcompat/vibrateutil/VibrateUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z = false

.field public static b:Landroid/content/Context; = null

.field public static c:J = -0x1L

.field public static final d:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/vibrateutil/VibrateUtils$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->d:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    const-string v2, "oplus.software.vibrator_luxunvibrator"

    invoke-virtual {v1, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    return-object v0

    :cond_e
    const-string v1, "linearmotor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/os/LinearmotorVibrator;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    const-string v1, "get linear motor vibrator failed. error = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VibrateUtils"

    invoke-static {p0, v1, v2}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(IIII)I
    .registers 8

    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    sub-int p0, p3, p2

    int-to-double p0, p0

    mul-double/2addr v0, p0

    int-to-double p0, p2

    add-double/2addr v0, p0

    double-to-int p0, v0

    if-ge p2, p3, :cond_18

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_20

    :cond_18
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_20
    return p0
.end method

.method public static c()Z
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.vibrator_lmvibrator"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_23

    :catchall_b
    move-exception v0

    const-string v1, "get isLinearMotorVersion failed. error = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibrateUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public static d(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b:Landroid/content/Context;

    if-nez v0, :cond_28

    if-nez p0, :cond_7

    goto :goto_28

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v3, v1

    :goto_1d
    sput-boolean v3, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->a:Z

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->d:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public static e(Lcom/oplus/os/LinearmotorVibrator;IIIII)V
    .registers 10

    if-eqz p0, :cond_49

    sget-boolean v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->a:Z

    if-nez v0, :cond_7

    goto :goto_49

    :cond_7
    int-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v0, v2

    int-to-double p2, p3

    div-double/2addr v0, p2

    sub-int p2, p5, p4

    int-to-double p2, p2

    mul-double/2addr v0, p2

    int-to-double p2, p4

    add-double/2addr v0, p2

    double-to-int p2, v0

    if-ge p4, p5, :cond_1f

    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_27

    :cond_1f
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_27
    if-nez p1, :cond_2b

    add-int/lit16 p2, p2, 0x190

    :cond_2b
    new-instance p3, Lcom/oplus/os/WaveformEffect$Builder;

    invoke-direct {p3}, Lcom/oplus/os/WaveformEffect$Builder;-><init>()V

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/oplus/os/WaveformEffect$Builder;->setStrengthSettingEnabled(Z)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/oplus/os/WaveformEffect$Builder;->setEffectStrength(I)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oplus/os/WaveformEffect$Builder;->setAsynchronous(Z)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/os/WaveformEffect$Builder;->build()Lcom/oplus/os/WaveformEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/os/LinearmotorVibrator;->vibrate(Lcom/oplus/os/WaveformEffect;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public static f(Lcom/oplus/os/LinearmotorVibrator;IIIIIIF)V
    .registers 15

    if-eqz p0, :cond_9d

    sget-boolean v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->a:Z

    if-nez v0, :cond_8

    goto/16 :goto_9d

    :cond_8
    sget-wide v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->c:J

    goto :goto_2e

    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-wide v5, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->c:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x19

    cmp-long v0, v3, v5

    if-gez v0, :cond_28

    move v1, v2

    goto :goto_2e

    :cond_28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->c:J

    :goto_2e
    if-eqz v1, :cond_31

    return-void

    :cond_31
    if-nez p6, :cond_36

    const/16 v0, 0x4b

    goto :goto_38

    :cond_36
    const/16 v0, 0x30

    :goto_38
    if-nez p6, :cond_3d

    const/16 v1, 0x5a

    goto :goto_3f

    :cond_3d
    const/16 v1, 0x37

    :goto_3f
    if-nez p6, :cond_44

    const/16 v3, 0x32

    goto :goto_46

    :cond_44
    const/16 v3, 0x34

    :goto_46
    if-nez p6, :cond_4b

    const/16 p6, 0x64

    goto :goto_4d

    :cond_4b
    const/16 p6, 0x44

    :goto_4d
    invoke-static {p2, p3, v0, v1}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b(IIII)I

    move-result v0

    invoke-static {p2, p3, v3, p6}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b(IIII)I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p7

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    :try_start_5b
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n    \"Metadata\": {\n        \"Version\": 2,\n        \"Created\": \"2023-05-12\",\n        \"Description\": \"Exported from RichTap Creator Pro\"\n    },\n    \"PatternList\": [\n        {\n            \"AbsoluteTime\": 0,\n            \"Pattern\": [\n                {\n                    \"Event\": {\n                        \"Type\": \"transient\",\n                        \"RelativeTime\": 0,\n                        \"Parameters\": {\n                            \"Intensity\": "

    invoke-virtual {p7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ",\n                            \"Frequency\": "

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "\n                        },\n                        \"Index\": 0\n                    }\n                }\n            ]\n        }\n    ]\n}"

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/os/DynamicEffect;->create(Ljava/lang/String;)Landroid/os/DynamicEffect;

    move-result-object p6

    if-eqz p6, :cond_9a

    new-instance p7, Landroid/os/HapticPlayer;

    invoke-direct {p7, p6}, Landroid/os/HapticPlayer;-><init>(Landroid/os/DynamicEffect;)V

    invoke-static {}, Landroid/os/HapticPlayer;->isAvailable()Z

    move-result p6

    if-eqz p6, :cond_9a

    invoke-virtual {p7, v2}, Landroid/os/HapticPlayer;->start(I)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_8d} :catch_8e

    return-void

    :catch_8e
    move-exception p6

    const-string p7, "get haptic player failed. error = "

    invoke-static {p7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    const-string v0, "VibrateUtils"

    invoke-static {p6, p7, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9a
    invoke-static/range {p0 .. p5}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->e(Lcom/oplus/os/LinearmotorVibrator;IIIII)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method public static g()V
    .registers 2

    sget-object v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b:Landroid/content/Context;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b:Landroid/content/Context;

    :cond_10
    return-void
.end method
