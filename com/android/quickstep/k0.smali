.class public final synthetic Lcom/android/quickstep/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/ImageActionsApi;Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/k0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/k0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/k0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/quickstep/k0;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/quickstep/k0;->e:Z

    iput-object p5, p0, Lcom/android/quickstep/k0;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;ZLcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;)V
    .registers 7

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/k0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/k0;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/quickstep/k0;->e:Z

    iput-object p3, p0, Lcom/android/quickstep/k0;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/quickstep/k0;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/quickstep/k0;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;Ljava/lang/Object;ZLandroid/content/Context;Landroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/k0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/k0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/k0;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/quickstep/k0;->e:Z

    iput-object p4, p0, Lcom/android/quickstep/k0;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/quickstep/k0;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;ZLcom/android/quickstep/views/TaskView;Lcom/android/quickstep/util/TaskViewSimulator;)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/k0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/k0;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/k0;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/quickstep/k0;->e:Z

    iput-object p4, p0, Lcom/android/quickstep/k0;->c:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/quickstep/k0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/quickstep/k0;->a:I

    packed-switch v0, :pswitch_data_5c

    goto :goto_48

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/quickstep/k0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    iget-boolean v1, p0, Lcom/android/quickstep/k0;->e:Z

    iget-object v2, p0, Lcom/android/quickstep/k0;->c:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v3, p0, Lcom/android/quickstep/k0;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityOptions;

    iget-object p0, p0, Lcom/android/quickstep/k0;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/views/TaskView;->c(Lcom/android/quickstep/views/TaskView;ZLcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1c  #0x1
    iget-object v0, p0, Lcom/android/quickstep/k0;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/quickstep/k0;->b:Ljava/lang/Object;

    check-cast v1, [Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iget-boolean v2, p0, Lcom/android/quickstep/k0;->e:Z

    iget-object v3, p0, Lcom/android/quickstep/k0;->c:Ljava/lang/Object;

    check-cast v3, Lcom/android/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/android/quickstep/k0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/TaskViewUtils;->c(Ljava/lang/Runnable;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;ZLcom/android/quickstep/views/TaskView;Lcom/android/quickstep/util/TaskViewSimulator;)V

    return-void

    :pswitch_32  #0x0
    iget-object v0, p0, Lcom/android/quickstep/k0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/ImageActionsApi;

    iget-object v1, p0, Lcom/android/quickstep/k0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/k0;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/android/quickstep/k0;->e:Z

    iget-object p0, p0, Lcom/android/quickstep/k0;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/ImageActionsApi;->a(Lcom/android/quickstep/ImageActionsApi;Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V

    return-void

    :goto_48
    iget-object v0, p0, Lcom/android/quickstep/k0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    iget-object v1, p0, Lcom/android/quickstep/k0;->c:Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/quickstep/k0;->e:Z

    iget-object v3, p0, Lcom/android/quickstep/k0;->d:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/quickstep/k0;->f:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->b(Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;Ljava/lang/Object;ZLandroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_1c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
