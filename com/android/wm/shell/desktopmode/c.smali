.class public final synthetic Lcom/android/wm/shell/desktopmode/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/desktopmode/c;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/desktopmode/c;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/desktopmode/c;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget p0, p0, Lcom/android/wm/shell/desktopmode/c;->b:I

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;->a(ILcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-void

    :goto_e
    iget p0, p0, Lcom/android/wm/shell/desktopmode/c;->b:I

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->b(ILcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
