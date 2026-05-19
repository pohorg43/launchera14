.class public final synthetic Lcom/android/launcher3/taskbar/z0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarKeyguardController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/taskbar/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/z0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OplusBaseRecentsActivity;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/taskbar/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/z0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onScreenOnChanged(Z)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/taskbar/z0;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/z0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->a(Lcom/android/launcher3/taskbar/TaskbarKeyguardController;Z)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher3/taskbar/z0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/OplusBaseRecentsActivity;

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseRecentsActivity;->i(Lcom/android/quickstep/OplusBaseRecentsActivity;Z)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
