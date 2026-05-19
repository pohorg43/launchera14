.class public final synthetic Lt/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;II)V
    .registers 4

    iput p3, p0, Lt/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/a;->b:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    iput p2, p0, Lt/a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lt/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lt/a;->b:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    iget p0, p0, Lt/a;->c:I

    invoke-static {v0, p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->b(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;I)V

    return-void

    :goto_e
    iget-object v0, p0, Lt/a;->b:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    iget p0, p0, Lt/a;->c:I

    invoke-static {v0, p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->a(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;I)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
