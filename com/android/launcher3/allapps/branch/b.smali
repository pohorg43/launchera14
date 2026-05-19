.class public final synthetic Lcom/android/launcher3/allapps/branch/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lio/branch/search/BranchLocalAppResult;

.field public final synthetic c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

.field public final synthetic d:Lio/branch/search/BranchLocalLinkResult;


# direct methods
.method public synthetic constructor <init>(Lio/branch/search/BranchLocalAppResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;I)V
    .registers 5

    iput p4, p0, Lcom/android/launcher3/allapps/branch/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/b;->b:Lio/branch/search/BranchLocalAppResult;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/b;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    iput-object p3, p0, Lcom/android/launcher3/allapps/branch/b;->d:Lio/branch/search/BranchLocalLinkResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/allapps/branch/b;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/b;->b:Lio/branch/search/BranchLocalAppResult;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/b;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/b;->d:Lio/branch/search/BranchLocalLinkResult;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->i(Lio/branch/search/BranchLocalAppResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/b;->b:Lio/branch/search/BranchLocalAppResult;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/b;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/b;->d:Lio/branch/search/BranchLocalLinkResult;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->p(Lio/branch/search/BranchLocalAppResult;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
