.class public final synthetic Lcom/android/common/util/d1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .registers 5

    iput p4, p0, Lcom/android/common/util/d1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/d1;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/android/common/util/d1;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/common/util/d1;->d:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/common/util/d1;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/common/util/d1;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/android/common/util/d1;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/common/util/d1;->d:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p0}, Lcom/android/common/util/ToastUtils;->a(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/common/util/d1;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/android/common/util/d1;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/common/util/d1;->d:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p0}, Lcom/android/common/util/ToastUtils;->b(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
