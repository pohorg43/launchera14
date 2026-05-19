.class public final synthetic Lcom/android/launcher/guide/appguide/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/guide/appguide/AppGuideHelper;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/guide/appguide/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/appguide/AppGuidePage;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/guide/appguide/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/guide/appguide/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/guide/appguide/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->a(Lcom/android/launcher/guide/appguide/AppGuideHelper;Landroid/view/View;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher/guide/appguide/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->h(Lcom/android/launcher/guide/appguide/AppGuidePage;Landroid/view/View;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
