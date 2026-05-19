.class public final synthetic Lcom/android/launcher3/allapps/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/allapps/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/o;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/allapps/o;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/allapps/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->q(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;Landroid/content/DialogInterface;I)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher3/allapps/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->f(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
