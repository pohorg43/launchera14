.class public final synthetic Lcom/android/systemui/shared/system/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/shared/system/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/shared/system/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/shared/system/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;Landroid/window/TaskSnapshot;Landroid/os/Message;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/shared/system/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/shared/system/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/shared/system/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/systemui/shared/system/a;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_16

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/systemui/shared/system/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    iget-object v1, p0, Lcom/android/systemui/shared/system/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/systemui/shared/system/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->a(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/systemui/shared/system/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    iget-object v1, p0, Lcom/android/systemui/shared/system/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/window/TaskSnapshot;

    iget-object p0, p0, Lcom/android/systemui/shared/system/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->a(Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;Landroid/window/TaskSnapshot;Landroid/os/Message;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
