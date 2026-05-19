.class public final synthetic Lcom/android/wm/shell/compatui/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/compatui/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/compatui/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/compatui/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/compatui/d;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->b(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/compatui/CompatUILayout;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->g(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/wm/shell/compatui/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/widget/CheckBox;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->a(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
