.class public final synthetic Lcom/android/wm/shell/compatui/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/compatui/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/compatui/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/compatui/e;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/compatui/CompatUILayout;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->d(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/wm/shell/compatui/e;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->b(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
