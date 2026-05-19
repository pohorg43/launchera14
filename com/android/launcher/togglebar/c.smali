.class public final synthetic Lcom/android/launcher/togglebar/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/togglebar/ToggleBarRootView;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/togglebar/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/togglebar/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMultiWindowModeChanged(Z)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/togglebar/c;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/togglebar/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/togglebar/ToggleBarRootView;

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarRootView;->a(Lcom/android/launcher/togglebar/ToggleBarRootView;Z)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher/togglebar/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->o(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;Z)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
