.class public final synthetic Lcom/android/wm/shell/startingsurface/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/startingsurface/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;Landroid/window/StartingWindowInfo;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/startingsurface/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;Landroid/window/StartingWindowRemovalInfo;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/startingsurface/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/d0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/startingsurface/d0;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2a

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/d0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/window/StartingWindowRemovalInfo;

    invoke-static {v0, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->h(Lcom/android/wm/shell/startingsurface/StartingWindowController;Landroid/window/StartingWindowRemovalInfo;)V

    return-void

    :pswitch_12  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/d0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/window/SplashScreenView;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/d0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->a(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/d0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;

    invoke-static {v0, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->a(Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;)V

    return-void

    :goto_2a
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/d0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/window/StartingWindowInfo;

    invoke-static {v0, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->c(Lcom/android/wm/shell/startingsurface/StartingWindowController;Landroid/window/StartingWindowInfo;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_12  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
