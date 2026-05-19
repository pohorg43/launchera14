.class public final synthetic Lcom/android/launcher3/taskbar/k1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;ZI)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/taskbar/k1;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/k1;->b:Ljava/util/function/Consumer;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/k1;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/taskbar/k1;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/k1;->b:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/k1;->c:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->a(Ljava/util/function/Consumer;Z)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher3/taskbar/k1;->b:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/k1;->c:Z

    invoke-static {v0, p0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->a(Ljava/util/function/Consumer;Z)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
