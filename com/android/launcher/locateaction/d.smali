.class public final synthetic Lcom/android/launcher/locateaction/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/locateaction/FindLocateIconFunction;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher/locateaction/d;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/locateaction/d;->b:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iput-object p2, p0, Lcom/android/launcher/locateaction/d;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/locateaction/d;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher/locateaction/d;->b:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object p0, p0, Lcom/android/launcher/locateaction/d;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->j(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/launcher/locateaction/d;->b:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object p0, p0, Lcom/android/launcher/locateaction/d;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->b(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/launcher/locateaction/d;->b:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object p0, p0, Lcom/android/launcher/locateaction/d;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->g(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
