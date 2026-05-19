.class public final synthetic Lcom/android/wm/shell/compatui/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/compatui/CompatUIController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V
    .registers 3

    iput p2, p0, Lcom/android/wm/shell/compatui/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/a;->b:Lcom/android/wm/shell/compatui/CompatUIController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/compatui/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/a;->b:Lcom/android/wm/shell/compatui/CompatUIController;

    check-cast p1, Landroid/util/Pair;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->j(Lcom/android/wm/shell/compatui/CompatUIController;Landroid/util/Pair;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/wm/shell/compatui/a;->b:Lcom/android/wm/shell/compatui/CompatUIController;

    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->f(Lcom/android/wm/shell/compatui/CompatUIController;Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
