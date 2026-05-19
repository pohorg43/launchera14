.class public final synthetic Lcom/android/launcher/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Configuration;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher/g;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/g;->b:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/g;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/g;->b:Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->q0(Landroid/content/res/Configuration;Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher/g;->b:Landroid/content/res/Configuration;

    check-cast p1, Lcom/oplus/zoom/ZoomRootTaskManager;

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->s(Landroid/content/res/Configuration;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
