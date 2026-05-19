.class public final Lcom/oplus/quickstep/utils/FingerPrintUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/FingerPrintUtils;

.field private static final TAG:Ljava/lang/String; = "FingerPrintUtil"

.field private static fingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/FingerPrintUtils;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/FingerPrintUtils;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/FingerPrintUtils;->INSTANCE:Lcom/oplus/quickstep/utils/FingerPrintUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->showFingerPrintIcon$lambda$5()V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->hideFingerPrintIcon$lambda$2()V

    return-void
.end method

.method private static final hideFingerPrintIcon$lambda$2()V
    .registers 3

    const-string v0, "QuickStep"

    const-string v1, "FingerPrintUtil"

    const-string v2, "hideFingerPrintIcon"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    sget-object v0, Lcom/oplus/quickstep/utils/FingerPrintUtils;->fingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/hardware/fingerprint/OplusFingerprintManager;->hideFingerprintIcon()V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_15

    goto :goto_1a

    :cond_13
    const/4 v0, 0x0

    goto :goto_1a

    :catchall_15
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1a
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_26

    :cond_21
    const-string v2, "hideFingerPrintIcon(), e="

    invoke-static {v2, v0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method private final isKeyguardShowing(I)Z
    .registers 2

    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static final showFingerPrintIcon$lambda$5()V
    .registers 3

    const-string v0, "QuickStep"

    const-string v1, "FingerPrintUtil"

    const-string v2, "showFingerPrintIcon"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    sget-object v0, Lcom/oplus/quickstep/utils/FingerPrintUtils;->fingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/hardware/fingerprint/OplusFingerprintManager;->showFingerprintIcon()V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_15

    goto :goto_1a

    :cond_13
    const/4 v0, 0x0

    goto :goto_1a

    :catchall_15
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1a
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_26

    :cond_21
    const-string v2, "showFingerprintIcon(), e="

    invoke-static {v2, v0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_26
    return-void
.end method


# virtual methods
.method public final hideFingerPrintIcon(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->sIsOnScreenFingerPrintSupport:Z

    if-eqz p1, :cond_20

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->isKeyguardShowing(I)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "QuickStep"

    const-string p1, "FingerPrintUtil"

    const-string p2, "hideFingerPrintIcon keyguard showing, do nothing"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    sget-object p0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    sget-object p1, Lcom/android/launcher3/taskbar/g1;->c:Lcom/android/launcher3/taskbar/g1;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_20
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/OplusFingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/oplus/quickstep/utils/FingerPrintUtils;->fingerprintManager:Landroid/hardware/fingerprint/OplusFingerprintManager;

    return-void
.end method

.method public final showFingerPrintIcon(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->sIsOnScreenFingerPrintSupport:Z

    if-eqz p1, :cond_20

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->isKeyguardShowing(I)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "QuickStep"

    const-string p1, "FingerPrintUtil"

    const-string p2, "showFingerPrintIcon: keyguard showing, do nothing"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    sget-object p0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    sget-object p1, Lcom/android/launcher/d0;->d:Lcom/android/launcher/d0;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_20
    return-void
.end method
