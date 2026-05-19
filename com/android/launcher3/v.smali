.class public final synthetic Lcom/android/launcher3/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Lcom/android/launcher3/LauncherAppState$IconObserver;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/concurrent/CompletableFuture;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;Landroid/animation/ValueAnimator;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAppStateOplusExtImpl;Lcom/android/launcher3/Launcher;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusDragLayer;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/views/RecentsView;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/v;->a:I

    packed-switch v0, :pswitch_data_5a

    goto :goto_4e

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/OplusDragLayer;

    iget-object p0, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher3/OplusDragLayer;->j(Lcom/android/launcher3/OplusDragLayer;Landroid/view/View;)V

    return-void

    :pswitch_12  #0x4
    iget-object v0, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;

    iget-object p0, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {v0, p0}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->a(Lcom/android/launcher3/LauncherAppStateOplusExtImpl;Lcom/android/launcher3/Launcher;)V

    return-void

    :pswitch_1e  #0x3
    iget-object v0, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    iget-object p0, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-static {v0, p0}, Lcom/android/launcher3/LauncherAppState;->d(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void

    :pswitch_2a  #0x2
    iget-object v0, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object p0, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p0}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/CellLayout;Ljava/util/concurrent/CompletableFuture;)V

    return-void

    :pswitch_36  #0x1
    iget-object v0, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherAppState$IconObserver;

    invoke-static {v0, p0}, Lcom/android/launcher3/LauncherAppState;->b(Landroid/content/SharedPreferences;Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    return-void

    :pswitch_42  #0x0
    iget-object v0, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;

    iget-object p0, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-static {v0, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;->a(Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_4e
    iget-object v0, p0, Lcom/android/launcher3/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object p0, p0, Lcom/android/launcher3/v;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, p0}, Lcom/android/launcher3/QuickstepTransitionManager;->a(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/views/RecentsView;)V

    return-void

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_42  #00000000
        :pswitch_36  #00000001
        :pswitch_2a  #00000002
        :pswitch_1e  #00000003
        :pswitch_12  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
