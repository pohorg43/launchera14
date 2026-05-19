.class public final Lcom/android/exceptionmonitor/BasePeriodDetector$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exceptionmonitor/BasePeriodDetector;-><init>(ILcom/android/exceptionmonitor/LauncherExceptionMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/exceptionmonitor/BasePeriodDetector;


# direct methods
.method public constructor <init>(Lcom/android/exceptionmonitor/BasePeriodDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/exceptionmonitor/BasePeriodDetector$1;->this$0:Lcom/android/exceptionmonitor/BasePeriodDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRusConfigChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector$1;->this$0:Lcom/android/exceptionmonitor/BasePeriodDetector;

    invoke-static {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->access$updateRusConfig(Lcom/android/exceptionmonitor/BasePeriodDetector;)V

    return-void
.end method
