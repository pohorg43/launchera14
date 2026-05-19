.class public final Lcom/android/statistics/OlcManagerHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/statistics/OlcManagerHelper$Companion;,
        Lcom/android/statistics/OlcManagerHelper$LogOption;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/statistics/OlcManagerHelper$Companion;

.field public static final EXP_LEVEL_DEBUG:I = 0x5

.field public static final ID_BACKUP_RESTORE_STATUS:I = 0x10031001

.field public static final ID_EXCEPTION_WITH_DESCRIBE:I = 0x10031002

.field private static final TAG:Ljava/lang/String; = "OlcManagerHelper"

.field private static final instance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/android/statistics/OlcManagerHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/statistics/OlcManagerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/statistics/OlcManagerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/statistics/OlcManagerHelper;->Companion:Lcom/android/statistics/OlcManagerHelper$Companion;

    sget-object v0, Lcom/android/statistics/OlcManagerHelper$Companion$instance$2;->INSTANCE:Lcom/android/statistics/OlcManagerHelper$Companion$instance$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/statistics/OlcManagerHelper;->instance$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/statistics/OlcManagerHelper;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/statistics/OlcManagerHelper;->instance$delegate:Lh4/f;

    return-object v0
.end method


# virtual methods
.method public final raiseException(IJLjava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_25

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "raiseException: exceptionId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,atomicLogs="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OlcManagerHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    new-instance p0, Landroid/os/olc/ExceptionInfo;

    invoke-direct {p0}, Landroid/os/olc/ExceptionInfo;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/olc/ExceptionInfo;->setTime(J)V

    invoke-virtual {p0, p1}, Landroid/os/olc/ExceptionInfo;->setId(I)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/olc/ExceptionInfo;->setExceptionLevel(I)V

    invoke-virtual {p0, p2, p3}, Landroid/os/olc/ExceptionInfo;->setAtomicLogs(J)V

    invoke-virtual {p0, p4}, Landroid/os/olc/ExceptionInfo;->setLogParmas(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/os/olc/OlcManager;->raiseException(Landroid/os/olc/ExceptionInfo;)I

    return-void
.end method
