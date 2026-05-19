.class public final synthetic Lcom/android/wm/shell/common/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Landroid/view/inputmethod/ImeTracker$Token;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;IZLandroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 6

    iput p5, p0, Lcom/android/wm/shell/common/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/i;->b:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iput p2, p0, Lcom/android/wm/shell/common/i;->c:I

    iput-boolean p3, p0, Lcom/android/wm/shell/common/i;->d:Z

    iput-object p4, p0, Lcom/android/wm/shell/common/i;->e:Landroid/view/inputmethod/ImeTracker$Token;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/common/i;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/common/i;->b:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v1, p0, Lcom/android/wm/shell/common/i;->c:I

    iget-boolean v2, p0, Lcom/android/wm/shell/common/i;->d:Z

    iget-object p0, p0, Lcom/android/wm/shell/common/i;->e:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->b(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/wm/shell/common/i;->b:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v1, p0, Lcom/android/wm/shell/common/i;->c:I

    iget-boolean v2, p0, Lcom/android/wm/shell/common/i;->d:Z

    iget-object p0, p0, Lcom/android/wm/shell/common/i;->e:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->c(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
