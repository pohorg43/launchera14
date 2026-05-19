.class public final synthetic Lcom/android/launcher/folder/recommend/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/recommend/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/folder/recommend/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/folder/recommend/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/folder/recommend/h;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;->a(Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->a(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;Landroid/content/DialogInterface;I)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->i(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
