.class final Lcom/oplus/log/nx/obus/StatisticsManager$CrashListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/nearx/track/IExceptionProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/nx/obus/StatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CrashListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/log/nx/obus/StatisticsManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/log/nx/obus/StatisticsManager$CrashListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .registers 3

    invoke-static {p2}, Lcom/oplus/log/nx/obus/StatisticsManager;->getMessageFromThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const-string p1, "com.oplus.log"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public getKvProperties()Lcom/oplus/nearx/visulization_assist/TrackSerializable;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModuleVersion()Ljava/lang/String;
    .registers 1

    const-string p0, "4.1.0.2-4"

    return-object p0
.end method
