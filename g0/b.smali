.class public final synthetic Lg0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .registers 4

    iput p2, p0, Lg0/b;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/b;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lg0/b;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object p0, p0, Lg0/b;->b:Landroid/view/View;

    invoke-static {p0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->j(Landroid/view/View;)V

    return-void

    :pswitch_c  #0x0
    iget-object p0, p0, Lg0/b;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void

    :goto_12
    iget-object p0, p0, Lg0/b;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
