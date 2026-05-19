.class public final synthetic Lcom/oplus/splitscreen/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/splitscreen/DividerRotationTips;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/splitscreen/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/splitscreen/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/oplus/splitscreen/d;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/oplus/splitscreen/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->a(Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;Landroid/view/View;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/oplus/splitscreen/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/splitscreen/DividerRotationTips;

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/DividerRotationTips;->a(Lcom/oplus/splitscreen/DividerRotationTips;Landroid/view/View;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
