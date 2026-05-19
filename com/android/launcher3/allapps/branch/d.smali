.class public final synthetic Lcom/android/launcher3/allapps/branch/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/allapps/branch/d;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_9

    const/4 v0, 0x2

    if-eq p3, v0, :cond_9

    const/4 v0, 0x3

    :cond_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/d;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/allapps/branch/d;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/d;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/d;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->n(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void

    :pswitch_e  #0x2
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/d;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/d;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->e(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void

    :pswitch_16  #0x1
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/d;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/d;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->a(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/d;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/d;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->g(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void

    :goto_26
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/d;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/d;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->k(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
