.class public final synthetic Lcom/android/launcher3/p0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAnimationRunner;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/p0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/p0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/p0;->d:Ljava/lang/Object;

    iput p4, p0, Lcom/android/launcher3/p0;->e:I

    iput-object p5, p0, Lcom/android/launcher3/p0;->f:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/p0;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/p0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/p0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/p0;->f:Ljava/lang/Object;

    iput p4, p0, Lcom/android/launcher3/p0;->e:I

    iput-object p5, p0, Lcom/android/launcher3/p0;->g:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/p0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget v0, p0, Lcom/android/launcher3/p0;->a:I

    packed-switch v0, :pswitch_data_44

    goto :goto_25

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/p0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v0, p0, Lcom/android/launcher3/p0;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [Landroid/view/RemoteAnimationTarget;

    iget-object v0, p0, Lcom/android/launcher3/p0;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/launcher3/p0;->e:I

    iget-object v0, p0, Lcom/android/launcher3/p0;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/launcher3/p0;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, [Landroid/view/RemoteAnimationTarget;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/LauncherAnimationRunner;->b(Lcom/android/launcher3/LauncherAnimationRunner;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    return-void

    :goto_25
    iget-object v0, p0, Lcom/android/launcher3/p0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v0, p0, Lcom/android/launcher3/p0;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher3/p0;->f:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/window/StartingWindowInfo;

    iget v4, p0, Lcom/android/launcher3/p0;->e:I

    iget-object v0, p0, Lcom/android/launcher3/p0;->g:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/launcher3/p0;->d:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ljava/util/function/Consumer;

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->i(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
