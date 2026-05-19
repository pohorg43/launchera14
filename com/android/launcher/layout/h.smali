.class public final synthetic Lcom/android/launcher/layout/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/android/launcher3/LauncherModel;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher/layout/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/h;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher/layout/h;->c:Lcom/android/launcher3/LauncherModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/layout/h;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/layout/h;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/layout/h;->c:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0, p0}, Lcom/android/launcher/layout/CustomLayoutHelper$1;->a(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher/layout/h;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/layout/h;->c:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0, p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->i(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
