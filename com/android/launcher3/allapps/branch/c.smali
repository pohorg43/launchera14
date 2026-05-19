.class public final synthetic Lcom/android/launcher3/allapps/branch/c;
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

    iput p3, p0, Lcom/android/launcher3/allapps/branch/c;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/c;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/allapps/branch/c;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/c;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/c;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->t(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void

    :pswitch_e  #0x1
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/c;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/c;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->h(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/c;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/c;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->o(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/c;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/c;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->q(Ljava/lang/Object;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/view/View;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
